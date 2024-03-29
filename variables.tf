variable "public_subnet_count" {
  description = "Number of public subnets."
  type        = number
  default     = 3
}

variable "private_subnet_count" {
  description = "Number of private subnets."
  type        = number
  default     = 3
}
