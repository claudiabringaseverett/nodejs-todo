resource "aws_key_pair" "new_keypair" {
  key_name   = "new_key" # The name of the key pair in AWS
  public_key = file("/Users/nitinkumar/Downloads/new_key") # Path to your public key file
}