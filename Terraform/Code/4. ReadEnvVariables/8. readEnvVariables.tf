

variable "userName" {
  type = string
}

output "readEnvVariables" {
  value = "Hello ${var.userName}"
}