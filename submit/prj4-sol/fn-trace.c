#include "fn-trace.h"
#include "x86-64_lde.h"

#include "memalloc.h"

#include <assert.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

static inline bool is_call(unsigned op);
static inline bool is_ret(unsigned op);

FnInfo* new_fn_info();
FnsData* make_fns_data();
void add_item(FnsData*, FnInfo*);
void grow(FnsData*);
int compare(const void*, const void*);
bool contains_fn(FnsData*, void*);

void traceFn(void*, Lde*, FnsData*);

void sort_fns(FnsData*);

enum { INIT_SIZE = 2 };

struct FnsDataImpl {
	FnInfo **list;
	int len, cap;
};

typedef const unsigned char instruction;

/** Return pointer to opaque data structure containing collection of
 *  FnInfo's for functions which are callable directly or indirectly
 *  from the function whose address is rootFn.
 */
const FnsData *
new_fns_data(void *rootFn)
{
	FnsData *fd = make_fns_data();
	Lde* lde = new_lde();
	traceFn(rootFn, lde, fd);
	free_lde(lde);

//	qsort(fd->list, fd->len, sizeof(FnInfo*), compare);
	sort_fns(fd);
	return (const FnsData*) fd;
}

/** Free all resources occupied by fnsData. fnsData must have been
 *  returned by new_fns_data().  It is not ok to use to fnsData after
 *  this call.
 */
void
free_fns_data(FnsData *fd)
{
	for (int i = 0; i < fd->len; i++) {
		FnInfo* p = fd->list[i];
		if (p != NULL)
			free(p);
	}
	free(fd->list);
	free(fd);
}

/** Iterate over all FnInfo's in fnsData.  Make initial call with NULL
 *  lastFnInfo.  Keep calling with return value as lastFnInfo, until
 *  next_fn_info() returns NULL.  Values must be returned sorted in
 *  increasing order by fnInfoP->address.
 *
 *  Sample iteration:
 *
 *  for (FnInfo *fnInfoP = next_fn_info(fnsData, NULL); fnInfoP != NULL;
 *       fnInfoP = next_fn_info(fnsData, fnInfoP)) {
 *    //body of iteration
 *  }
 *
 */
const FnInfo *
next_fn_info(const FnsData *fd, const FnInfo *last)
{
	if (fd == NULL) {
		return NULL;
	}
	if (last == NULL) {
		return fd->list[0];
	}
	for (int i = 0; i < fd->len - 1; i++) {
		if (!compare((const void*)fd->list[i], (const void*)last))
			return fd->list[i+1];
	}
	return NULL;
}


/** recognized opcodes for calls and returns */
enum {
  CALL_OP = 0xE8,    //used to identify an external call which is traced

  //used to recognize the end of a function
  RET_FAR_OP = 0xCB,
  RET_FAR_WITH_POP_OP = 0xCA,
  RET_NEAR_OP = 0xC3,
  RET_NEAR_WITH_POP_OP = 0xC2
};

static inline bool is_call(unsigned op) { return op == CALL_OP; }
static inline bool is_ret(unsigned op) {
  return
    op == RET_NEAR_OP || op == RET_NEAR_WITH_POP_OP ||
    op == RET_FAR_OP || op == RET_FAR_WITH_POP_OP;
}

//TODO: add auxiliary functions

void traceFn(void* addr, Lde* lde, FnsData* fd) {
	FnInfo* ret = new_fn_info(addr, 1, 0, 0);
	add_item(fd, ret);

	instruction* i = (instruction*) addr;
	while (!is_ret(*i)) {
		int l = get_op_length(lde, i);
		ret->length += l;
		if (is_call(*i)) {
			int next_call_offset = *((int *)(i+1));
			void* next_call = (void*)(i + l + next_call_offset);
			if (!contains_fn(fd, next_call))
				traceFn(next_call, lde, fd);
			ret->nOutCalls += 1;
		}
		i += l;
	}
	return;
}

FnInfo* new_fn_info(void* addr, unsigned len, unsigned in, unsigned out) {
	FnInfo* ret = malloc(sizeof(FnInfo));
	ret->address = addr;
	ret->length = len;
	ret->nInCalls = in;
	ret->nOutCalls = out;
	return ret;
}

FnsData* make_fns_data() {
	FnsData* ret = malloc(sizeof(FnsData));
	ret->len = 0;
	ret->cap = INIT_SIZE;
	ret->list = calloc(ret->cap, sizeof(FnInfo*));
	return ret;
}

// add
void add_item(FnsData* fd, FnInfo* fi) {
	if (fd->len >= fd->cap) {
		grow(fd);
	}
	fd->list[fd->len] = fi;
	fd->len += 1;

	// sort
}

void grow(FnsData* fd) {
	FnInfo* list[fd->len];
	for (int i = 0; i < fd->len; i++) {
		list[i] = fd->list[i];
	}
	fd->cap *= 2;
	fd->list = calloc(fd->cap, sizeof(FnInfo*));
	for (int i = 0; i < fd->len; i++) {
		fd->list[i] = list[i];
	}
}

int compare(const void* A, const void* B) {
	FnInfo* a = (FnInfo*) A;
	FnInfo* b = (FnInfo*) B;
	long n1 = (long) a->address;
	long n2 = (long) b->address;
	int ret = n1 - n2;
	return ret;
}

// contains function to check if a function is present in the list or not
bool contains_fn(FnsData* fd, void* addr) {
	for (const FnInfo *fip = next_fn_info(fd, NULL); fip != NULL; fip = next_fn_info(fd, fip)) {
		if (fip->address == addr) {
			return true;
		}
	}
	return false;
}

void sort_fns(FnsData* fd) {
	for (int i = 0; i < fd->len; i++) {
		for (int j = 0; j < fd->len - i - 1; j++) {
			if (fd->list[j]->address > fd->list[j+1]->address) {
				FnInfo* temp = fd->list[j];
				fd->list[j] = fd->list[j+1];
				fd->list[j+1] = temp;
			}
		}
	}
}
