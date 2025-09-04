# Networking
vpc_cidr             = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.2.0/24"]
private_subnet_cidrs = ["10.0.100.0/24"]
availability_zones   = ["eu-central-1a"]

# Public Machine
instance_name       = "public-nginx-machine"
instance_type       = "t3.micro"
user_data_file_name = "install_nginx.sh"
