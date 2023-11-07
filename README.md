# CI-CD-assignment2

This assignment continues on the work from assignment 1, with additional changes made. 

A public GitHub project is launched with code, workflows and a README.md file. 

There are four workspaces: dev, stage and prod.

There are four branches in GitHub: main, dev, stage and prod. 

In GitHub under Secrets, the environmental variable are stored. These are used by the GitHub workflow to access the Azure resources. 

The terraform.tfvars file contain all the values for the input variables. 
This file is not available from Github. The content of this file is uploaded to the GitHub folder CI-CD-assignmnet 2, 
under Secrets and variables. Where it is stored with the other azure secrets. 

<img width="628" alt="image" src="https://github.com/SusanneKol/CI-CD-assignment2/assets/142806442/e04d1ae5-3a03-4cee-8eea-3862793424dd">


## workflow GitHub

the workflow file is the test.yml file

To trigger the workflow, set up in GitHub. Make changed to the code and push to git in the folder'openterra-assignment2/'


<img width="929" alt="image" src="https://github.com/SusanneKol/CI-CD-assignment2/assets/142806442/b75a6aa7-9a30-4d1a-b204-11136fdeefdf">

Deployment of prod must be aproved by a minimum of one person
<img width="928" alt="image" src="https://github.com/SusanneKol/CI-CD-assignment2/assets/142806442/375ecd00-6ed2-4ac7-8e50-f7f2f4469bb7">
<img width="561" alt="image" src="https://github.com/SusanneKol/CI-CD-assignment2/assets/142806442/24a92608-ba1c-4ed5-ab22-5e46e3fb1f1e">

All test complete: deployment of terraform environment
<img width="922" alt="image" src="https://github.com/SusanneKol/CI-CD-assignment2/assets/142806442/9d248e64-53a6-49fc-a8db-1954dfe4e0d4">


### Things to improve

- Add tflint and tfsec test to dev stage. 
- Run three different environment in Azure

code
- remove some of the variables from the terraform.tfvars
