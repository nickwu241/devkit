#!/bin/sh
set -xeuo pipefail

# This is for a Samsung S5 + MacOS
# Use Android File Transfer to get DCIM and Pictures to a directory phone-now

# Then one-way sync the files:
rsync -r -hv --progress phone-now/ S5-new

# To check everything is sync'd, you should only see files in S5-new (previously sync'd)
# diff -qr phone-now S5-new

# Then S5-new is also sync'd with Google Drive
