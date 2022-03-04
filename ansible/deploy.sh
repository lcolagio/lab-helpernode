#!/bin/sh

if [ -z $HELPER_NODE_KEY ]; then
    echo "Please set varaible HELPER_NODE_KEY with the path of the helper node ssh private key."
    echo " -> export HELPER_NODE_KEY=...."
    exit 1
fi

if [ -z $HELPER_NODE_INVENTORY ]; then
    echo "Please set varaible HELPER_NODE_INVENTORY with the value of the inventory to use."
    echo " -> export HELPER_NODE_INVENTORY=..."
    echo " Possible values: "
    ls -1 inventory | sed -e 's/\..*$//'
    exit 1
fi

ansible-playbook deploy_ocp_cluster.yml -i inventory/${HELPER_NODE_INVENTORY}/hosts.yml --private-key $HELPER_NODE_KEY --ask-vault-pass