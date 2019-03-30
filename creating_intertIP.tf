resource "aws_eip" "elistic_eip" {
  vpc      = true
  depends_on = ["aws_internet_gateway.intgw"]
}
