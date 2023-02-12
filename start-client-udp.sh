sudo docker exec node_a bash -c "
    cd /code/examples/build && 
    LD_LIBRARY_PATH=/usr/local/vsomeip/lib VSOMEIP_CONFIGURATION=vsomeip-udp-client.json VSOMEIP_APPLICATION_NAME=client-sample ./request-sample
"