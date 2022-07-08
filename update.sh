#!/usr/bin/env bash

PATCHYAML=acm32f4.yaml
PATCHEDSVD=acm32f4.svd.patched

svdtools patch $PATCHYAML
svd2rust -i $PATCHEDSVD

rustfmt lib.rs build.rs
mv lib.rs src
rm $PATCHEDSVD