###########################################
#                   RTB                   #
###########################################
resource "aws_route_table" "rtb" {
  vpc_id = "${var.vpc_id}"

  tags = "${merge(
    "${var.tags}",
    map(
      "Name", format("%s-rtb", var.prefix)
    )
  )}"
}

###########################################
#                  Route                  #
###########################################
resource "aws_route" "route" {
  route_table_id         = "${aws_route_table.id}"
  destination_cidr_block = "${var.destination_cidr_block}"
  gateway_id             = "${var.gateway_id}"

  timeouts {
    create = "5m"
  }
}

###########################################
#             RTB Assiciation             #
###########################################
resource "aws_route_table_association" "rtb_association" {
  subnet_id      = "${var.subnet_id}"
  route_table_id = "${aws_route_table.route_table_id}"
}  