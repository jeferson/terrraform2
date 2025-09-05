resource "aws_db_subnet_group" "default-vpc-0404ff0697a25c085" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-0404ff0697a25c085"
  subnet_ids  = ["subnet-0ab250c2515a6d183", "subnet-0d37e84572442fa6f", "subnet-0de8388cc0f5d6f3b", "subnet-0e436e45b46f3aefe"]
}

resource "aws_security_group" "vpc-0404ff0697a25c085-abcd-prd" {
  name        = "abcd-prd"
  description = "Created by RDS management console"
  vpc_id      = "vpc-0404ff0697a25c085"

  ingress {
    from_port        = 0
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    description      = null
  }

  ingress {
    from_port        = 8
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    description      = null
  }

  ingress {
    from_port        = 1433
    to_port          = 1433
    protocol         = "tcp"
    cidr_blocks      = [
      "187.56.59.73/32",
      "172.174.144.108/32",
      "20.42.2.0/23",
      "20.42.4.0/26",
      "20.42.64.0/28",
      "20.49.111.0/29",
      "20.119.28.57/32",
      "20.232.89.104/29",
      "40.71.14.32/28",
      "40.78.229.96/28",
      "48.211.4.136/29",
      "48.211.4.144/28",
      "48.211.4.160/29",
      "10.60.51.0/24",
      "10.60.52.0/24",
      "10.60.40.0/24",
    ]
    ipv6_cidr_blocks = [
      "2603:1030:210:1::480/121",
      "2603:1030:210:1::500/122",
      "2603:1030:210:1::700/121",
      "2603:1030:210:1::780/122",
      "2603:1030:210:402::330/124",
      "2603:1030:210:802::210/124",
    ]
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    description      = null
  }

  ingress {
    from_port        = 1433
    to_port          = 1433
    protocol         = "tcp"
    cidr_blocks      = ["201.1.190.125/32"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    description      = "teste-externo-temp"
  }

  ingress {
    from_port        = 1433
    to_port          = 1433
    protocol         = "tcp"
    cidr_blocks      = [
      "201.55.56.102/32",
      "201.55.56.103/32",
      "201.55.56.104/32",
      "201.55.56.105/32",
      "201.55.56.106/32",
      "201.55.56.107/32",
    ]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    description      = "Rede PM externa"
  }

  ingress {
    from_port        = 1433
    to_port          = 1433
    protocol         = "tcp"
    cidr_blocks      = ["201.55.56.160/32"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    description      = "Rede externa PM "
  }

  ingress {
    from_port        = 1433
    to_port          = 1433
    protocol         = "tcp"
    cidr_blocks      = ["201.55.56.184/32", "201.55.56.154/32"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    description      = "Rede externa PM"
  }

  ingress {
    from_port        = 1433
    to_port          = 1433
    protocol         = "tcp"
    cidr_blocks      = ["201.55.56.33/32"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    description      = "Servidor externo PM"
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = []
    ipv6_cidr_blocks = ["2603:1030:210:c02::210/124"]
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    description      = null
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    description      = null
  }

  tags = {
    Name  = "abcd-prd"
  }
}
