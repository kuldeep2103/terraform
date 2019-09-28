resource "aws_vpc" "ANKIT_VPC" {
  cidr_block       = "10.0.0.0/16"
#instance_tenancy = "dedicated"
enable_dns_support = true
enable_dns_hostnames = true

  tags = {
    Name = "ANKIT_VPC"
  }
}
