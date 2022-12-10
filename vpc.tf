module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = "10.0.0.0/22"

  azs             = ["${var.region}a", "${var.region}b"]
  private_subnets = ["${var.private_subnet}"]
  public_subnets  = ["${var.public_subnet}"]

  enable_ipv6 = false

  enable_nat_gateway = false
  single_nat_gateway = true

  public_subnet_tags = {
    Name = "public-subnet-${var.region}"
  }

  tags = local.tags

  vpc_tags = {
    Name = "${var.name}"
  }
}