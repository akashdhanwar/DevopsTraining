# Syntax                      -   blockType "label1" "label2" .... {
#                                   // Identifiers = Expressions
#                                   # this is also comment
#                                 }
#                                 Can be configured in JSON also
#                                 Run by "terraform plan"
# Multiple .tf files          -   Sequence of loading files is loaded in Alphabetical order of Labelname
output "firstOutputBlock" {
  value = "First block"
}

output "secondOutputBlock" {
  value = "Second block"
}

output "thirdOutputBlock" {
  value = "Third block. \nAs many output block as we want. \nCan be configured in JSON also. \nRun by command terraform plan. \nSequence of loading files is loaded in Alphabetical order of Labelname."
}
