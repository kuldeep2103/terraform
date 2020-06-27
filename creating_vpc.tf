resource "aws_vpc" "shekhar" {
  cidr_block       = "172.16.0.0/16"

  tags = {
    Name = "AWS_Class"
  }
}
