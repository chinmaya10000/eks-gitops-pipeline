output "s3_bucket" {
  value = aws_s3_bucket.terraform_state.id
  description = "An S3 bucket to store the Terraform state."
}