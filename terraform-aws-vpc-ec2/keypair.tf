# Initiate variable
variable "key_pair" {
    description = "Type of instance"
}

resource "aws_key_pair" "instance-1" {
   public_key = "${file("ssh/aws1/awskey.pub")}"
}

resource "aws_key_pair" "instance-2" {
   public_key = "${file("ssh/aws2/awskey.pub")}"
}