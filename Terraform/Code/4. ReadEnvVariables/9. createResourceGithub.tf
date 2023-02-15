# Cloud Provider list               -       https://registry.terraform.io/browse/providers
#                                           Tell terraform on which provider to create Instance
#                                           Terraform will then download its plugin(written in Golang) of that provider
#                                           Plugin knows which API to hit after reading terraform file
#                                           An instance will be created by API hit
# Creating a Repo on Github         -       Go to https://registry.terraform.io/browse/providers and serch for github plugin
#                                           https://registry.terraform.io/providers/integrations/github/latest/docs#example-usage
#                                           https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
# terraform plan                    -       Read PWD configuration files and tell thst what the configuration will do
# terraform providers               -       Tells providers used by PWD
# terraform init                    -       Initialize and install all provider plugins
#                                           A terraform folder is created with all provider plugins
#                                           terraform plan
#                                           terraform apply
# terraform apply                   -       Yes/No
#                                           It will break due to authentication failure
#                                           Go to Github -> Settings -> Developer Settings -> Personal Access Token -> Select all and generate a token
#                                           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

provider "github" {
  token = "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"
}

resource "github_repository" "localName" {
  name        = "terraform-temp-repo"
  description = "Testing creation"
  visibility = "public"
  auto_init = true

#   template {
#     owner                = "github"
#     repository           = "terraform-template-module"
#     include_all_branches = true
#   }
}