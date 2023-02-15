# Read EnvVariables                         -       Linux - export TF_VAR_userName=Akash, echo $userName
#                                                   Windows - set TF_VAR_userName=Akash
#                                                   TF_VAR prefix helps to pick the value in terraform username

variable "userName" {
  type = string
}

output "readEnvVariables" {
  value = "Hello ${var.userName}"
}