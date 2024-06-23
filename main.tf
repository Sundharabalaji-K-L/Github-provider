provider "github" {
  token = var.gh_pat
}
resource "github_repository" "main" {
  name                  = var.repository_name
  description           = "Creating repository with name Terraform-Deep]-Drive"
  visibility            = "public"
  auto_init             = true
}

resource "github_branch" "main" {
  repository = github_repository.main.name
  branch     = "main"
}

resource "github_branch_default" "name" {
  repository = github_repository.main.name
  branch     = github_branch.main.branch
}

