sudo docker exec node_b bash -c "
    cd /code/examples/build && 
    LD_LIBRARY_PATH=/usr/local/vsomeip/lib VSOMEIP_CONFIGURATION=vsomeip-udp-service.json VSOMEIP_APPLICATION_NAME=service-sample ./response-sample
"