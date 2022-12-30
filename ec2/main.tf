module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "sparking"

  ami                    = var.ec2_instance_id
  instance_type          = var.ec2_instance_type
  key_name               = var.ec2_key_name
  vpc_security_group_ids = var.ec2_security_group_ids
  subnet_id              = var.ec2_subnet_ids

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
