resource "aws_instance" "this" {
  count                   = var.INSTANCE_COUNT
  ami                     = var.AMI_ID
  instance_type           = var.INSTANCE_TYPE
  subnet_id               = var.SUBNET_ID
  vpc_security_group_ids  = var.SECURITY_GROUPS_ID
  key_name                = var.KEY_NAME

  tags = {
    Name = "${format("${var.NAME}-%03d", count.index+1)}"
  }
}