variable "vpc_cidr" {
  type = string
}

variable "subnet_privadas_cidrs" {
  type = list(string)
}

variable "subnet_publicas_cidrs" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}
