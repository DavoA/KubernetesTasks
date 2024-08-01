resource "aws_instance" "nfs_server" {
  ami           = "ami-00db8dadb36c9815e"
  instance_type = "t2.micro"

  tags = {
    Name = "NFS-Server"
  }

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y nfs-kernel-server
              mkdir -p /srv/nfs
              echo "/srv/nfs *(rw,sync,no_subtree_check)" >> /etc/exports
              systemctl restart nfs-kernel-server
              EOF
}

resource "aws_security_group" "example" {
  name        = "nfs_security_group"
  description = "Security group allowing NFS traffic"

  ingress {
    from_port   = 2049
    to_port     = 2049
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 2049
    to_port     = 2049
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

