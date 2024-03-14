# !/bin/bash

ansible-playbook -i inventory.ini setup_k8s_precond.yaml
ansible-playbook -i inventory.ini setup_crio.yaml
ansible-playbook -i inventory.ini setup_k8s.yaml
