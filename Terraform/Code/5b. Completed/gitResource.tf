resource "github_repository" "localName" {
  name        = "terraform-temp-repo"
  description = "Testing creation"
  visibility  = "public"
  auto_init   = true // Readme file
  #   template {
  #     owner                = "github"
  #     repository           = "terraform-template-module"
  #     include_all_branches = true
  #   }
}
