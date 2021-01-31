resource "aws_vpc" "main-vpc" {

  cidr_block            = "${var.vpc-cidr-block}"
  enable_dns_histmanes  = "true"


  tags = {
    Name = "main-vpc"
  }

}


resource "aws_subnet" "subnet-public-1" {
    vpc_id                      = "${aws_vpc.main-vpc.id}"
    availability_zone           = "${var.subnet-az}"
    map_public_ip_on_launch     = "true"
    cidr_block                  = "${var.subnet-pub-cidr}"


}