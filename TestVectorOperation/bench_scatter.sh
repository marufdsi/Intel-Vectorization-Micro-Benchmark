#!/bin/sh

rm init*.csv
rm BenchMark*.csv
./TestIntrinsic 36
./TestIntrinsic 32
./TestIntrinsic 18
./TestIntrinsic 1
./TestIntrinsic 2
./TestIntrinsic 4
./TestIntrinsic 16

#./TestIntrinsic 64
#./TestIntrinsic 128
#./TestIntrinsic 256

