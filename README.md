# RHEL VM provisioner for demo/lab purpose

This repo is a simple provisioner of a RHEL8/RHEL9 provisioner for lab and demo purposes.

## VM Provisioning
### Install Terraform

First you need to download and install Terraform:

    sudo yum install -y yum-utils
    sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
    sudo yum -y install terraform

Once Terraform is in place, you 

### Install Ansible

You need to follow the instructions in [Ansible Website](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-the-ansible-community-package) to proceed and install Ansible on your machine.