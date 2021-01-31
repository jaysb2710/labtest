#Internet Gateway

resource "aws_internet_gateway" "main-ig" {
    vpc_id = "${aws_vpc.prod-vpc.id}"


    tags {
        Name = "main-ig"
    }
}

resource "aws_route_table" "main-rt" {
    vpc_id = "${aws_vpc.main-vpc.id}"
    
    route {
        
        cidr_block = "${var.rt-cidr}"
        gateway_id = "${aws_internet_gateway.main-ig.id}" 
    }