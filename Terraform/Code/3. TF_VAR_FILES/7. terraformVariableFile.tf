# TFVAR File                            -   To Store variables data in a separate file
#                                           Named as terraform.tfvars
#                                           For custom name, terraform plan -var-file=custom.tfvars. Used for local, prod, other environments

variable "userName" {
  type = string
}

variable "age" {
  type = number
}

output "tfvarFile" {
  value = "Name - ${var.userName}, Age - ${var.age}"
}