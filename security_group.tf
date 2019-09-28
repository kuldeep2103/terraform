resource "aws_security_group" "Web_tera" {
  name = "Web_tera"

  description = "ONLY HTTP CONNECTION INBOUD"
  vpc_id = "vpc-0e40f7c71e5cb102f"

  ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
tags = {
    Name = "Web_tera"
  }
}
