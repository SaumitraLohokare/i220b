#!/bin/bash

for s in `seq 1000 500 2500`; \
do \
	echo -n "***Size $s: simple"; time ./simple-matmul $s 1; echo; \
	echo -n "***Size $s: transpose"; time ./transpose-matmul $s 1; echo; \
done
