#!/bin/bash

echo "compiling and running example $(pwd)"

folder=$1

mkdir -p $folder

echo "  compiling $folder"
cd $folder
cmake -DCMAKE_BUILD_TYPE=$folder -DOPENCMISS_BUILD_TYPE=$folder ..
make
cd ..
echo "  running $folder"
mkdir -p results/current_run/l2x1x1_n2x1x1_i1_s0 && ./$folder/src/example 2 1 1 1 0
mkdir -p results/current_run/l2x1x1_n4x2x2_i1_s0 && ./$folder/src/example 4 2 2 1 0
mkdir -p results/current_run/l2x1x1_n8x4x4_i1_s0 && ./$folder/src/example 8 4 4 1 0
mkdir -p results/current_run/l2x1x1_n2x1x1_i2_s0 && ./$folder/src/example 2 1 1 2 0
mkdir -p results/current_run/l2x1x1_n4x2x2_i2_s0 && ./$folder/src/example 4 2 2 2 0
mkdir -p results/current_run/l2x1x1_n8x4x4_i2_s0 && ./$folder/src/example 8 4 4 2 0
mkdir -p results/current_run/l2x1x1_n2x1x1_i1_s1 && ./$folder/src/example 2 1 1 1 1
mkdir -p results/current_run/l2x1x1_n4x2x2_i1_s1 && ./$folder/src/example 4 2 2 1 1
mkdir -p results/current_run/l2x1x1_n8x4x4_i1_s1 && ./$folder/src/example 8 4 4 1 1
mkdir -p results/current_run/l2x1x1_n2x1x1_i2_s1 && ./$folder/src/example 2 1 1 2 1
mkdir -p results/current_run/l2x1x1_n4x2x2_i2_s1 && ./$folder/src/example 4 2 2 2 1
mkdir -p results/current_run/l2x1x1_n8x4x4_i2_s1 && ./$folder/src/example 8 4 4 2 1
