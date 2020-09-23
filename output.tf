output "public_ip" {
  value = aws_instance.this.*.public_ip
}

output "public_DNS" {
  value = aws_instance.this.*.public_dns
}