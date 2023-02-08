# Input Variables                       -   Created by using "variable" block. Example - variable username{}
#                                           Accessed in "output" block by "${var.username}"
#                                           Default value - variable username{ default: "Akash"}
#                                           Terraform asks for input if it is not set
# Pass variable value from commandLine  -   For integrating with tools like Jenkins
#                                           terraform plan -var "username=Akash"
#                                           terraform plan -var "userName=Akash" -var "age=12"

variable "userName" {
  default = "DefaultValue"
}

variable "age"{

}