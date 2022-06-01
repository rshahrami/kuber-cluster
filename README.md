<div dir=”rtl”>

 
# Download jdk

```bash
wget https://files-cdn.liferay.com/mirrors/download.oracle.com/otn-pub/java/jdk/8u221-b11/jdk-8u221-linux-x64.tar.gz -P roles/java/files/
  
```

# Download docker for centos 7

```bash
  
wget https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.5.11-3.1.el7.x86_64.rpm -P roles/docker/files/
wget https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-19.03.9-3.el7.x86_64.rpm -P roles/docker/files/
wget https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-cli-19.03.9-3.el7.x86_64.rpm -P roles/docker/files/
  
```  

# Download docker for ubuntu

Go to https://download.docker.com/linux/ubuntu/dists/, choose your Ubuntu version, then browse to pool/stable/, choose amd64, armhf, arm64, or s390x, and download the .deb file for the Docker Engine version you want to install.

with below command find ubuntu version:

```bash
lsb_release -a  
``` 

```bash
  
wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/containerd.io_1.6.4-1_amd64.deb -P roles/docker/files/
wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/docker-ce-cli_19.03.15~3-0~ubuntu-focal_amd64.deb -P roles/docker/files/
wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/docker-ce_19.03.15~3-0~ubuntu-focal_amd64.deb -P roles/docker/files/

``` 

# Download all package rpm for install kubectl, kubelet and kubeadm


We use the following address to find the desired versions of kubectl, kubeadm and kubelet. Before using these packages, we install its dependencies. These dependencies are kubernetes-cnt and cri-tools. find them at the address below.

```bash
  
https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64/repodata/primary.xml
  
```

We download the packages according to our desired version. To download the packages, we have to go to the location href=' section in following address. We insert everything after 'location href=' to the end of below url.
  
```bash
  
https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64/
  
```  


# Download all package deb for install kubectl, kubelet and kubeadm


We use the following address to find the desired versions of kubectl, kubeadm and kubelet. Before using these packages, we install its dependencies. These dependencies are kubernetes-cnt and cri-tools. find them at the address below.

```bash
https://packages.cloud.google.com/apt/dists/kubernetes-xenial/main/binary-amd64/Packages
  
```

We download the packages according to our desired version. To download the packages, we have to go to the Filename=' section in following address. We insert everything after 'Filename=' to the end of below url.
  
```bash
  
https://packages.cloud.google.com/apt/
  
```  


# Download all package for other distribution os

We use the following address to download desired versions of kubectl, kubeadm and kubelet. the ARCH varible is architecture of os

```bash
  
https://storage.googleapis.com/kubernetes-release/release/${RELEASE}/bin/linux/${ARCH}/{kubeadm,kubelet,kubectl}
  
``` 


</div>
