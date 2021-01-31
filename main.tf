locals {
  env = "${var.env_type}${var.env_number}"
}

module "ec2" {
  source = "./modules/ec2"
}

module "network" {
  source = "./modules/network"
}

module "db" {
  source = "./modules/db"
}