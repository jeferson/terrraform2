resource "aws_vpc" "vpc-0404ff0697a25c085" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "172.31.254.0/24"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"

  tags = {
    Name = "abcd-vpc-prd-vpc"
  }
}

resource "aws_subnet" "abcd-vpc-prd-subnet-public1-sa-east-1a" {
  assign_ipv6_address_on_creation                = false
  vpc_id                                         = "vpc-0404ff0697a25c085"
  cidr_block                                     = "172.31.254.0/28"
  availability_zone                              = "sa-east-1a"
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "abcd-vpc-prd-subnet-public1-sa-east-1a"
  }
}

resource "aws_subnet" "abcd-vpc-prd-subnet-private1-sa-east-1a"{
  assign_ipv6_address_on_creation                = false
  vpc_id                                         = "vpc-0404ff0697a25c085"
  cidr_block                                     = "172.31.254.128/28"
  availability_zone                              = "sa-east-1a"
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "abcd-vpc-prd-subnet-private1-sa-east-1a"
  }
}

resource "aws_subnet" "abcd-vpc-prd-subnet-public2-sa-east-1b"{
  assign_ipv6_address_on_creation                = false
  vpc_id                                         = "vpc-0404ff0697a25c085"
  cidr_block                                     = "172.31.254.16/28"
  availability_zone                              = "sa-east-1b"
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "abcd-vpc-prd-subnet-public2-sa-east-1b"
  }
}

resource "aws_subnet" "abcd-vpc-prd-subnet-private2-sa-east-1b"{
  assign_ipv6_address_on_creation                = false
  vpc_id                                         = "vpc-0404ff0697a25c085"
  cidr_block                                     = "172.31.254.144/28"
  availability_zone                              = "sa-east-1b"
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "abcd-vpc-prd-subnet-private2-sa-east-1b"
  }
}

resource "aws_route_table" "rtb-0b338c7c76fcf8d77" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-00be5367d68a5ca9a"
  }

  route {
    cidr_block         = "10.0.0.0/8"
    transit_gateway_id = "tgw-05aae16ecf6c150bf"
  }

  tags = {
    Name = "abcd-vpc-prd-rtb-public"
  }

  vpc_id = "vpc-0404ff0697a25c085"
}

resource "aws_route_table" "rtb-019f80363d722761d" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0e6c11bd9a5963e43"
  }

  tags = {
    Name = "abcd-vpc-prd-rtb-private1-sa-east-1a"
  }

  vpc_id = "vpc-0404ff0697a25c085"
}

resource "aws_route_table" "rtb-05c44bc163798be90" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0e6c11bd9a5963e43"
  }

  tags = {
    Name = "abcd-vpc-prd-rtb-private2-sa-east-1b"
  }

  vpc_id = "vpc-0404ff0697a25c085"
}

resource "aws_route_table_association" "subnet-0ab250c2515a6d183" {
  subnet_id      = "subnet-0ab250c2515a6d183"
  route_table_id = aws_route_table.rtb-0b338c7c76fcf8d77.id
}

resource "aws_route_table_association" "subnet-0d37e84572442fa6f" {
  subnet_id      = "subnet-0d37e84572442fa6f"
  route_table_id = aws_route_table.rtb-0b338c7c76fcf8d77.id
}

resource "aws_route_table_association" "subnet-0de8388cc0f5d6f3b" {
  subnet_id      = "subnet-0de8388cc0f5d6f3b"
  route_table_id = aws_route_table.rtb-019f80363d722761d.id
}

resource "aws_route_table_association" "subnet-0e436e45b46f3aefe" {
  subnet_id      = "subnet-0e436e45b46f3aefe"
  route_table_id = aws_route_table.rtb-05c44bc163798be90.id
}

resource "aws_internet_gateway" "abcd-vpc-prd-igw" {
    vpc_id = "vpc-0404ff0697a25c085"

    tags = {
        Name = "abcd-vpc-prd-igw"
    }
}
