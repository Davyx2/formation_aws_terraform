resource "aws_route_table" "public_route" {
    vpc_id = "${aws_vpc.main.id}"

    route {
        cidr_block = "${var.rtb_cidr}"
        gateway_id = "${aws_internet_gateway.my_ig.id}"
    }

    tags = {
        Name = "${var.rtb_tag_name}"
    }
}