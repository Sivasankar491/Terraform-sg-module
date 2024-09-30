resource "aws_security_group" "main" {
  name        = local.final_name
  description = "Allow TLS inbound traffic and all outbound traffic"
  # vpc_id      = data.aws_vpc.default.id
  vpc_id      = var.vpc_id

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = local.final_name
  }
}

