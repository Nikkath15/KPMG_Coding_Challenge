variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "app_subnets" {
  description = "List of subnet IDs for app instances"
  type        = list(string)
}

variable "app_ami_id" {
  description = "AMI ID for the app instances"
  type        = string
}

variable "app_instance_type" {
  description = "EC2 instance type for the app tier"
  type        = string
}
