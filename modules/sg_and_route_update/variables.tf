variable "sg_id" {
  description = "ID of the existing Security Group"
  type        = string
}

variable "route_table_id" {
  description = "ID of the existing Route Table"
  type        = string
}

variable "igw_id" {
  description = "ID of the Internet Gateway"
  type        = string
}
