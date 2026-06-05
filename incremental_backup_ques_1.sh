#!/bin/bash

set -euo pipefail

copied=0
skipped=0
errors=0

if [ $# -ne 2 ]
then
  echo "Usage: $0 <SRC> <DEST> "
fi

SRC=$1
DEST=$2
