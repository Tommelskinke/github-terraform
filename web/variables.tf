variable "location" {
  description = "The Azure Region in which the resources will be deployed."
  type        = string
  default     = "westuerope"
}

variable "rg_name" {
  description = "The name of the Resource Group in which the resources will be deployed."
  type        = string
  default     = "rg-web"

}

variable "sa_name" {
  description = "The name of the Storage Account in which the resources will be deployed."
  type        = string
  default     = "saweb"
}

variable "source_content" {
  description = "The content of the index.html file."
  type        = string
  default     = "<h1>Hello, World!</h1>"
}

variable "index_html" {
  type        = string
  description = "The name of the index.html file."
  default     = "index.html"
}