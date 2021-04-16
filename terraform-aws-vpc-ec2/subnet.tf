resource "aws_subnet" "public_subnet" {
    vpc_id = "${aws_vpc.main.id}"
    availability_zone = "${var.availability_zone}"
    cidr_block = "${var.cidrs}"

    tags = {
        Name = "${var.subnet_tag_name}"
    }
}

resource "aws_route_table_association" "eu-west-3a-public" {
    subnet_id = "${aws_subnet.public_subnet.id}"
    route_table_id = "${aws_route_table.public_route.id}"
}