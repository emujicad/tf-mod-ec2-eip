resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance_type}"
  #vpc_security_group_ids = [ "${recurso.nombreinternodelrecurso.atributo}" ]

  vpc_security_group_ids = [
    "${aws_security_group.allow_ssh.id}",
    "${aws_security_group.allow_http.id}"
  ]
  key_name  = "${aws_key_pair.deployer.key_name}"
  user_data = "${file("user_data.txt")}"
  tags = {
    Name = "${var.project_name}-${var.workspace}-instance"
  }
}