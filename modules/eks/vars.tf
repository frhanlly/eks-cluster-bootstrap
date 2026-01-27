

variable "project_name" {
  type        = string
  description = "project base name"
}

variable "id_public_subnet_1" {
  type        = string
  description = "id for public subnet 1 AZ"
}


variable "id_public_subnet_2" {
  type        = string
  description = "id for public subnet 2 AZ"
}


variable "tags" {
  type        = map(string)
  description = "tags for aws resources"
}
