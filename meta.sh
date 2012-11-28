#!/bin/sh

set -ex

TMP_DIR=$(mktemp -d)
TMP=$TMP_DIR/image

s3cmd get s3://awsdevchannelge-patt-us/test.jpg $TMP

identify  $TMP

#rm $TMP_DIR -rf
