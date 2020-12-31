output "webserver" {
value = "${aws_instance.webserver.id}"
}
output "dbserver" {
value = "${aws_instance.dbserver.id}"
}
output "appserver_publicip" {
value = "${aws_instance.appserver.public_ip}"
}
