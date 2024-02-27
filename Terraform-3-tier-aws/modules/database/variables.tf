variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "db_subnets" {
  description = "List of subnet IDs for the RDS instance"
  type        = list(string)
}

variable "db_instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
}

variable "db_username" {
  description = "Username for the RDS database"
  type        = string
}

variable "db_secret_arn" {
  description = "The ARN of the AWS Secrets Manager secret containing the RDS database password"
  type        = string
}
