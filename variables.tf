# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "ct_management_account_id" {}

variable "log_archive_account_id" {}

variable "audit_account_id" {}

variable "aft_management_account_id" {}

variable "github_username" {}

variable "ct_home_region" {}

variable "tf_backend_secondary_region" {}

variable "terraform_version" {
  description = "Terraform version being used for AFT"
  type        = string
  default     = "0.15.5"
}

variable "terraform_distribution" {
  description = "Terraform distribution being used for AFT - valid values are oss, tfc, or tfe"
  type        = string
  default     = "oss"
}

# Non-OSS Variables

variable "tfc_hostname" {
  type        = string
  default     = "app.terraform.io"
  description = "The hostname of the TFC or TFE instance you'd like to use with AWS"
}

variable "terraform_org_name" {
  type        = string
  description = "Organization name for Terraform Cloud or Enterprise"
  default     = "null"
}

variable "terraform_app_org_name" {
  type        = string
  description = "Organization name for Terraform Cloud or Enterprise"
  default     = "null"
}

variable "terraform_token" {
  type        = string
  description = "Terraform token for Cloud or Enterprise"
  default     = "null" # Non-sensitive default value #tfsec:ignore:general-secrets-no-plaintext-exposure
  sensitive   = true
}

variable "terraform_token_app" {
  type        = string
  description = "Terraform token for Cloud or Enterprise"
  default     = "null" # Non-sensitive default value #tfsec:ignore:general-secrets-no-plaintext-exposure
  sensitive   = true
}

variable "terraform_api_endpoint" {
  description = "API Endpoint for Terraform. Must be in the format of https://xxx.xxx."
  type        = string
  default     = "https://app.terraform.io/api/v2/"
}
