variable "instance_name" {
  description = "Value of the EC2 instance's Name tag."
  type        = string
  default     = "Aws-flask-app-server"
}

variable "instance_type" {
  description = "The EC2 instance's type."
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "The name of the key pair to use for the EC2 instance."
  type        = string
  default     = "terraform-key.pub"
}

variable "public_key_path" {
  description = "The path to the public key file."
  type        = string
  default     = "/mnt/c/Users/LAVANYA SHARMA/Downloads/terraform-key.pub"
}
