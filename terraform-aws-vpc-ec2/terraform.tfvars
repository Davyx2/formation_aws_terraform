#
#Identity

owner_id                = ""



#provider.tf variables
access_key              = ""
secret_key              = ""
region                  = "eu-west-3"

#
#vpc.tf variables
cidrs                   = "192.168.1.0/24"
availability_zone       = "eu-west-3a"
vpc_tag_name            = "net"
subnet_tag_name         = "Subnet"
igw_tag_name            = "main"
rtb_cidr                = "0.0.0.0/0"
rtb_tag_name            = "MyRtb"


#
#instance.tf variables
ami                     = "ami-0a0d71ff90f62f72a"
key_pair                = ""
size                    = 30
lastname                = ""
instance_type           = "t2.small"
instance_tag_name_1     = "Host1"
instance_tag_name_2     = "Host2"
