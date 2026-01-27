variable "vpc_cidr" {
  type        = string
  description = "VPC network cidr"
}

variable "tags" {
  type        = map(string)
  description = "tags for aws resources"
}

variable "region" {
  type        = string
  description = "region to create AWS resources"
}