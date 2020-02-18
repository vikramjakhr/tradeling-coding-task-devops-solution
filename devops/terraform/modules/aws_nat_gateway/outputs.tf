output "arn" {
  value       = "${aws_subnet.subnet.arn}"
  description = "Subnet ARN"
}
output "id" {
  value       = "${aws_subnet.subnet.id}"
  description = "Subnet ID"
}