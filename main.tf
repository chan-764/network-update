provider "aws" {
  region = var.aws_region
}

# module "sg_and_route_update" {
 # source         = "./modules/sg_and_route_update"
 # sg_id          = var.sg_id
 # route_table_id = var.route_table_id
#  igw_id         = var.igw_id
# }


module "sg_and_route_update" {
  source = "./modules/sg_and_route_update"
  sg_id = var.sg_id
  route_table_id = var.route_table_id
  igw_id = var.igw_id
}
