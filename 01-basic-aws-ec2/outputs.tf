output "ec2_public_ip" {
  description = "EC2'nin Public IP adresi"
  value = aws_instance.basic_ec2.public_ip
}

output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value = aws_instance.basic_ec2.id
}