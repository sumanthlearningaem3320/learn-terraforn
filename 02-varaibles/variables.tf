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

variable "mapoffruits"{
  default = {
    apple = 100
    banana= 200
  }
}

output "fruitsappleqyantity" {
  value = var.mapoffruits["apple"]
}

