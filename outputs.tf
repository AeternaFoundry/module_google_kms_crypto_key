output "kms_crypto_keys_id" {
  description = "Map of id values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no id are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_crypto_keys_crypto_key_backend" {
  description = "Map of crypto_key_backend values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no crypto_key_backend are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.crypto_key_backend if v.crypto_key_backend != null && length(v.crypto_key_backend) > 0 }
}
output "kms_crypto_keys_deletion_policy" {
  description = "Map of deletion_policy values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no deletion_policy are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "kms_crypto_keys_destroy_scheduled_duration" {
  description = "Map of destroy_scheduled_duration values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no destroy_scheduled_duration are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.destroy_scheduled_duration if v.destroy_scheduled_duration != null && length(v.destroy_scheduled_duration) > 0 }
}
output "kms_crypto_keys_effective_labels" {
  description = "Map of effective_labels values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no effective_labels are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "kms_crypto_keys_import_only" {
  description = "Map of import_only values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no import_only are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.import_only if v.import_only != null }
}
output "kms_crypto_keys_key_ring" {
  description = "Map of key_ring values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no key_ring are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.key_ring if v.key_ring != null && length(v.key_ring) > 0 }
}
output "kms_crypto_keys_labels" {
  description = "Map of labels values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no labels are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "kms_crypto_keys_name" {
  description = "Map of name values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no name are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kms_crypto_keys_primary" {
  description = "Map of primary values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no primary are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.primary if v.primary != null && length(v.primary) > 0 }
}
output "kms_crypto_keys_purpose" {
  description = "Map of purpose values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no purpose are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.purpose if v.purpose != null && length(v.purpose) > 0 }
}
output "kms_crypto_keys_rotation_period" {
  description = "Map of rotation_period values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no rotation_period are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.rotation_period if v.rotation_period != null && length(v.rotation_period) > 0 }
}
output "kms_crypto_keys_skip_initial_version_creation" {
  description = "Map of skip_initial_version_creation values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no skip_initial_version_creation are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.skip_initial_version_creation if v.skip_initial_version_creation != null }
}
output "kms_crypto_keys_terraform_labels" {
  description = "Map of terraform_labels values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no terraform_labels are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "kms_crypto_keys_version_template" {
  description = "Map of version_template values across all kms_crypto_keys, keyed the same as var.kms_crypto_keys except keys with no version_template are omitted"
  value       = { for k, v in google_kms_crypto_key.kms_crypto_keys : k => one(v.version_template) if v.version_template != null && length(v.version_template) > 0 }
}

