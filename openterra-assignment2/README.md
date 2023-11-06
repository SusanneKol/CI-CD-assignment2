
# The purpose of each module

## The Network module

The Network module defines and gives the Azure networking resources for the Virtual Machine. It creates a virtual network, with an address space, and a subnet within that virtual network and a network security group with a default rule allowing inbound traffic on all ports, and associates the network security group with the subnet.

## Virtual Machine module

The Virtual Machine module creates an Azure Linux virtual machine (VM) instance. It specifies the virtual machine with config details such as size, location, and operating system disk.

## Storage Account module

A Storage account is used for storing datatypes, such as files, VMs and discs. This storage account module creates a storage container.

## Key Vault module

The purpose of the key vault module is to securely store and manage sensitive information, such as secrets, keys, and certificates. In the module I am creating an Azure Key Vault, with config and access policies. By doing this you can manage secrets and access keys within your infrastructure.

# How to use the Terraform scripts

The terraform init command initializes the working directory.

The terraform plan command creates an execution plan, and also previews the changes made.

The terraform apply command executes the terraform plan configuration code in the working directory. It is only when applying this command, you can be sure that everything is running okay and the code is correct.

The openterra.tfvars file contains all the input variable. That file is confidential and hidden from Git. This is where all the information and values are stored, planned, and applied to Azure.

The terraform destroy command destroys all remote objects managed by the provider, in this case Azure.

## terraform init

## terraform plan -var-file="openterra.tfvars"

## terraform apply -var-file="openterra.tfvars"

## terraform destroy -var-file="openterra.tfvars"
