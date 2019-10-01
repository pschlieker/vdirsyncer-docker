#!/bin/sh
test -f /pre.sh && /pre.sh
vdirsyncer discover
vdirsyncer sync
test -f /post.sh && /post.sh