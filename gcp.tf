resource "google_iam_workload_identity_pool" "this" {
  workload_identity_pool_id = "${var.workload_identity_pool}-pool"
  display_name              = "${var.workload_identity_pool} pool"
  description               = "Workload identity pool for ${var.workload_identity_pool}"
}

resource "google_iam_workload_identity_pool_provider" "this" {
  for_each = var.workload_identity_providers
  workload_identity_pool_id          = google_iam_workload_identity_pool.this.workload_identity_pool_id
  workload_identity_pool_provider_id = "${each.key}-provider"
  display_name                       = "${each.key} provider"
  attribute_mapping                  = local.attribute_mapping[each.key]
  attribute_condition                = each.value.attribute_condition
  oidc {
    issuer_uri = each.value.oidc_issuer_uri
    allowed_audiences = each.value.allowed_audiences
  }
}

locals {
  attribute_mapping = { for k,v in var.workload_identity_providers : k => merge({ "google.subject" = "assertion.sub" }, v.attribute_mapping)} #
}
