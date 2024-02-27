variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "app_ami_id" {
  description = "AMI ID for the app instances"
}

variable "app_instance_type" {
  description = "EC2 instance type for the app tier"
  default     = "t2.micro"
}

variable "db_instance_class" {
  description = "The instance type of the RDS instance"
  default     = "db.t2.micro"
}

variable "db_username" {
  description = "Username for the RDS database"
}

variable "db_secret_arn" {
  description = "The ARN of the AWS Secrets Manager secret containing the RDS database password"
}
