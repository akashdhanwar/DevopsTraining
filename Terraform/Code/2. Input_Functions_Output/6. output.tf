output "print_Variable_Types" {
  value = "String - Hello ${var.userName}. \nNumber - Age ${var.age}. \nList - First ${var.users[0]}. \nMap - Age ${var.mapAge.akash} or ${lookup(var.mapAge, "akash")}"
}

output "dynamicValueMap" {
  value = "My name is ${var.userName} and age is ${lookup(var.mapAge, "${var.userName}")}"
}