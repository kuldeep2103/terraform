resource "aws_instance" "Web_Server1" {
ami = "ami-b73b63a0"
instance_type = "t2.micro"
associate_public_ip_address = "true"
subnet_id = "${aws_subnet.public_subnet.id}"
vpc_security_group_ids = ["${aws_security_group.FrontEnd.id}"]
key_name = "gsg-keypair"
tags {
Name = "webserver"
}
}
resource "aws_instance" "database" {
count = "2"
ami = "ami-b73b63a0"
instance_type = "t2.micro"
subnet_id = "${aws_subnet.private_subnet.id}"
key_name = "gsg-keypair"
tags {
Name = "database"
}
}
