output "vpc_id" {
  value = aws_vpc.this.id
}

output "subnet_ids" {
  value = [aws_subnet.this_one.id,aws_subnet.this_two.id]
}