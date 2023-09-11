output "private_ips" {
  value = aws_instance.loops[*].private_ip
}