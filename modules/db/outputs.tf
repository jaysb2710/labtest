output "rds_endpoint" {
  description = "mysql endpoint"
  value       = "${aws_db_instance.mysql_rds.endpoint}"
}