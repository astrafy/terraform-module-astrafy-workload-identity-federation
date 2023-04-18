variable "project_id" {
  type        = string
  description = "Project ID hosting workload identity"
}

variable "workload_identity_pool" {
  type        = string
  description = "Workload identity key for Pool and Provider. This enforces best practices to have one provider per pool"
  default     = null
}

variable "workload_identity_providers" {
  type = map(object({
    attribute_mapping = map(string)
    attribute_condition = string
    oidc_issuer_uri = string
  }))
}

