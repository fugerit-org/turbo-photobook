BASE_URL=${1}
API_URL=/photobook-demo/api/meta/version
API_URL=/photobook-demo/api/photobook/view/list

start=`date +%s`
h2load -c1 ${BASE_URL}${API_URL}
end=`date +%s`
echo
echo Execution time was `expr $end - $start` seconds.

