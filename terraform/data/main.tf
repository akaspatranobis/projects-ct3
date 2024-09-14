// data "aws_ami" "ubuntu" {
//   most_recent = true

//   filter {
//     name   = "name"
//     values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
//   }

//   filter {
//     name   = "virtualization-type"
//     values = ["hvm"]
//   }

//   owners = ["099720109477"] # Canonical
// }

// resource "aws_instance" "web" {
//   ami           = data.aws_ami.ubuntu.id
//   instance_type = "t2.micro"

//   tags = {
//     Name = "HelloWorld"
//   }
// }

data "aws_security_group" "selected" {
    name = "allow-all"
}

output "sg" {
    value = data.aws_security_group.selected
}