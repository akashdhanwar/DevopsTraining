# Cloud Provider list               -       https://registry.terraform.io/browse/providers
#                                           Tell terraform on which provider to create Instance
#                                           Terraform will then download its plugin(written in Golang) of that provider
#                                           Plugin knows which API to hit after reading terraform file
#                                           An instance will be created by API hit
# Creating a Repo on Github         -       Go to https://registry.terraform.io/browse/providers and serch for github plugin
#                                           https://registry.terraform.io/providers/integrations/github/latest/docs#example-usage
#                                           https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
#                                           Provide the provider in terraform file
# terraform providers               -       Tells providers used by PWD
# terraform plan                    -       Read PWD configuration files and tell that what the configuration it will do
#                                           Reads terraform.tfstate file and then check configuration
#                                           "terraform plan" will give Inconsistent dependency lock file
# terraform init                    -       Initialize and install all provider plugins. A terraform folder is created with all provider plugins.
#                                           "terraform init" will download plugins in terraform folder
#                                           "terraform plan" will tell what it will do
# terraform apply                   -       "terraform apply", enter yes and It will break due to 401 authentication. --auto-approve for not asking yes
#                                           Go to Github -> Settings -> Developer Settings -> Personal Access Token -> Select all and generate a token
#                                           Add in token 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
#                                           "terraform apply" will create a repo on github now and a tfstate file will be created
# terraform.tfstate file            -       Contains resources information. Do not update manually
#                                           Can be seen by "terraform show" command
#                                           terraform.tfstate.backup file will be created when we add another resource
# terraform destroy                 -       Destroy all resources from tfstate file
#                                           For seleting selected resource, "terraform destroy --target github_repository.secondRepoLocalName"
# terraform validate                -       Check that the configuration is correct or not
# terraform refresh                 -       Refreshes the terraform.tfstate file state. 
#                                           Updated the decription of github



provider "github" {
  token = "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"
}

resource "github_repository" "localName" {
  name        = "terraform-temp-repo"
  description = "Testing creation"
  visibility = "public"
  auto_init = true                          // Readme file
#   template {
#     owner                = "github"
#     repository           = "terraform-template-module"
#     include_all_branches = true
#   }
}

resource "github_repository" "secondRepoLocalName" {
  name        = "terraform-second-repo"
  description = "Testing second creation"
  visibility = "public"
  auto_init = true                          // Readme file
}