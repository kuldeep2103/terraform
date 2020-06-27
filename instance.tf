resource "aws_instance" "Web_Server1" {
ami = "ami-098f16afa9edf40be"
instance_type = "t2.micro"
associate_public_ip_address = "true"
subnet_id = "${aws_subnet.public_subnet.id}"
vpc_security_group_ids = ["${aws_security_group.FrontEnd.id}"]
key_name = "devops1"
tags = {
    Name = "Webserver"
  }

}
resource "aws_instance" "database" {
count = "2"
ami = "ami-098f16afa9edf40be"
instance_type = "t2.micro"
subnet_id = "${aws_subnet.private_subnet.id}"
key_name = "devops1"
tags = {
    Name = "dbserver"
  }

}
