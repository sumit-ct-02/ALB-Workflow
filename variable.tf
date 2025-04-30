# vpc
variable "vpc_id" {
  type        = string
  description = "VPC ID to launch instance in"
  default     = "vpc-0822634396310e8ea"
}

# subnet
variable "subnet_id-1" {
  type        = string
  description = "Subnet ID to launch instance in"
  default     = "subnet-0376b05408a1be5d4"
}

variable "subnet_id-2" {
  type        = string
  description = "Subnet ID to launch instance in"
  default     = "subnet-0cca197d7ebb7f99a"
}
# security-group
variable "security_group" {
  type        = string
  description = "Security group name"
  default = ""
}

# region
variable "region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "ap-south-1"
}

#allowed Ports
variable "allowed_ports" {
  type        = list(number)
  description = "List of allowed inbound ports"
  default = []
}

variable "instance_id" {
  type        = string
  description = "Name of the EC2 instance to add in Target Group"
  default = ""
}

variable "lb_name" {
  type        = string
  description = "Load Balance Name"
  default = ""
}

# terraform apply -var="lb_name=sd-backstage"-var="security_group=backstage-alb-sg" -var="allowed_ports=[80]" -var="instance_id=i-05ddf3fdf72fe2db6"
