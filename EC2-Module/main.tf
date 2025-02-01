resource "aws_instance" "my_ec2" {
  ami = var.ami_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.test_sg.id]
  user_data = var.filename
  tags = {
    Name= var.instance_name
  }

}

resource "aws_security_group" "test_sg"{
    name_prefix = var.sg_name
    description = var.sg_desc
    ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
    from_port   = 8080
    to_port     = 8080
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