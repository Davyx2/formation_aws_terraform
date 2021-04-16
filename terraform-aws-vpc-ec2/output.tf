output "id" {
  value = "${aws_instance.instance-1.id}"
}
output "http" {
  value = "${aws_security_group.test.name}"
}