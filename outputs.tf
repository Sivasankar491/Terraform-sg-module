output "vpc_id" {
    value = data.aws_vpc.default.id

}

output "id" {
    value = aws_security_group.main.id
}