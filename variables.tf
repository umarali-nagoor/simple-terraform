/*variable "ibmcloud_api_key" {
  description = "IBM Cloud Platform API Key"
}*/

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

