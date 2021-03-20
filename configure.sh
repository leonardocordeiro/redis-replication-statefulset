#/bin/bash

START_REDIS_SERVER_CMD="redis-server"

if [[ $POD_NAME != *-0 ]]; then
    echo "replicaof redis-0.redis-headless-service.default.svc.cluster.local 6379" > redis-slave.conf    
    START_REDIS_SERVER_CMD="$START_REDIS_SERVER_CMD redis-slave.conf"
fi

eval $START_REDIS_SERVER_CMD