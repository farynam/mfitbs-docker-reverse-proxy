#!/usr/bin/env bash

#HOSTS_TO_ADD_FILE_NAME env variable


HOSTS_UPDATED=/tmp/hosts_updated
HOSTS_TO_ADD_FILE_PATH="/myapp/conf/${HOSTS_TO_ADD_FILE_NAME}"


if [[ -f ${HOSTS_TO_ADD_FILE_PATH} && ! -f "${HOSTS_UPDATED}" ]]; then
    echo "updating /etc/hosts"
    cat ${HOSTS_TO_ADD_FILE_PATH} >> /etc/hosts
    echo hosts_updated > ${HOSTS_UPDATED}
else
    echo "NOT updating /etc/hosts"
fi
