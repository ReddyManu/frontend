module "frontend" {
  source = "git::https://github.com/ReddyManu/Terraform-mutable.git//app-module"
  INSTANCE_TYPE = var.INSTANCE_TYPE
  ENV = var.ENV
  OD_INSTANCE_COUNT = var.OD_INSTANCE_COUNT
  SPOT_INSTANCE_COUNT = var.SPOT_INSTANCE_COUNT
  COMPONENT = "frontend"
  PORT = 8080
  IS_PRIVATE_LB = false
  LB_RULE_PRIORITY = 100
}

output "INSTANCE_IDS" {
  value = module.frontend.INSTANCE_IDS
}
