variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet IDs for the ELB"
  type        = list(string)
}
