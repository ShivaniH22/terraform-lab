variable "vpc_cidr" {
  type = string
  description = "this variable referes to vpc cidr range"
  default = "10.30.0.0/16"
}

variable "env_type" {
  type = string
  default = "DEV"
}
variable "app_name" {
  type = string
  description = "Application Type"
  
}