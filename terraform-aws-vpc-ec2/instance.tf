variable "ami" {
    description = "AMI that will be used by both instances"
}
variable "instance_type" {
    description = "Key pair name"
}

variable "lastname" {
  description = "name of user iam"
}

variable instance_tag_name_1 {
    description = "The tag name of the first instance"
}
variable instance_tag_name_2 {
    description = "The tag name of the second instance"
}


#Instance 1
resource "aws_instance" "instance-1" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    subnet_id = "${aws_subnet.public_subnet.id}"
    vpc_security_group_ids = ["${aws_security_group.test.id}"]
    key_name = "${aws_key_pair.instance-1.key_name}"
    tags = {
        Owner = "${var.lastname}"
        Name = "serveur1"
    }
}

#Second Instances 2 
resource "aws_instance" "instance-2" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    subnet_id = "${aws_subnet.public_subnet.id}"
    vpc_security_group_ids = ["${aws_security_group.test.id}"]
    key_name = "${aws_key_pair.instance-2.key_name}"
    depends_on = [aws_internet_gateway.my_ig]
    tags  = {
        Name = "serveur2"
        Owner = "${var.lastname}"
    }
}