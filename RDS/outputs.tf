output "RDS_endpoint" {
  description = "Domain name of the bucket"
  value       = "${aws_db_instance.mydb1.endpoint}"
}

output "RDS_Status" {
  description = "Domain name of the bucket"
  value       = "${aws_db_instance.mydb1.status}"
}
