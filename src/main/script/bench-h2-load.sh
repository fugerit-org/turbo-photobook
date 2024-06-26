#!/usr/bin/env bash
#
# Simple benchmark script using h2load
#
# Author:	Matteo Franci <mttfranci@gmail.com>
set -e

NUMBER_OF_REQUESTS=1000000
NUMBER_OF_CLIENTS=30
NUMBER_OF_THREADS=2

function print() {
    printf "\033[1;34m$1\033[0m\n"
}

declare -a URL_LIST
URL_LIST[0]='list?v=1718975879495'
URL_LIST[1]='download/springio23_1000.jpg'
URL_LIST[2]='images/springio23/language/it/current_page/1/page_size/5?v=1718975898349'
URL_LIST[3]='download/turbo-photobook_2000.jpg'
URL_LIST[4]='images/turbo-photobook/language/en/current_page/1/page_size/5?v=1718975898349'
URL_LIST[5]='download/turbo-photobook_2001.jpg'
URL_LIST[6]='download/turbo-photobook_2002.jpg'

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
  h2load -n${NUMBER_OF_REQUESTS} -c${NUMBER_OF_CLIENTS} -t${NUMBER_OF_THREADS} --warm-up-time=2 ${URL_PARAM}
  print "Benchmark over for '${BASE_URL}' 🏎️"
fi
