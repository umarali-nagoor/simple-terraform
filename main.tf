data "ibm_resource_group" "group" {
  name = "${var.resource_group_name}"
}

resource "ibm_is_vpc" "vpc" {
  name           = "${var.vpc_name}"
  resource_group = "${data.ibm_resource_group.group.id}"
  //default_security_group_name = "unseated-spoilage-surpass-prompt"
  tags = ["tag1","tag2"]
}

resource "ibm_resource_group" "grp" {
  name           = "mygrp"
}

/*resource "null_resource" "test" {
   provisioner "local-exec" {
    command = "echo hello"
     }
  
  }*/
