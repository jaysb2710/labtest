resource "aws_db_instance" "mysql_rds" {

    identifier          = "mydb"
    engine              = "mysql"
    engine_version      = "5.7.29"
    instance_class      = "db.t2.micro"
    allocated_storage   = 20

    name                = "mydb"
    username            = "${var.username}"
    password            = "${var.password}"
    
    deletion_protection = "${var.deletion}"
    subnet_ids          = ["${var.db_subnet_b}", "${var.db_subnet_c}"]
    multi_az            = "true"
}