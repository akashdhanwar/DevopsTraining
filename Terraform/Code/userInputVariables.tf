#Pass variable value from commandLine  -   For integrating with tools like Jenkins
#                                          "terraform plan -var "username=Akash"

output "printname" {
  value = "Hello ${var.userName} your age is ${var.age}"
}