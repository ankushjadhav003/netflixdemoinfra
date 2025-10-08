provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0bbdd8c17ed981ef9 "
instance_type = "c7i-flex.large"
key_name = "virginia"
vpc_security_group_ids = ["sg-09a58cd49555bda84 "]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
