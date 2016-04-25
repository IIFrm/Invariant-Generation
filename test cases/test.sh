#!/bin/sh

for file in `find . -name '*.txt'`
do
echo "Processing $file"
mv $file interproc_`basename -s .txt $file`.cfg
# { timeout 60 ./interproc/interproc.opt $file ; } > results/`basename $file`.out.txt # 2> result/`basename $file`.time.txt
done
