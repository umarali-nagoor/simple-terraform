variable "ibmcloud_api_key" {
description = "Enter your IBM Cloud API Key, you can get your IBM Cloud API key using: https://cloud.ibm.com/iam#/apikeys"
}

provider "ibm" {
generation = 2
ibmcloud_api_key = var.ibmcloud_api_key
}


data "ibm_resource_group" "group" {
  name = "${var.resource_group_name}"
}

resource "ibm_is_vpc" "vpc" {
  name           = "${var.vpc_name}"
  resource_group = "${data.ibm_resource_group.group.id}"
  tags = ["tag1","tag2"]
}

/*resource "null_resource" "test" {
   provisioner "local-exec" {
    command = "echo hello"
     }
  
  }*/
