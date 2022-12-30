module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = var.s3_bucket_name
  acl    = var.s3_acl

  versioning = {
    enabled = true
  }

}
