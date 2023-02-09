# Input Variables                       -   Created by using "variable" block. Example - variable username{}
#                                           Accessed in "output" block by "${var.username}"
# Variable Default value                -   variable userName{ default: "Akash"}
#                                           Terraform asks for input if it is not set
# Variable types                        -   variable userName{ default: "Akash", type: number}
#                                           Types can be - https://developer.hashicorp.com/terraform/language/values/variables
#                                           Using list type - 
# Pass variable value from commandLine  -   For integrating with tools like Jenkins
#                                           terraform plan -var "username=Akash"
#                                           terraform plan -var "userName=Akash" -var "age=12"
variable "userName" {
    type = string
    default = "DefaultValue"
}

variable "age"{
    type = number
    default = 10
}

variable "users" {
    type = list
    default = ["Akash", "Shreet"]
}

variable "mapAge" {
  type = map
  default = {
    akash: 20
    shreet: 30
  }
}