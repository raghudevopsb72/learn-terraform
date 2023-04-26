data "aws_security_group" "selected" {
  name = "allow-all1"
}

output "security_group_id" {
  value = try(data.aws_security_group.selected.id, null)
}

