ami = "ami-0f3c7d07486cad139"
sg_id = ["sg-0a85ba565da04fafd"]
zone_id = "Z0538547HINC84GGOI9H"
env= "dev"
components = {
  frontend = {
    name = "frontend"
    instance_type = "t3.micro"
  }
  backend = {
    name = "backend"
    instance_type = "t3.micro"
  }
  mysql = {
    name          = "mysql"
    instance_type = "t3.micro"
  }
}