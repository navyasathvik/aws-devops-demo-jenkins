resource "aws_instance" "web" {
  ami                         = "amiami-0b0dcb5067f052a63" #Ubuntu 20.04 LTS Free Tier Image
  instance_type               = "t3.medium"
  key_name                    = "divya"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.allow_http_ssh.id]
  user_data                   = file("nginx-install.sh")
  availability_zone           = "us-east-1a"
  associate_public_ip_address = true
  aws_access_key_id ="AKIA5RGHZUKSZ32ZZVUF"
  aws_secret_access_key="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"





  tags = {
    Name = "WebApp-terraform"
  }
}
