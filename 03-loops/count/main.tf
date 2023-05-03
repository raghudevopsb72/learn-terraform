resource "null_resource" "null" {
  count = 10
}

resource "null_resource" "fruits" {
  count = length(var.fruits)

  provisioner "local-exec" {
    command = "echo Fruit Name -  ${var.fruits[count.index]}"
  }

}

variable "fruits" {
  default = ["apple", "banana", "orange"]
}

