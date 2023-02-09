# Functions                         -   join(separator, list)
#                                       upper(variable) 
#                                       lower(variable)
#                                       lookup(map/dictionary, key)


output "functions" {
  value = "join(separator, list) - ${join(", ", var.users)}. \nupper(variable) - ${upper(var.users[0])}. \nlower(variable) - ${lower(var.users[0])}. \ntitle(variable) - ${title(var.users[0])}. \nlookup(map), key) - ${lookup(var.mapAge, "akash")}"
}