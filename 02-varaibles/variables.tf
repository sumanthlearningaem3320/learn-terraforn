variable "sample1" {
  default = 10
}

output "sample"{
  value = var.sample1
}

variable "list" {
  default = ["apple","banana","orange"]
}
output fruitslist{
  value = var.list[2]
}