variable "security_group_id" {
  description = "Existing Security Group ID"
  type        = string
}

variable "allowed_ports" {
  description = "List of ports to allow"
  type        = list(number)
}

variable "cidr_blocks" {
  description = "CIDR blocks for the rules"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "protocol" {
  description = "Protocol to allow"
  type        = string
  default     = "tcp"
}
