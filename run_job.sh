#!/bin/sh

_NOW=$(date +"%Y%m%d")
_JOB=$(echo $1 | cut -f 1 -d '.')
_FILE="${_NOW}_$(hostname)_${_JOB}.log"

# Run fio test but write output to log right away
fio $1 > $_FILE

# Test is done, show results.
cat $_FILE
echo "Log saved to ${_FILE}"
