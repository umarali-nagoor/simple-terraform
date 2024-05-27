variable "ibmcloud_api_key" {
  description = "IBM Cloud Platform API Key"
  default = "1234"
  sensitive   = true
}

variable "ghe_token" {
  description = "IBM Cloud Platform ghe token"
  default = "abcd"
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

