resource "aws_instance" "web" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  subnet_id = aws_subnet.public_subnet.id

  vpc_security_group_ids = [
    aws_security_group.public_sg.id
  ]

  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y nginx
              systemctl start nginx
              systemctl enable nginx
              echo '<h1>Nisha DevOps Terraform Project</h1><p>Public EC2 is working</p>' > /usr/share/nginx/html/index.html
              EOF

  tags = {
    Name = "nisha-terraform-ec2"
  }
}