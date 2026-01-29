variable "project_name" {
  type        = string
  description = "project base name"
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


variable "tags" {
  type        = map(string)
  description = "tags for AWS resources to be created"
}


variable "id_private_subnet_1" {
  type        = string
  description = "id for private subnet 1 AZ"
}


variable "id_private_subnet_2" {
  type        = string
  description = "id for private subnet 2 AZ"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
}


variable "disk_size" {
  type        = string
  description = "disk size for EC2 workers"
}

variable "ec2_instance_type" {
  type        = string
  description = "instance type for EC2 workers"
}