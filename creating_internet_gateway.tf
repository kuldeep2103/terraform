resource "aws_internet_gateway" "intgw" {
  vpc_id = "${aws_vpc.shekhar.id}"

}

