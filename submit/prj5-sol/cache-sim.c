#include "cache-sim.h"

#include "memalloc.h"

#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>

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

CacheSet* new_cache_set(unsigned capacity) {
	CacheSet* set = malloc(sizeof(CacheSet));
	set->head = NULL;
	set->tail = NULL;
	set->length = 0;
	set->capacity = capacity;
	return set;
}

void add_line(CacheSet* list, MemAddr address) {
	// TODO ?? Add check for capcity here or not?
	if (list->length >= list->capacity) {
		printf("Error: Overflowing a set\n");
		return;
	}

	CacheLine* temp = list->head;
	list->head = new_cache_line(address);
	list->head->next = temp;
	if (temp != NULL) temp->prev = list->head; // check for the first node added

	if (list->tail == NULL) list->tail = list->head;

	list->length += 1;
}

// Returns address of replaced line; -1 on error
MemAddr replace_line(CacheSet *set, CacheParams *params, MemAddr addr) {
	MemAddr replaced = -1;
	switch (params->replacement) {
	case LRU_R: {
		// remove from tail
		CacheLine *temp = new_cache_line(addr);
		CacheLine *temp2 = set->tail;

		set->tail->prev->next = temp;
		temp->prev = set->tail->prev;
		set->tail = temp;

		replaced = temp2->address;
		if (temp2 != NULL) free(temp2);
		break;
	}
	case MRU_R: {
		// remove from head
		CacheLine *temp = new_cache_line(addr);
		CacheLine *temp2 = set->head;

		set->head->next->prev = temp;
		temp->next = set->head->next;
		set->head = temp;

		replaced = temp2->address;
		if (temp2 != NULL) free(temp2);
		break;
	}
	case RANDOM_R: {
		// random
		int pos = rand() % (1u << params->nSetBits); // limit within number of sets

		for (CacheLine *temp = set->head; temp != NULL; temp = temp->next) {
			if (pos == 0) {
				CacheLine *temp2 = new_cache_line(addr);

				temp2->prev = temp->prev;
				temp2->next = temp->next;
				temp->prev->next = temp2;
				temp->next->prev = temp2;

				replaced = temp->address;
				if (temp != NULL) free(temp);
				break;
			}
			pos--;
		}
		break;
	}
	} // switch
	return replaced;
}

bool contains_tag(CacheSet *set, MemAddr addr, CacheParams *params) {
	unsigned long tag = get_tag(params, addr);
	printf("Searching for tag %ld.\n", tag);
	// TODO Fix infinite loop
	for (CacheLine *line = set->head; line != NULL; line = line->next) {
		unsigned long check = get_tag(params, line->address);
		printf("Found tag: %ld.\n", check);
		if (check == tag) {
			// Update set for most recently used
			switch (params->replacement) {
			case LRU_R:
				// move_to_head(line);
				printf("%p\n", line);
				printf("Error 1\n");
				if (line->prev != NULL) line->prev->next = line->next;
				if (line->next != NULL) line->next->prev = line->prev;

				printf("Error 2\n");
				line->next = set->head;
				line->prev = NULL;
				printf("Error 3\n");
				set->head->prev = line;
				set->head = line;

				break;
			case MRU_R:
				// move_to_tail(line);
				if (line->prev != NULL) line->prev->next = line->next;
				if (line->next != NULL) line->next->prev = line->prev;

				line->prev = set->tail;
				line->next = NULL;
				set->tail->next = line;
				set->tail = line;
				break;
			case RANDOM_R: break; // For Random replacement we do not need most recently used
			}
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
	printf("Created a new cache sim\n");
	CacheSim* sim = malloc(sizeof(CacheSim));
	sim->params = *params;
	sim->nSets = (1u << params->nSetBits);
	sim->sets = calloc(sim->nSets, sizeof(CacheSet));

	for (int i = 0; i < sim->nSets; i++) {
		sim->sets[i].head = NULL;
		sim->sets[i].tail = NULL;
		sim->sets[i].length = 0;
		sim->sets[i].capacity = params->nLinesPerSet;
	}
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
	printf("Called with: 0x%lx\n", addr);

	CacheResult result = { 0, 0 };

	unsigned long set = get_set(&cache->params, addr);
	printf("Set -> %ld\n", set);

	if (contains_tag(&cache->sets[set], addr, &cache->params)) { // HIT
		printf("Hit\n");
		result.status = CACHE_HIT;
	} else { // MISS
		printf("Miss ");
		if (cache->sets[set].length >= cache->sets[set].capacity) { // REPLACE
			printf("with replace.\n");
			result.status = CACHE_MISS_WITH_REPLACE;
			result.replaceAddr = replace_line(&cache->sets[set], &cache->params, addr);
		} else { // NO REPLACE
			printf("without replace.\n");
			result.status = CACHE_MISS_WITHOUT_REPLACE;
			add_line(&cache->sets[set], addr);
		}
	}

  	return result;
}
