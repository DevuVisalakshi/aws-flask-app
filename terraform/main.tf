resource "aws_security_group" "web_sg" {

  name = "web-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "web" {

  ami           = "ami-0039731b1df27efcd"

  instance_type = var.instance_type

  key_name      = var.key_name

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  user_data = file("${path.module}/userdata.sh")

  tags = {
    Name = "aws-flask-app"
  }

}
