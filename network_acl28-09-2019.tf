resource "aws_network_acl" "ankit_ACL" {
  vpc_id = "vpc-0e40f7c71e5cb102f"
tags = {
    Name = "New_ACL"
  }

}

resource "aws_network_acl_rule" "ankit_ACL" {
  network_acl_id = "${aws_network_acl.ankit_ACL.id}"
  rule_number    = 98
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_block = "0.0.0.0/0"
  from_port      = 22
  to_port        = 22
}

resource "aws_network_acl_rule" "ankit_ACL1" {
  network_acl_id = "${aws_network_acl.ankit_ACL.id}"
  rule_number    = 99
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_block = "0.0.0.0/0"
  from_port      = 443
  to_port        = 443
}

resource "aws_network_acl_rule" "ankit_ACL2" {
  network_acl_id = "${aws_network_acl.ankit_ACL.id}"
  rule_number    = 101
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_block = "0.0.0.0/0"
  from_port      = 8080
  to_port        = 8080
}

resource "aws_network_acl_rule" "ankit_ACL3" {
  network_acl_id = "${aws_network_acl.ankit_ACL.id}"
  rule_number    = 102
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_block = "0.0.0.0/0"
  from_port      = 80
  to_port        = 80
}

