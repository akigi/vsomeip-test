sudo docker exec node_a bash -c "
cd /code/examples/build
g++ -o request-sample  ../request-sample.cpp  -I/usr/local/vsomeip/include -L/usr/local/vsomeip/lib -lvsomeip3 -lpthread
g++ -o response-sample ../response-sample.cpp -I/usr/local/vsomeip/include -L/usr/local/vsomeip/lib -lvsomeip3 -lpthread
ls request-sample
ls response-sample
"