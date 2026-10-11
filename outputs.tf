output "schemas_registry_policies_id" {
  description = "Map of id values across all schemas_registry_policies, keyed the same as var.schemas_registry_policies"
  value       = { for k, v in aws_schemas_registry_policy.schemas_registry_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "schemas_registry_policies_policy" {
  description = "Map of policy values across all schemas_registry_policies, keyed the same as var.schemas_registry_policies"
  value       = { for k, v in aws_schemas_registry_policy.schemas_registry_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "schemas_registry_policies_region" {
  description = "Map of region values across all schemas_registry_policies, keyed the same as var.schemas_registry_policies"
  value       = { for k, v in aws_schemas_registry_policy.schemas_registry_policies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "schemas_registry_policies_registry_name" {
  description = "Map of registry_name values across all schemas_registry_policies, keyed the same as var.schemas_registry_policies"
  value       = { for k, v in aws_schemas_registry_policy.schemas_registry_policies : k => v.registry_name if v.registry_name != null && length(v.registry_name) > 0 }
}

