provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "static_site" {
  bucket = "tf-static-site-iac"  # MUST BE globally unique!

  # Note: website block is deprecated, but you can keep it for now or migrate later
  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}

# New resource to disable block public access on the bucket
resource "aws_s3_bucket_public_access_block" "allow_public_policy" {
  bucket = aws_s3_bucket.static_site.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "public_read" {
  bucket = aws_s3_bucket.static_site.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement: [{
      Sid       = "PublicReadGetObject",
      Effect    = "Allow",
      Principal = "*",
      Action    = "s3:GetObject",
      Resource  = "${aws_s3_bucket.static_site.arn}/*"
    }]
  })
}

resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.static_site.id
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"

  # Removed acl = "public-read" due to bucket owner enforced setting disallowing ACLs
}

resource "aws_s3_object" "style_css" {
  bucket       = aws_s3_bucket.static_site.id
  key          = "style.css"
  source       = "style.css"
  content_type = "text/css"
}

resource "aws_s3_object" "index_js" {
  bucket       = aws_s3_bucket.static_site.id
  key          = "index.js"
  source       = "index.js"
  content_type = "application/javascript"
}

output "website_url" {
  value = aws_s3_bucket.static_site.website_endpoint
}
