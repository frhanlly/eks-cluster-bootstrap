variable "project_name" {
  type        = string
  description = "project base name"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC cidr"
  default     = "10.10.0.0/16"
}

variable "env" {
  type        = string
  description = "environment"
}

variable "region" {
  type        = string
  description = "region to create aws resources"
  default     = "sa-east-1"
} 


#bucket for backend
variable "bucket_region" {
  type        = string
  description = "bucket region to store tfstate"
  default     = "sa-east-1"
} 

variable "bucket_name" {
  type        = string
  description = "bucket name to store tfstate"
} 