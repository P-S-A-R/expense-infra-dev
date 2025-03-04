locals {
  private_subnet_id = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]
  backend_sg_id = [data.aws_ssm_parameter.backend_sg_id.value]
}