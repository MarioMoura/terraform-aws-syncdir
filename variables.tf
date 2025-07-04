variable "directory" {
  description = "Local directory to be synced with S3"
  type        = string
}
variable "bucket" {
  description = "Bucket name"
  type        = string
}
variable "cache_control_default" {
  type        = string
  description = "Default cache-control for all objects"
  default     = "max-age=3600"
}
variable "cache_control_by_extension" {
  type        = any
  description = "Define cache-control headers by object extension type"
  default     = {}
}
