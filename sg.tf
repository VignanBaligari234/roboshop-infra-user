module "allow_all_sg" {
  source = "../terraform-aws-securitygroup"
  sg_name = var.sg_name
  sg_description = var.sg_description
  sg_ingress_rules = var.sg_ingress_rules
  vpc_id = local.vpc_id
  common_tags = var.common_tags
  project_name = var.project_name
  sg_tags = var.sg_tags
}