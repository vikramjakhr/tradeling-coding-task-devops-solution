output "arn" {
  value       = "${aws_subnet.this.arn}"
  description = "Subnet ARN"
}
output "id" {
  value       = "${aws_subnet.this.id}"
  description = "Subnet ID"
}