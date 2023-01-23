variable "default_tags" {
  default     = {}
  description = "default tags"
}

variable "public_var" {
  description = "value for publicly accessible s3"
  default = false
}

variable "acl" {
  type = string
  default = "private"
}