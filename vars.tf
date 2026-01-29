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



variable "policy_cni" {
  type        = string
  description = "EKS CNI policy"
}

variable "ecr_policy" {
  type        = string
  description = "EKS ECR policy"
}

variable "node_policy" {
  type        = string
  description = "EKS Node policy"
}


variable "disk_size" {
  type        = string
  description = "disk size for EC2 workers"
}

variable "ec2_instance_type" {
  type        = string
  description = "instance type for EC2 workers"
}