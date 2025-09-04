# Konecta Week 6 (Terraform)

### Q2 

Terraform modules are reusable packages of configurations that simplifies the codebase, reduces duplication, and improves maintainability. I will be using modules in these 2 architectures in this project to organize the networking and EC2 resources for better reusability and maintainablity across the 2 architectures
![](images/q2.png)

## Arch1

### Q1
Usage of tfvars:
![](images/q1-1.png)
Successful terraform apply:
![](images/q1-2.png)
Success on AWS:
![](images/q1-3.png)

### Q5
First list the current state:
![](images/q5-1.png)
Then remove the resource that you want to keep:
![](images/q5-2.png)
Then destroy the current stack (without the EC2):
![](images/q5-3.png)
This will never be deleted, since the instance is still inside the private subnet in a vpc, so add them to the state removal command
![](images/q5-4.png)
Now we destroy manually

### Q6
Adding a lifecycle, prevent_destroy:
![](images/q6-1.png)
Does not allow the destruction of nat_gateway resource:
![](images/q6-2.png)

## Arch2

### Q3
Add a variable that takes in user_data file name for a file that installs nginx and sets it up:
![](images/q3-1.png)
Add output for the public_dns for the nginx machine, make sure the security group allows tcp inbound access:
![](images/q3-2.png)
Testing the endpoint:
![](images/q3-3.png)


### Q4
Collaboration can be done using setting up an S3 bucket, with versioning:
![](images/q4-1.png)
Then setting up the backend to start uploading to it:
![](images/q4-2.png)
