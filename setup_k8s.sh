# !/bin/bash

ansible-playbook -i inventory.ini setup_k8s_precond.yaml
ansible-playbook -i inventory.ini setup_crio.yaml
ansible-playbook -i inventory.ini setup_k8s.yaml

# ansible-playbook -i inventory.ini setup_worker.yaml -e master-ip="" token="" discovery-token-ca-cert-hash=""
