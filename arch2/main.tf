module "networking" {
  source = "./modules/networking"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}

module "public_nginx_machine" {
  source = "./modules/ec2"

  instance_name      = var.instance_name
  instance_type      = var.instance_type
  instance_user_data = var.user_data_file_name

  vpc_security_group_ids      = [module.networking.default_sg_id]
  subnet_id                   = module.networking.public_subnet_ids[0]
  associate_public_ip_address = true
}