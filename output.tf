output "pip" {
  value = "${aws_instance.web.public_ip}"
}

output "eip" {
  value = "${aws_eip.web_eip.public_ip}"
}

output "sg_ssh_id" {
  value = "${aws_security_group.allow_ssh.id}"
}

output "sg_ssh_name" {
  value = "${aws_security_group.allow_ssh.name}"
}

output "sg_http_id" {
  value = "${aws_security_group.allow_http.id}"
}

output "sg_http_name" {
  value = "${aws_security_group.allow_http.name}"
}
output "kp_name" {
  value = "${aws_key_pair.deployer.key_name}"
}