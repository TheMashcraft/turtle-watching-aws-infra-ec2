resource "aws_instance" "flask_app" {
  ami           = var.ami_id
  instance_type = var.instance_type

  key_name = aws_key_pair.generated_key.key_name

  subnet_id = aws_subnet.main.id

  user_data = file("user_data.sh")

  tags = {
    Name = "flask_app"
  }

  vpc_security_group_ids = [aws_security_group.flask_sg.id]
}

resource "aws_eip" "flask_eip" {
  instance = aws_instance.flask_app.id
  domain   = "vpc"
}
