#!/usr/bin/env bash
#
# Simple benchmark script using h2kiad
#
# Author:	Matteo Franci <mttfranci@gmail.com>
set -e

function print() {
    printf "\033[1;34m$1\033[0m\n"
}

PREFIX=${1}

ARRAY=( "micronaut-jit:7010"
        "micronaut-aot:7020"
        "quarkus-jit:7030"
        "quarkus-aot:7040"
        "springboot-jit:7050"
        "springboot-aot:7060" )

for current in "${ARRAY[@]}" ; do
    ID=${current%%:*}
    PORT=${current#*:}
    print "Start test ${ID} - ${PORT}"
    ./src/main/script/bench-h2-load.sh http://localhost:${PORT} > target/${PREFIX}${ID}.out
    print "End test ${ID} - ${PORT}"
done
