#!/bin/bash
#
# version : 2 (2024-07-01)
#
# author : Matteo Franci <m@fugerit.org>
CASE=${1}
MODE=${2}

ddIT_COUNT=1

if [[ ${4} == "" ]]; then
	echo "Missing required parameters, 1 - base url, 2 - test id, 3 - number of iterations, 4 - wait mode"
	exit 1
fi

BASE_URL=${1}
CASE=${2}
IT_COUNT=${3}
# uses persistence (mongodb)
#API_URL=/photobook-demo/api/photobook/view/list
# simple in memory data
API_URL=/photobook-demo/api/meta/version
WAIT_MODE=${4}

echo "full url ${BASE_URL}${API_URL}"

function checkLocal {
	CHECK=$(kubectl get pod -l serving.knative.dev/service=$CASE)
	while [[ $CHECK == *"NAME"* ]]; 
	do
  		echo "Pod running $CHECK"
		sleep 60
		CHECK=$(kubectl get pod -l serving.knative.dev/service=$CASE)
	done
}

for i in $( seq 1 $IT_COUNT )
do
	echo "Iteration ${i} ${CASE}"
	if [[ ${WAIT_MODE} == "local" ]]; then
		checkLocal
	else
		echo "Waiting ${WAIT_MODE} seconcs"
		sleep ${WAIT_MODE}
	fi	
	RESULT1=$(bombardier -n1 -o json  ${BASE_URL}${API_URL})
	JSON_OUTPUT1={${RESULT1#*\{}
	echo ${JSON_OUTPUT1} > target/iteration_${CASE}_${i}_req1.json
	RESULT2=$(bombardier -n1 -o json  ${BASE_URL}${API_URL})
  JSON_OUTPUT2={${RESULT2#*\{}
  echo ${JSON_OUTPUT2} > target/iteration_${CASE}_${i}_req2.json
done

