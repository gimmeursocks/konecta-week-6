# Networking
vpc_cidr             = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24"]
private_subnet_cidrs = ["10.0.2.0/24"]
availability_zones   = ["eu-central-1a"]

# Private Machine
instance_name = "private-machine"
instance_type = "t3.micro"