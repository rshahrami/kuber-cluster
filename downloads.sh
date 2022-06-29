#!/bin/bash

dockerDirectory=$PWD/roles/docker/files/

cat "$PWD/kubernetesImagePull.txt" > $dockerDirectory/imageList
cat "$PWD/networkImagePull.txt" >> $dockerDirectory/imageList


sed -e 's/\//-/g' -e 's/:/-/g' -e 's/$/\.tar/g' $dockerDirectory/imageList > $dockerDirectory/tarList

while IFS= read -r line
do
    echo "$line"
    image=$(echo "$line" | sed  's/\//-/g' | sed 's/:/-/' | sed 's/$/\.tar/')
    docker pull $line
    sleep 2
    
    if [[ ! -f $dockerDirectory/$image ]];then
        docker save $line > $dockerDirectory/$image
        echo " download $image "
    else
        sudo rm $dockerDirectory/$image
        docker save $line > $dockerDirectory/$image
        # echo " the $image exists"
    fi

    for i in {1..2}
    do
        echo " "
    done
done < "$dockerDirectory/imageList"


