resource "aws_instance" "web" {
  ami                         = "ami-09d3b3274b6c5d4aa" #Ubuntu 20.04 LTS Free Tier Image
  instance_type               = "t3.micro"
  key_name                    = "navya"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.allow_http_ssh.id]
  user_data                   = file("nginx-install.sh")
  availability_zone           = "us-east-1a"
  associate_public_ip_address = true




  tags = {
    "Name" = "WebApp-terraform"
  }
}
