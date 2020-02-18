###########################################
#                    NAT                  #
###########################################
resource "aws_nat_gateway" "this" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${var.subnet_id}"

  tags = "${merge(
    "${var.tags}",
    map(
      "Name", format("%s-nat", var.prefix)
    )
  )}"
}


###########################################
#                    EIP                  #
###########################################
resource "aws_eip" "nat" {
  vpc = true

  tags = "${merge(
    "${var.tags}",
    map(
      "Name", format("%s-nat-eip", var.prefix)
    )
  )}"
}