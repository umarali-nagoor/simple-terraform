variable "ibmcloud_api_key" {
  description = "IBM Cloud Platform API Key"
  sensitive   = true
  default = "123"
}

variable "ghe_token" {
  description = "IBM Cloud Platform ghe token"
  sensitive   = true
  default = "abc"
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

