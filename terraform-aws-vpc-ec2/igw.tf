resource "aws_internet_gateway" "my_ig" {
    vpc_id = "${aws_vpc.main.id}"

    tags = {
        Name = "${var.igw_tag_name}"
    }
}