#!/bin/bash
set -e

go build tf.go
rm -f test.log
EXPECT=1200
for i in $(seq 200)
do
	./tf
done
trap 'rm -f test.log' EXIT

CNT=$(wc -l test.log | awk '{print $1}')
if test "X$CNT" != "X$EXPECT"
then
	echo "test failed, expected: $EXPECT but got $CNT"
	exit 1
else
	echo "good"
fi
