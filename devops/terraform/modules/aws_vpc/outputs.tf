output "arn" {
  value       = "${aws_vpc.this.arn}"
  description = "VPC ARN"
}
output "id" {
  value       = "${aws_vpc.this.id}"
  description = "VPC ID"
}
output "cidr_block" {
  value       = "${aws_vpc.this.cidr_block}"
  description = "VPC CIDR"
}