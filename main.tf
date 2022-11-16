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

locals {
email_stss = ["tanya.shanker@ibm.com"]
}

# STSS
resource "ibm_iam_user_invite" "stss" {
  users         = local.email_stss
  access_groups = ["AccessGroupId-00a03ccc-7246-421b-af99-9ac9430e1304"]
  lifecycle {ignore_changes = [invited_users]}
}

/*resource "null_resource" "test" {
   provisioner "local-exec" {
    command = "echo hello"
     }
  
  }*/
