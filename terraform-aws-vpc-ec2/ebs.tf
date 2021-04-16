resource "aws_ebs_volume" "instance-1" {
  availability_zone = "${var.availability_zone}"
  size = 8
  encrypted = false
  tags = {
    Name = "${aws_instance.instance-1.key_name}"
  }
}

resource "aws_ebs_volume" "instance-2" {
  availability_zone = "${var.availability_zone}"
  size = 8
  encrypted = false
  tags = {
    Name = "${aws_instance.instance-2.key_name}"
  }
}