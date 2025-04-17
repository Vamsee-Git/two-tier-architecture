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

variable "subnets" {
  description = "Subnets"
  type        = list(string)
}

variable "security_group" {
  description = "Security group ID"
  type        = string
}

variable "name" {
  description = "Name prefix for web servers"
  type        = string
}
