variable "instance" {
  default = ["frontend", "backend", "mysql"]
}
resource "null_resource" "sample1" {
  count = length(var.instance)
  //value = var.instance[count.index]
}

variable "instance1" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.micro"
    }
    backend = {
      name = "backend"
      instance_type = "t3.micro"
    }
    mysql = {
      name = "mysql"
      instance_type = "t3.micro"
    }
  }
}

resource "null_resource" "sample2" {
  for_each = var.instance1
  //count = length(var.instance)
  //value = var.instance[count.index]
}
