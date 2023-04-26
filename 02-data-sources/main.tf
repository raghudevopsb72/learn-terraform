//data "aws_security_group" "selected" {
//  name = "allow-all1"
//}

//output "security_group_id" {
//  value = coalesce(data.aws_security_group.selected.id, "")
//}

data "aws_security_groups" "test" {}

data "aws_security_group" "single" {
  count = length(data.aws_security_groups.test.ids)
  id = data.aws_security_groups.test.ids[count.index]
}

output "all_sg" {
  value = data.aws_security_groups.test
}


output "single" {
  value = data.aws_security_group.single
}