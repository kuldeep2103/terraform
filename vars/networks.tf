provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  #shared_credentials_file = "${var.credentialsfile}"
  region     = "${var.region}"
}
resource "aws_vpc" "MyVpc" {
    cidr_block = "${var.Full_CIDR}"
   #### this 2 true values are for use the internal vpc dns resolution
    enable_dns_support = true
    enable_dns_hostnames = true
    tags {
      Name = "My terraform vpc"
    }
}
