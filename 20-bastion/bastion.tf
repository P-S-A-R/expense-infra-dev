resource "aws_instance" "bastion" {
  ami                    = "ami-09c813fb71547fc4f" # This is our devops-practice AMI ID
  vpc_security_group_ids = local.bastion_sg_id
  instance_type          = "t3.micro"
  subnet_id =  local.public_subnet_id
  tags = merge(
    var.common_tags,
    {
      Name ="${var.project_name}-${var.environment}-bastion"
    }
  )
}
