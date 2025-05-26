variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "sg_id" {
  description = "Security Group ID"
  type        = string
}

variable "route_table_id" {
  description = "Route Table ID"
  type        = string
}

variable "igw_id" {
  description = "Internet Gateway ID"
  type        = string
}
