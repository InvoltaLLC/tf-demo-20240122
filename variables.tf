variable "AZ_ID" {
  type = string
}

variable "AZ_SECRET" {
  type = string
}

variable "AZ_TENANT" {
  type = string
}

variable "AZ_SUBSCRIPTION" {
  type = string
}

variable "tags" {
  type = map(string)
  default = {
    "customer" = "me"
    "core_version" = "1.5.3822"
  }
}

variable "customers" {
  type = map
}