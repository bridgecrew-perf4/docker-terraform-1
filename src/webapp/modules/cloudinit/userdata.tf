################################################  Cloud init module  ####################################
provider "template"{

}
data "template_file" "webserver-userdata" {
  template = "${file("${path.module}/userdata.tpl")}"

}

data "template_file" "dbserver-userdata" {
  template = "${file("${path.module}/userdata.tpl")}"

}
