#resource "aws_instance" "instances" {
#  for_each = var.components
#  ami           = var.ami
#  instance_type = each.value["instance_type"]
#  vpc_security_group_ids = var.sg_id
#  tags = {
#    Name = "${each.value["name"]}-${var.env}"
#  }
#}
#
#resource "aws_route53_record" "dev_route53" {
#  for_each = var.components
#  zone_id = var.zone_id
#  name    = "${each.value["name"]}-${var.env}"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.instances[each.value["name"]].private_ip]
#}

module "expense" {
  for_each = var.components
  source = "./module"
  ami      = var.ami
  env      = var.env
  instance_type = each.value["instance_type"]
  name = each.value["name"]
  sg_id = var.sg_id
  zone_id = var.zone_id
}

