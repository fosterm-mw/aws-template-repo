
variable "vpc_name" {
  type        = string
  description = "Name of eks VPC"
  default     = "template-test-1"
}

variable "network_enabled" {
  type        = bool
  description = "Ability to create and destroy network in variable form"
  default     = true
}

