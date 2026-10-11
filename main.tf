resource "google_kms_crypto_key" "kms_crypto_keys" {
  for_each = var.kms_crypto_keys

  key_ring                      = each.value.key_ring
  name                          = each.value.name
  crypto_key_backend            = each.value.crypto_key_backend
  deletion_policy               = each.value.deletion_policy
  destroy_scheduled_duration    = each.value.destroy_scheduled_duration
  import_only                   = each.value.import_only
  labels                        = each.value.labels
  purpose                       = each.value.purpose
  rotation_period               = each.value.rotation_period
  skip_initial_version_creation = each.value.skip_initial_version_creation

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "version_template" {
    for_each = each.value.version_template != null ? [each.value.version_template] : []
    content {
      algorithm        = version_template.value.algorithm
      protection_level = version_template.value.protection_level
    }
  }
}

