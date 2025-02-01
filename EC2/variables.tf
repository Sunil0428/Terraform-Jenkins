variable ami_id{
    default = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "instance_name" {
  default = "Jenkins-master"
}
variable "filename" {
  default = "installJenkins.sh"
}
variable "sg_name" {
  default = "my_test_SG"
}
variable "sg_desc" {
  default = "my_sg_desc"
}