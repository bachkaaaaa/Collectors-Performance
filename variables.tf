variable "ami" {
  default = "ami-0446057e5961dfab6"  # Replace with the correct AMI
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  default = "MyKeyPair"  # Replace with your AWS key pair name
}
