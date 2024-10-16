variable "rg_backend_name" {
  description = "Resource group name for backend"
  type        = string

}

variable "rg_backend_location" {
  description = "Resource group location for backend"
  type        = string

}

variable "sa_backend_name" {
  description = "value for storage account name"
  type        = string
}

variable "sc_backend_name" {
  description = "value for storage container name"
  type        = string

}

variable "kv_backend_name" {
  description = "value for key vault name"
  type        = string
}

variable "sa_backend_accesskey_name" {
  description = "value for storage account access key name"
  type        = string
  sensitive   = true

}