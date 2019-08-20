data "ibm_resource_group" "group" {
  name = "${var.resource_group_name}"
}

resource "ibm_is_vpc" "vpc" {
  name           = "${var.vpc_name}"
  resource_group = "${data.ibm_resource_group.group.id}"
}

resource "null_resource" "test" {
   provisioner "local-exec" {
    command = "echo hello"
     }
  
  }
