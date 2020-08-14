provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami = "ami-0bbe28eb2173f6167"
  instance_type = "t2.micro"

   user_data = <<-EOF
              #!/bin/bash
              apt-get update
              mkdir actions-runner && cd actions-runner
              curl -O -L https://github.com/actions/runner/releases/download/v2.272.0/actions-runner-linux-x64-2.272.0.tar.gz
              tar xzf ./actions-runner-linux-x64-2.272.0.tar.gz
              EOF

  tags = {
    Name = "dvc-bench-runner"
  }
}
