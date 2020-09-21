output "name" {
  description = "Name of the bucket"
  value       ="${aws_s3_bucket.static_site.bucket_domain_name}"
}

output "website_endpoint" {
  description = "Domain name of the bucket"
  value       = "${aws_s3_bucket.static_site.website_endpoint}"
}
