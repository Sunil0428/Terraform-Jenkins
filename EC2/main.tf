module "my_ec2" {
  source = "../EC2-Module"
  ami_id = var.ami_id
  instance_type = var.instance_type
  instance_name = var.instance_name
  filename = var.filename
  sg_name = var.sg_name
  sg_desc = var.sg_desc
}