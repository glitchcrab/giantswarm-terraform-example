variable "api_uri" {
  type        = string
  description = "URI of installation API."
}

variable "auth_token" {
  type        = string
  description = "Authentication token."
}

variable "clusterid" {
  type        = string
  description = "ID of cluster."
}

# kubernetes API auth credentials

variable "key_description" {
  type        = string
  description = "String describing key's use."
}

variable "key_ttl" {
  type        = number
  description = "Key's TTL in hours."
}

variable "key_orgs" {
  type        = string
  description = "Comma separated list of organisations the key will belong to."
}
