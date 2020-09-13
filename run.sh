#!/bin/bash

dirs=(a b c)

for d in ${dirs[@]}; do
    CONTRACT="$d/SafeMath.sol"
    OUT="$d/SafeMath.bin"

    $1 --bin --optimize $CONTRACT > $OUT

    MD5_CONTRACT="$(md5sum $CONTRACT | awk '{ print $1 }')"
    MD5_OUT="$(md5sum $OUT | awk '{ print $1 }')"

    echo "Compiled contract $d: $MD5_CONTRACT/$MD5_OUT"
done
