
# Elastic Ip for aws 1
resource "aws_eip" "eip-1" {
  instance = "${aws_instance.instance-1.id}"
  vpc      = true
}

resource "aws_eip_association" "eip-1" {
    instance_id = "${aws_instance.instance-1.id}"
    allocation_id = "${aws_eip.eip-1.id}"
}

# Elastic Ip for aws 2
resource "aws_eip" "eip-2" {
  instance = "${aws_instance.instance-2.id}"
  vpc      = true
}

resource "aws_eip_association" "eip-2" {
    instance_id = "${aws_instance.instance-2.id}"
    allocation_id = "${aws_eip.eip-2.id}"
}