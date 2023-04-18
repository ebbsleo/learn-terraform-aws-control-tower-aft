provider "tfe" {
  hostname = var.tfc_hostname
  token = var.terraform_token
}

data "tfe_organization" "infra_org" {
  name = var.terraform_org_name
}

resource "tfe_variable_set" "tfe_token" {
  name         = "Global Varset"
  description  = "Variable set applied to all workspaces."
  global       = true
  organization = data.tfe_organization.infra_org.name
}

resource "tfe_variable" "tfe-token" {
  key             = "TFE_TOKEN"
  value           = var.terraform_token_app
  category        = "env"
  description     = "an environment variable"
  sensitive       = true   
  variable_set_id = tfe_variable_set.tfe_token.id
}