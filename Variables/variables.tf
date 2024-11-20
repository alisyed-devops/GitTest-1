variable "ami_id" {
  description = "creating EC2 instance"
  type        = string
  default     = "ami-0866a3c8686eaeeba"
}

variable "Instance_size" {
  description = "EC2 Size"
  type        = string
  default     = "t2.micro"
}

variable "ssh_key_pair" {
  description = "ssh key pair to use when creating the EC2 instance"
  type        = string
  default     = "AlisKey083124"
}

variable "instance_tags" {
  description = "tags to used when creating teh EC2 instance"
  type        = map(string)
  default = {
    "Name"        = "PublicInstance"
    "Environment" = "Development"
  }
}