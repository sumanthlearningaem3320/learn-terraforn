variable "instance" {
  default = ["frontend", "backend", "mysql"]
}
output "instance" {
  count = length(var.instance)
  value = var.instance[count.index]
}