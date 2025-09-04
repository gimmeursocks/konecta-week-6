output "ami_id" {
  description = "The AMI ID of the EC2 instance."
  value       = aws_instance.this.ami
}

output "instance_id" {
  description = "The ID of the EC2 instance."
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance."
  value       = aws_instance.this.public_ip
}

output "private_ip" {
  description = "The private IP address of the EC2 instance."
  value       = aws_instance.this.private_ip
}

output "public_dns" {
  description = "The public DNS name of the EC2 instance."
  value       = aws_instance.this.public_dns
}
