output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.flask_app.id
}

output "public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_eip.flask_eip.public_ip
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = aws_subnet.main.id
}

output "private_key_pem" {
  description = "The private key of the SSH key pair"
  value       = tls_private_key.ssh_key.private_key_pem
  sensitive   = true
}