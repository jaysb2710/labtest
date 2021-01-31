resource "aws_instance" "appserver" {

  ami                           = "var.amis[var.region]"
  instance_type                 = "t2.micro"
  instance_count                = 1
  associate_public_ip_address   = true
  subnet_id                     = "${element(var.subnet-ids, count.index)}"
  vpc_security_group_ids        = "${var.security-group-ids}"
  key_name                      = "${var.key-pair}"
  user_data                     = templatefile("./configs/userdata.tpl")

  tags = {
    Name = "${var.env_type}${var.env_number}-instance"
  }
}
