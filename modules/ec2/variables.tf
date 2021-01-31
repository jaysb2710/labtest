variable "subnet-ids" {
  type        = "list"
  description = "subnet-ids"
}

variable "key-pair" {
  type        = "string"
  description = "keypair for ssh"
}

variable "security-group-ids" {
  type        = "list"
  description = "sg ids to be attched to this instance"
}

variable "amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-*"
    "us-west-2" = "ami-*"
  }
}