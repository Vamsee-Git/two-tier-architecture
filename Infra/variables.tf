variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnets"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnets"
  type        = list(string)
}

variable "sg_name_prefix" {
  description = "Name prefix for security groups"
  type        = string
}

variable "web_name_prefix" {
  description = "Name prefix for web servers"
  type        = string
}

variable "web_instance_count" {
  description = "Number of web server instances"
  type        = number
  default     = 2
}

variable "web_ami_id" {
  description = "AMI ID for web servers"
  type        = string
}

variable "web_instance_type" {
  description = "Instance type for web servers"
  type        = string
  default     = "t2.micro"
}

variable "db_name_prefix" {
  description = "Name prefix for database"
  type        = string
}

variable "db_instance_class" {
  description = "Instance class for database"
  type        = string
}

variable "db_allocated_storage" {
  description = "Allocated storage for database"
  type        = number
}

variable "db_name" {
  description = "Database name"
  type        = string
}

variable "db_username" {
  description = "Database username"
  type        = string
}

variable "db_password" {
  description = "Database password."
  type        = string
}
