variable "ami" {
  default = "ami-06e02ae7bdac6b938"  # Replace with the correct AMI
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  default = "MyKeyPair"  # Replace with your AWS key pair name
}
