module "test" {
  for_each = var.ec2
  source = "./test"
}

variable "ec2" {
  default = {
    frontend = {}
      backend = {}
    mysql ={}
  }
}