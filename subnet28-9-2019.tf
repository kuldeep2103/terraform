resource "aws_subnet" "private_subnet" {
  vpc_id     = "${aws_vpc.ANKIT_VPC.id}"
  cidr_block = "10.0.1.0/24"

}
resource "aws_subnet" "Public_subnet" {
  vpc_id     = "${aws_vpc.ANKIT_VPC.id}"
  cidr_block = "10.0.2.0/24"

}
