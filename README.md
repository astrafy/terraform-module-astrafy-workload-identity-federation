<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >=4.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >=4.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_iam_workload_identity_pool.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool) | resource |
| [google_iam_workload_identity_pool_provider.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID hosting workload identity | `string` | n/a | yes |
| <a name="input_workload_identity_pool"></a> [workload\_identity\_pool](#input\_workload\_identity\_pool) | Workload identity key for Pool and Provider. This enforces best practices to have one provider per pool | `string` | `null` | no |
| <a name="input_workload_identity_providers"></a> [workload\_identity\_providers](#input\_workload\_identity\_providers) | n/a | <pre>map(object({<br>    attribute_mapping = map(string)<br>    attribute_condition = string<br>    oidc_issuer_uri = string<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pool_id"></a> [pool\_id](#output\_pool\_id) | n/a |
| <a name="output_workload_identity_providers_ids"></a> [workload\_identity\_providers\_ids](#output\_workload\_identity\_providers\_ids) | n/a |
<!-- END_TF_DOCS -->