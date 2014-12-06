#!/bin/bash

for mk in \
    object.mk \
    lib_path.mk \
    static_flag.mk \
    nested.mk
do
    echo "================================"
    echo "$mk"
    echo "================================"
    make -f $mk
    make -f $mk clean
    echo
done
