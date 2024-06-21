#!/usr/bin/env bash
#
# Simple benchmark script using hey and psrecord
#
# Author:	Matteo Franci <mttfranci@gmail.com>
#
# NOTE: this script is based on <https://github.com/alina-yur/native-spring-boot/blob/main/bench-jit-c2.sh>
set -e

function print() {
    printf "\033[1;34m$1\033[0m\n"
}

declare -a URL_LIST
URL_LIST[0]='list?v=1718975879495'
URL_LIST[1]='download/springio23_1000.jpg'
URL_LIST[2]='images/springio23/language/it/current_page/1/page_size/5?v=1718975898349'

BASE_URL=${1}

if [[ "${BASE_URL}" == "" ]]; then
  echo "base url must be provided, for instance http://localhost:8080"
else
  print "Starting benchmark for '${BASE_URL}' 🏎️"
  export REST_BASE="${BASE_URL}/photobook-demo/api/photobook/view"
  for url in "${URL_LIST[@]}"; do
    export URL_PARAM="${URL_PARAM} ${REST_BASE}/${url}"
  done
  echo "URL_PARAM : ${URL_PARAM}"
  h2load -n100000 -c30 --warm-up-time=2 ${URL_PARAM}
  print "Benchmark over for '${BASE_URL}' 🏎️"
fi
