#include "cache-sim.h"

#include "memalloc.h"

#include <stdbool.h>
#include <stddef.h>

/*
typedef struct {
	bool valid;
	MemAddr address;
} CacheLine;
*/

unsigned long get_tag(CacheParams *params, MemAddr addr) {
	return (addr >> (params->nLineBits + params->nSetBits));
}

unsigned long get_set(CacheParams *params, MemAddr addr) {
	return (addr >> params->nLineBits) & ((1u << params->nSetBits) - 1);
}

// LinkedList for Lines
typedef struct CacheLineImpl {
	bool valid;
	MemAddr address;
	struct CacheLineImpl *next;
	struct CacheLineImpl *prev;
} CacheLine;

CacheLine *new_cache_line(MemAddr address) {
	CacheLine *node = malloc(sizeof(CacheLine));
	node->valid = true;
	node->address = address;
	node->next = NULL;
	node->prev = NULL;
	return node;
}

typedef struct {
	CacheLine *head;
	CacheLine *tail;
	unsigned length;
	unsigned capacity;
} CacheSet;

CacheSet* new_cache_set(CacheParams* params) {
	CacheSet* set = malloc(sizeof(CacheSet));
	set->head = NULL;
	set->tail = NULL;
	set->length = 0;
	set->capacity = params->nLinesPerSet;
	return set;
}

// TODO update adding lines according to Replacement strategy?
void add_line(CacheSet* list, MemAddr address) {
	// TODO ?? Add check for capcity here or not?
	if (list->length >= list->capacity) {
		// ?? printf("Error: Overflowing a set\n");
		return;
	}

	CacheLine* temp = list->head;
	list->head = new_cache_line(address);
	list->head->next = temp;
	temp->prev = list->head;

	list->length += 1;
}

// TODO how should replacing work?
// ? empty_lines()
// ? replace_lines()

bool contains_tag(CacheSet *set, MemAddr addr, CacheParams *params) {
	unsigned long tag = get_tag(params, addr);
	for (CacheLine *line = set->head; line != NULL; line = line->next) {
		unsigned long check = get_tag(params, line->address);
		if (check == tag) {
			// TODO hit
			return true;
		}
	}
	return false;
}

void free_cache_set(CacheSet *set) {
	if (set == NULL) return;
	CacheLine *node = set->head;
	while (node != NULL) {
		CacheLine *temp = node->next;
		free(node);
		node = temp;
	}
}

// CacheSim
struct CacheSimImpl {
	CacheSet* sets;
	unsigned nSets;
	CacheParams params;
};

/** Create and return a new cache-simulation structure for a
 *  cache for main memory withe the specified cache parameters params.
 *  No guarantee that *params is valid after this call.
 */
CacheSim *
new_cache_sim(const CacheParams *params)
{
	CacheSim* sim = malloc(sizeof(CacheSim));
	sim->params = *params;
	sim->nSets = (1u << params->nSetBits);
	sim->sets = calloc(sim->nSets, sizeof(CacheSet));
  	return sim;
}

/** Free all resources used by cache-simulation structure *cache */
void
free_cache_sim(CacheSim *cache)
{
	for (int i = 0; i < cache->nSets; i++) {
		free_cache_set(&cache->sets[i]);
	}
  	free(cache->sets);
  	free(cache);
}

/** Return result for requesting addr from cache */
CacheResult
cache_sim_result(CacheSim *cache, MemAddr addr)
{
	CacheResult result = { 0, 0 };
  	//TODO
  	return result;
}
