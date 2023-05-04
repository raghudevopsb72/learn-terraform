resource "aws_instance" "workstation" {
  ami           = "unknown"
  instance_type = "unknown"
}

output "private_ip" {
  value = aws_instance.workstation.private_ip
}
