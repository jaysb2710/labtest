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
