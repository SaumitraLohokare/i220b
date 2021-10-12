#include <stdlib.h>
#include "int-set.h"

/** Abstract data type for set of int's.  Note that sets do not allow
 *  duplicates.
 */
typedef struct NodeStruct {
    int val;
    struct NodeStruct* next;
} Node;

typedef struct {
    int len;
    Node dummy;
} IntSet;


static Node*
linkNewNode(Node* p0, int val) {
    Node *p = malloc(sizeof(Node));
    if (p == NULL) return NULL;
    p->val = val;
    p->next = p0->next;
    p0->next = p;
    return p;
}

static Node*
unlinkNode(IntSet* set, Node* p0) {
    Node* p = p0->next;
    p0->next = p->next;
    free(p);
    set->len -= 1;
    return p0->next;
}

/** Return a new empty int-set.  Returns NULL on error with errno set.
 */
void *newIntSet() {
    return calloc(1, sizeof(IntSet));
}

/** Return # of elements in intSet */
int nElementsIntSet(void *intSet) {
    return ((IntSet*)intSet)->len;
}

/** Return non-zero iff intSet contains element. */
int isInIntSet(void *intSet, int element) {
    IntSet* set = (IntSet*)intSet;
    for (Node* p = set->dummy.next; p != NULL; p = p->next) {
        if (p->val == element) {
            return 1;
        }
    }
    return 0;
}

/** Change intSet by adding element to it.  Returns # of elements
 *  in intSet after addition.  Returns < 0 on error with errno
 *  set.
 */
int addIntSet(void *intSet, int element) {
    if (isInIntSet(intSet, element)) return nElementsIntSet(intSet);

    IntSet* set = (IntSet*)intSet;

    Node* p0;
    for (p0 = &set->dummy; p0->next != NULL && p0->next->val <= element; p0 = p0->next) 
    {}

    if (!linkNewNode(p0, element)) return -1;

    return ++set->len;
}

/** Change intSet by adding all elements in array elements[nElements] to
 *  it.  Returns # of elements in intSet after addition.  Returns
 *  < 0 on error with errno set.
 */
int addMultipleIntSet(void *intSet, const int elements[], int nElements) {
    int ret = -1;
    for (int i = 0; i < nElements; i++) {
        if ((ret = addIntSet(intSet, elements[i])) < 0) break;
    }
    return ret;
}

/** Set intSetA to the union of intSetA and intSetB.  Return # of
 *  elements in the updated intSetA.  Returns < 0 on error.
 */
int unionIntSet(void *intSetA, void *intSetB) {
    IntSet* setA = (IntSet*) intSetA;
    IntSet* setB = (IntSet*) intSetB;
    Node* pA0 = &setA->dummy;
    Node* pB = setB->dummy.next;
    for (; pA0->next != NULL && pB != NULL; ) {
        if (pA0->next->val < pB->val) {
            pA0 = pA0->next;
        } else if (pA0->next->val == pB->val) {
            pA0 = pA0->next;
            pB = pB->next;
        } else {
            if (addIntSet(intSetA, pB->val) < 0) return -1;
            pA0 = pA0->next;
            pB = pB->next;
        }
    }

    for (; pB != NULL; pB = pB->next) {
        if (addIntSet(intSetA, pB->val) < 0) return -1;
        pA0 = pA0->next;
    }

    return nElementsIntSet(intSetA);
}

/** Set intSetA to the intersection of intSetA and intSetB.  Return #
 *  of elements in the updated intSetA.  Returns < 0 on error.
 */
int intersectionIntSet(void *intSetA, void *intSetB) {
    IntSet* setA = (IntSet*) intSetA;
    IntSet* setB = (IntSet*) intSetB;
    Node* pA0 = &setA->dummy;
    Node* pB = setB->dummy.next;

    for (; pA0->next != NULL && pB != NULL; ) {
        if (pA0->next->val < pB->val) {
            unlinkNode(setA, pA0);
        } else if (pA0->next->val == pB->val) {
            pA0 = pA0->next;
            pB = pB->next;
        } else {
            pB = pB->next;
        }
    }

    return nElementsIntSet(intSetA);
}

/** Free all resources used by previously created intSet. */
void freeIntSet(void *intSet) {
    IntSet* iSet = (IntSet*)intSet;
    Node *p1;
    for (Node* p = iSet->dummy.next; p != NULL; p = p1) {
        p1 = p->next;
        free(p);
    }
    free(iSet);
}

/** Return a new iterator for intSet.  Returns NULL if intSet
 *  is empty.
 */
const void *newIntSetIterator(const void *intSet) {
    const IntSet* set = (IntSet*) intSet;
    return set->dummy.next;
}

/** Return current element for intSetIterator. */
int intSetIteratorElement(const void *intSetIterator) {
    const Node *p = (Node *)intSetIterator;
    return p->val;
}

/** Step intSetIterator and return stepped iterator.  Return
 *  NULL if no more iterations are possible.
 */
const void *stepIntSetIterator(const void *intSetIterator) {
    const Node* p = (Node *) intSetIterator;
    return p->next;
}