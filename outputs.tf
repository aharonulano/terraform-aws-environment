output "public_instance_ip" {
  description = "Public IP of the public EC2 instance"
  value = aws_instance.public_instance.public_ip
}
