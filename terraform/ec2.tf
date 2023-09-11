provider "aws" {
  region = "us-east-1"  # Update with your desired region
}

resource "aws_instance" "jenkins_instance" {
  ami           = "ami-0261755bbcb8c4a84"  # Specify the desired AMI ID
  instance_type = "t2.micro"     # Specify the instance type
  key_name = aws_keypair.new_key

  tags = {
    Name = "JenkinsInstance"
  }

  # Additional configuration like security groups, key_name, etc.
}

