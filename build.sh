#!/bin/bin

ARGS=$@

if [ -z "${ARGS}" ]; then
    echo "args is null, use default args '--cleanDestinationDir'"
    ARGS="--cleanDestinationDir"
fi

cd /opt/input/
hugo ${ARGS}
