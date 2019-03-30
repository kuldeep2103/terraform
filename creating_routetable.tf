resource "aws_route" "internet_access" {
  route_table_id         = "${aws_vpc.shekhar.main_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.intgw.id}"
}

