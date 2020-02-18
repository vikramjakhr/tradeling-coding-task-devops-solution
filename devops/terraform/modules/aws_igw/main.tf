###########################################
#                   IGW                   #
###########################################
resource "aws_internet_gateway" "this" {
  vpc_id = "${aws_vpc.main.id}"

  tags = "${merge(
    "${var.tags}",
    map(
      "Name", format("%s-igw", var.prefix)
    )
  )}"
}