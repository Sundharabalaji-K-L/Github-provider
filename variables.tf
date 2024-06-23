variable "repository_name" {
  type        = string
  description = "name of  the repository to create"
  default     = "Terraform-Deep-Drive-network"
}


variable "gh_pat" {
  type = string
  description = "gihub pat token"
}  