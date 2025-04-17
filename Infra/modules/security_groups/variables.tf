variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "name" {
  description = "Name prefix for security groups"
  type        = string
}

variable "web_subnet_cidrs" {
  description = "CIDR blocks of web subnets"
  type        = list(string)
}
