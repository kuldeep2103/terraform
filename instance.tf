resource "aws_instance" "Web_Server1" {
ami = "ami-b73b63a0"
instance_type = "t2.micro"
associate_public_ip_address = "true"
subnet_id = "${aws_subnet.public_subnet.id}"
key_name = "shekhar"
tags {
Name = "webserver"
}


resource "aws_instance" "database1" {
ami = "ami-b73b63a0"
instance_type = "t2.micro"
associate_public_ip_address = "false"
key_name = "shekhar"
tags {
Name = "database"
}
