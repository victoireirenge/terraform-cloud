provider "aws" {
  region     = "us-east-1"
}



resource "aws_instance" "myec2" {
  ami           = "ami-05548f9cecf47b442"
  instance_type = "t2.micro"
  key_name      = "devops-victoire"
  tags = {
    Name = "ec2_victoire"
  }
  root_block_device {
    delete_on_termination = true
  }
}
