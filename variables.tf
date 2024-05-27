variable "ibmcloud_api_key" {
  description = "IBM Cloud Platform API Key"
  sensitive   = true
}

variable "ghe_token" {
  description = "IBM Cloud Platform ghe token"
  sensitive   = true
}


variable "resource_group_name" {
  description = "Where to create resources"
  default = "Default"
}

variable "vpc_name" {
    default = "test"
}

variable "IC_SCHEMATICS_WORKSPACE_ID" {
  default     = "test"
}

