resource "aws_instance" "workstation" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.small"
  tags = {
    "Name" = "workstation"
  }
}

output "private_ip" {
  value = aws_instance.workstation.private_ip
}
