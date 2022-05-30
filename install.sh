#!/bin/bash

# # find image version from calico.yaml
# cat $(pwd)/calico.yaml | grep -m 1 image > $(pwd)/imagelist

# while IFS= read -r i; do

#   IFS=':' read -ra ADDR <<< $i
#   version=${ADDR[2]}

# done < $(pwd)/imagelist

# # remove imagelist- this file is temporary for find image version
# rm $(pwd)/imagelist

# echo "versions : $version"

# sed -i 's+$version+v11+g' $(pwd)/calico.yaml


# while IFS= read -r i; do
#   echo "*********************************************"
#   echo "$i"
#   echo "*********************************************"
#   scp $(pwd)/source/1.23.5/ubuntu/*.deb root@$i:/root
#   sleep 5
#   scp $(pwd)/images/kuber/*.tar root@$i:/root
#   sleep 5
#   scp $(pwd)/images/network-calico/*.tar root@$i:/root
#   sleep 5
# done < $(pwd)/ipList

ansible-playbook -vv $(pwd)/playbook/playbook-kuber.yml
sleep 5
# ansible-playbook -vv $(pwd)/playbook/playbook-kuber-master.yml
# sleep 5
# ansible-playbook -vv $(pwd)/playbook/playbook-kuber-slave.yml