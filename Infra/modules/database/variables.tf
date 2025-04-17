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

variable "subnets" {
  description = "Subnets"
  type        = list(string)
}

variable "security_group" {
  description = "Security group ID"
  type        = string
}

variable "name" {
  description = "Name prefix for database"
  type        = string
}
