output "pool_id" {
  value = google_iam_workload_identity_pool.this.workload_identity_pool_id
}

output "workload_identity_providers_ids" {
  value = { for k,v in google_iam_workload_identity_pool_provider.this: k => { id = v.id}}
}
