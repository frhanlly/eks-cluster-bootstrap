output "id_subnet_pub1" {
  value = aws_subnet.public_1a.id
}


output "id_subnet_pub2" {
  value = aws_subnet.public_1b.id
}


output "id_subnet_private1" {
  value = aws_subnet.priv_1a.id
}


output "id_subnet_private2" {
  value = aws_subnet.priv_1b.id
}
