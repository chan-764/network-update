
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

module "update_sg_rules" {
  source            = "./modules/update_security_group_rules"
  security_group_id = "sg-0ddaaf214e4af6ce3"

  
  allowed_ports = [222, 8080]
  cidr_blocks   = ["0.0.0.0/0"]
  protocol      = "tcp"
}

module "update_route_table" {
  source         = "./modules/update_route_table_routes"
  route_table_id = "rtb-01b546f38c6c0bc94"

  routes = [
    {
      destination_cidr_block = "10.0.2.0/24"
      gateway_id             = "igw-02f7dc84a8b97cb60"
    },
    {
      destination_cidr_block = "10.0.3.0/24"
      gateway_id             = "igw-02f7dc84a8b97cb60"
    },
  ]
}

resource "aws_ec2_tag" "route_table_name" {
  resource_id = "rtb-01b546f38c6c0bc94"
  key         = "Name"
  value       = "MyRouteTableName"
}

