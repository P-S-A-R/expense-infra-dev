module "alb" {
  source = "terraform-aws-modules/alb/aws"
  internal = false

  # expense-dev-app-alb
  name    = "${var.project_name}-${var.environment}-web-alb"
  vpc_id  = data.aws_ssm_parameter.vpc_id.value
  subnets = local.public_subnet_ids
  create_security_group = false
  security_groups = [local.web_alb_sg_id]
  enable_deletion_protection = false

  
  tags = merge(
    var.common_tags,
    {
        Name = "${var.project_name}-${var.environment}-web-alb"
    }
  )
}