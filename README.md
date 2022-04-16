<div dir=”rtl”>

 
# Download jdk

```bash
wget https://files-cdn.liferay.com/mirrors/download.oracle.com/otn-pub/java/jdk/8u221-b11/jdk-8u221-linux-x64.tar.gz
  
```

# Download docker for centos 7.9

```bash
  
wget https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.5.11-3.1.el7.x86_64.rpm
wget https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-19.03.9-3.el7.x86_64.rpm
wget https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-cli-19.03.9-3.el7.x86_64.rpm 
  
```  
  
# Download all package rpm for install kubectl, kubelet and kubeadm

We use the following address to find the desired versions of kubectl, kubeadm and kubelet. Before using these packages, we install its dependencies. These dependencies are kubernetes-cnt and cri-tools. find them at the address below.

```bash
  
https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64/repodata/primary.xml
  
```

after find desired version user 'location href=' for download package. We insert everything after 'location href=' to the end of below url.
  
```bash
  
https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64/
  
```  
  
  
</div>
