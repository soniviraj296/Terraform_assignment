resource "aws_vpc" "intuitive_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "intuitive-vpc"
  }
}

resource "aws_subnet" "intuitive_subnet" {
  vpc_id            = aws_vpc.intuitive_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "intuitive-subnet"
  }
}

resource "aws_instance" "intuitive_instance_1" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
  key_name      = "intuitive-key"

  subnet_id                   = aws_subnet.intuitive_subnet.id
  associate_public_ip_address = true

  ebs_block_device {
    device_name           = "/dev/xvda"
    volume_size           = "20"
    volume_type           = "gp3"
    encrypted             = true
    delete_on_termination = true
  }

  tags = {
    "Name" : "intuitive-instance-1"
  }
}

resource "aws_instance" "intuitive_instance_2" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
  key_name      = "intuitive-key"

  subnet_id                   = aws_subnet.intuitive_subnet.id
  associate_public_ip_address = true

  ebs_block_device {
    device_name           = "/dev/xvda"
    volume_size           = "20"
    volume_type           = "gp3"
    encrypted             = true
    delete_on_termination = true
  }

  tags = {
    "Name" : "intuitive-instance-2"
  }
}


resource "aws_s3_bucket" "intuitive_bucket" {
  bucket = "intuitive-bucket"

  tags = {
    Name        = "intuitive bucket"
  }
}
