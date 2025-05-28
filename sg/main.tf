resource "aws_security_group_rule" "ingress" {
  for_each = { for port in var.allowed_ports : port => port }

  type              = "ingress"
  from_port         = each.key
  to_port           = each.key
  protocol          = var.protocol
  cidr_blocks       = var.cidr_blocks
  security_group_id = var.security_group_id
  description       = "Allow port ${each.key}"
}
