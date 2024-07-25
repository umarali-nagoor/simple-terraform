variable "ibmcloud_api_key" {
  description = "IBM Cloud Platform API Key"
  sensitive   = true
  type = string
  default = "abc"
}

variable "resource_group_name" {
  description = "Where to create resources"
  default = "Default"
}

variable "vpc_name" {
    default = "test"
    sensitive   = true
}

variable "IC_SCHEMATICS_WORKSPACE_ID" {
  default     = "test"
}

