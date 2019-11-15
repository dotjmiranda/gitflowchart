#!/usr/bin/env bash

wdir=$(dirname $(git rev-parse --absolute-git-dir))

for file in $wdir/flowchart/*.gv; do
    filename="${file##*/}"
    echo -n "Rendering file $filename... "
    dot -Tsvg $file -o $wdir/image/"${filename%.*}.svg"
    echo "done."
done
