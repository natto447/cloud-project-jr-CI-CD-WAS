resource "aws_instance" "web-instance-projet" {
    ami           = "ami-08d7aabbb50c2c24e" 
    instance_type = "t3.micro"

    subnet_id     = aws_subnet.public.id
    vpc_security_group_ids = [aws_security_group.project-jr.id]

    key_name = "tarefa-30-dias"

    tags = {
        Name = "${var.project_name}-instance"
    }
}