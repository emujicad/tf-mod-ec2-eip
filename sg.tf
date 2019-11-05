resource "aws_security_group" "allow_ssh" {
  name_prefix = "${var.project_name}-${var.workspace}-sg_allow_ssh_anyany-"
  description = "Allow SSH inbound traffic for-${var.project_name}-${var.workspace}"
  vpc_id      = "${data.aws_vpc.selected.id}"

  ingress {
    # SSH (change to whatever ports you need)
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"] # add a CIDR block here
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    # prefix_list_ids = ["pl-12c4e678"]
  }
}


resource "aws_security_group" "allow_http" {
  name_prefix = "${var.project_name}-${var.workspace}-sg_allow_http_anyany-"
  description = "Allow HTTP inbound traffic for-${var.project_name}-${var.workspace}"
  vpc_id      = "${data.aws_vpc.selected.id}"

  ingress {
    # HTTP (change to whatever ports you need)
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"] # add a CIDR block here
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    # prefix_list_ids = ["pl-12c4e678"]
  }
}