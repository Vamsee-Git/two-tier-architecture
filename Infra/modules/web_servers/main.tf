resource "aws_instance" "web" {
  count                = var.instance_count
  ami                  = var.ami_id
  instance_type        = var.instance_type
  subnet_id            = element(var.subnets, count.index)
  vpc_security_group_ids = [var.security_group]

  tags = {
    Name = "${var.name}-web-${count.index}"
  }
}
