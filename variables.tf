variable "kms_crypto_keys" {
  description = <<EOT
Map of kms_crypto_keys, attributes below
Required:
    - key_ring
    - name
Optional:
    - crypto_key_backend
    - deletion_policy
    - destroy_scheduled_duration
    - import_only
    - labels
    - purpose
    - rotation_period
    - skip_initial_version_creation
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - version_template (block):
        - algorithm (required)
        - protection_level (optional)
EOT

  type = map(object({
    key_ring                      = string
    name                          = string
    crypto_key_backend            = optional(string)
    deletion_policy               = optional(string)
    destroy_scheduled_duration    = optional(string)
    import_only                   = optional(bool)
    labels                        = optional(map(string))
    purpose                       = optional(string)
    rotation_period               = optional(string)
    skip_initial_version_creation = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    version_template = optional(object({
      algorithm        = string
      protection_level = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

