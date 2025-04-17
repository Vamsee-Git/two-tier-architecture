variable "instance_count" {
  description = "Number of web server instances"
  type        = number
  default     = 2
}

variable "ami_id" {
  description = "AMI ID for web servers"
  type        = string
}

variable "instance_type" {
  description = "Instance type for web servers"
  type        = string
}

variable "instance_class" {
  description = "Instance class for database"
  type        = string
}

variable "allocated_storage" {
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
  description = "Database password"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnets" {
  description = "Subnets"
  type        = list(string)
}

variable "security_group" {
  description = "Security group ID"
  type        = string
}
