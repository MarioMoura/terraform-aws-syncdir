terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}
resource "aws_s3_object" "files" {
  for_each = fileset(var.directory, "*")
  bucket   = var.bucket
  key      = each.value
  source   = "${var.directory}${each.value}"
  content_type = lookup(local.mimetypes,
    regex("\\.(\\w+)$", each.value)[0],
  "application/octet-stream")
  cache_control = lookup(var.cache_control_by_extension,
    regex("\\.(\\w+)$", each.value)[0],
  var.cache_control_default)
  etag = filemd5("${var.directory}${each.value}")
}
