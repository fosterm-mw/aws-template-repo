
Goal: Create a template module that is monorepo that will spin up an EKS cluster on a terraform run

We are using an EKS cluster, another way to create a cluster in AWS would be to use compute engine instances (EC2 instances) that have kubeadm installed and communicate with eachother in a VPC

========================================
How to organize modules for EKS cluster
========================================

1. We can have a VPC module, subnet module, Firewall rules module, and Route Table module.

2. One large module with all of the networking in one module and only use that module.

3. Network Module with VPC, Subnet, and Route Table. Firewale Rule Module with enable or disable different Firewall rules.
