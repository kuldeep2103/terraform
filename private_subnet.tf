resource "aws_subnet" "private_subnet" {
  vpc_id     = "${aws_vpc.shekhar.id}"
  cidr_block = "172.16.2.0/24"

  tags {
    Name = "Private_DB"
  }
}

