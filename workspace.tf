terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.0"
    }
  }
}

## all images suze image ami-07dff4fe919dee33e _={ ubuntu ami-053b0d53c279acc90 } . [amzone  ami-01c647eace872fc02 ]

provider "aws" {
  region     = "us-east-1"
  access_key = "AKsR"
  secret_key = "1p6KVDIQR5OxZ"
}

terraform {
  backend "s3" {
    bucket     = "mackbucket.com"
    key        = "path/to/my/key"
    region     = "us-east-1"
    access_key = "AKIARAZOXYDNASTP3X4R"
    secret_key = "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"
  }
}
############## links pan
resource "aws_instance" "web_server" {
  ami           = "ami-07dff4fe919dee33e"
  instance_type = "t3.micro"
  
  tags = {
    Name = "stage"
  }
}


resource "aws_instance" "db" {
  ami           = "ami-07dff4fe919dee33e"
  instance_type = "t2.small"
  
  tags = {
    Name = "prod"
  }
}
