resource "aws_instance" "example_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t3.micro"

  tags = {
    Name = "hrllo world"
  }
}