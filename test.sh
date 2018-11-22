#!/bin/sh

LLVM_BINDIR=$(llvm-config-7 --bindir)

cd test
$LLVM_BINDIR/clang -S -emit-llvm test.c
$LLVM_BINDIR/opt -load=../build/skeleton/SkeletonPass.so --skeleton ./test.ll -S

