#!/bin/sh

_NOW=$(date +"%Y%m%d")
_JOB=$(echo $1 | cut -f 1 -d '.')
_FILE="${_NOW}_$(hostname)_${_JOB}.log"
if [ -e $_FILE ]; then
    i=0
    while [[ -e ${_FILE}.${i} ]]; do
        let i++
    done
    _FILE=${_FILE}.${i}
fi

# Run fio test but write output to log right away
fio $1 | tee $_FILE

echo "Log saved to ${_FILE}"
