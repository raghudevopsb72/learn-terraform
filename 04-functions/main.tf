## Convert lower case to upper case
variable "sample" {
  default = "abcxyz"
}

output "sample" {
  value = upper(var.sample)
}

variable "sample1" {
  default = ["abc", "xyz"]
}

## Print first value like var.sample1[0] with a function

output "sample1" {
  value = element(var.sample1, 0)
}

