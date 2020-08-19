variable "aws_temporary_profile" {
  description = "AWS profile name"
}
variable "aws_credentials_path" {
  description = "Path to AWS credentials"
}
variable "github_token" {
  description = "Github actions token that will register the runner"
}
variable "key_name" {
  description = "Name of the SSH key pair generated in Amazon EC2."
}
variable "private_key_path" {
  description = "Path to the private SSH key, used to access the instance."
}
variable "ssh_user" {
  description = "SSH user name to connect to your instance."
  default     = "ubuntu"
}
variable "region" {
  description = "Region of our instance"
  default     = "us-east-2"
}
