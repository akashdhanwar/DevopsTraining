# Input Variables            -   Created by using "variable" block. Example - variable username{}
#                                Accessed in "output" block by "${var.username}"
# Multiple variables         -   Default value - variable username{ default: "Akash"}
#                                Terraform asks for input if it is not set

variable "userName" {
  default = "DefaultValue"
}

variable "age"{

}