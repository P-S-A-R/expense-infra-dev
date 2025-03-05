locals {
  public_subnet_ids = split ("," ,data.aws_ssm_parameter.private_subnet_ids.value)
  web_alb_sg_id = data.aws_ssm_parameter.web_alb_sg_id.value
}