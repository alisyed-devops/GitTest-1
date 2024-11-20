# Resource block
resource "aws_instance" "ec2_demo" {
  # Arguments
  # count         = 3
  for_each      = toset(["t2.micro", "t2.small", "t2.medium"])
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = each.key
  key_name      = "AlisKey083124"

  lifecycle {
    # prevent_destroy = true
    # ignore_changes = [ instance_type ]
    create_before_destroy = true
  }

  tags = {
    Name = "PublicInstance"
  }

  # tags = merge(
  #  var.ec2_tags,
  # local.common_tags
  #)
}