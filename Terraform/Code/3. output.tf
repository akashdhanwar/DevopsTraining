
output "print_Data_Types" {
  value = "String - Hello ${var.userName}. \nNumber - Age ${var.age}. \nList - First ${var.users[0]}. \nMap - Age ${var.mapAge.akash} or ${lookup(var.mapAge, "akash")}"
}
