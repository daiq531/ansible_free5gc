# Set up one kubeadm based K8S cluster with ansible

This project is created for eliminating the boring repeated preparation works on each node when setting up a new K8S cluster. It doesn't include steps of running kubeadm to create true K8S cluster. Users need to run kubeadm init and join command manually based on your true environment and requirements.

## Steps
There are 3 steps to make nodes ready to create cluster:
- Make node ready to K8S such as necessary kernel module and parameters
- Setup container runtime (only crio is supported currently)
- Install kubeadm, kubelet and kubectl package

Run setup_k8s.sh to install all needed packages to all nodes.

One more playbook named with install-gtp5g-mod.yaml may be used if you want to deploy free5gc on your cluster.

## Caveats
- All scripts are based on K8S v1.28. The variables need to be changed if other version need to be installed
- Base OS need to be Ubuntu v20.04 
- Currently all ansible script only do package installation, cluster creating need to run kubeadm manually
- One user named with ubuntu with sudo priviledge need to be created before running this playbook


