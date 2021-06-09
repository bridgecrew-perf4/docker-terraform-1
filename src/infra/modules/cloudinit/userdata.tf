################################################  Cloud init module  ####################################
data "template_file" "lbserver-userdata" {
  template = "${file("${path.module}/userdata.tpl")}"

  vars = {
   vm_role = "lb"
  }
}

data "template_file" "appserver-userdata" {
  template = "${file("${path.module}/userdata.tpl")}"

  vars = {
   vm_role = "app"
  }
}
