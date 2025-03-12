provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "ce98fc7b-d337-4317-9bd5-462b4ef7534e"
    git_commit           = "71f5741e48f2f2fc808a4ebfa187f442658d45be"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-03-12 20:37:30"
    git_last_modified_by = "30416525+rahul-mereddy@users.noreply.github.com"
    git_modifiers        = "30416525+rahul-mereddy"
    git_org              = "rahul-mereddy"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
