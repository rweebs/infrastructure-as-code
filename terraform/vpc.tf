module "vpc-a" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  map_public_ip_on_launch = true

  name = "vpc-a"

  cidr = "10.5.0.0/16"
  azs  = local.azs

  public_subnets = ["10.5.0.0/24", "10.5.1.0/24"]

  enable_nat_gateway   = false
  single_nat_gateway   = false
  enable_dns_hostnames = true

}
