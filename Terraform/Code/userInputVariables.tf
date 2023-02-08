
output "print_NameString_AgeNumber" {
  value = "Hello ${var.userName} your age is ${var.age}"
}

output "print_UsersList" {
  value = "First User is ${var.users[0]}"
}