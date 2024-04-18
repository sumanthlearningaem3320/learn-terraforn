variable "instance" {
  default = ["frontend", "backend", "mysql"]
}
resource "null_resource" "sample1" {
  count = length(var.instance)
  //value = var.instance[count.index]
}