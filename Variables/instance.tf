# Resource block
resource "aws_instance" "ec2_demo" {
  # Arguments
  # count         = 1
  # for_each      = toset(["t2.micro", "t2.small", "t2.medium"])
  ami           = var.ami_id
  instance_type = var.Instance_size
  key_name      = var.ssh_key_pair
  tags          = var.instance_tags

  # lifecycle {
  # prevent_destroy = true
  # ignore_changes = [ instance_type ]
  #create_before_destroy = true
}

#tags = {
# Name = "PublicInstance"
# }

# tags = merge(
#  var.ec2_tags,
# local.common_tags
#)
# }