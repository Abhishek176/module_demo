module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

}

resource "aws_instance" "myec2" {
  ami = var.ami_id
  instance_type = var.instance_type

  tags = var.tags
}