variable "cidrs" {
    description = "VPC cidr block"
}
variable "availability_zone" {
    description = "Default vailability zone"
}

variable "vpc_tag_name" {
    description = "Tag name of the VPC"
}

variable "subnet_tag_name" {
    description = "Tag name of the subnet"
}

variable "igw_tag_name" {
    description = "Tag name of the internet gateway"
}

variable "rtb_cidr" {
    description = "Route table cidr"
}

variable "rtb_tag_name" {
    description = "Tag name of the route table"
}

resource "aws_vpc" "main" {
    cidr_block = "${var.cidrs}"

    tags  = {
        Name = "${var.vpc_tag_name}"
    }
}


