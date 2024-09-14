resource "aws_instance" "test" {
    ami = "ami-0533f2ba8a1995cf9"
    instance_type = var.instance_type == "t2*" ? "t3.micro" :  var.instance_type
}

variable "instance_type" {}



// if u get a machine of any t2 family create one or else create t3.micro