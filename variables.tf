varaiable "username" {
    description = "RDS Username"
}

varaiable "password" {
    description = "RDS Username"
}

varaiable "deletion" {
    description = "RDS delete protection"
}

variable "db_subnet_b" {
  description = "subnet_b"
}

variable "db_subnet_c" {
  description = "subnet_c"
}

variable "amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-*"
    "us-west-2" = "ami-*"
  }
}

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

variable "vpc-cidr-block" {
  description = "VPC CIDR"
}

variable "subnet-az" {
  description = "az for subnet"
}

variable "subnet-pub-cidr" {
  description = "subnet CIDR"
}
variable "rt-cidr" {
  description = "rote-tabe CIDR"
}
