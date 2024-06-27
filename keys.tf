resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "terraform-generated-key"
  public_key = tls_private_key.ssh_key.public_key_openssh
}

resource "aws_secretsmanager_secret" "ssh_key_secret" {
  name = "terraform-generated-ssh-key"
}

resource "aws_secretsmanager_secret_version" "ssh_key_secret_version" {
  secret_id     = aws_secretsmanager_secret.ssh_key_secret.id
  secret_string = tls_private_key.ssh_key.private_key_pem
}