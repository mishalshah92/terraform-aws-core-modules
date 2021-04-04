resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = data.aws_vpc.vpc.id
  tags   = local.tags
}