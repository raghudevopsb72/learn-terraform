resource "aws_instance" "workstation" {}

output "private_ip" {
  value = aws_instance.workstation.private_ip
}
