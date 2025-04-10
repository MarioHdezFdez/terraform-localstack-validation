provider "aws" {
  access_key = "test"
  secret_key = "test"
  region     = "us-east-1"

  endpoints {
    s3 = "http://192.168.0.19:4566"
  }

  skip_credentials_validation = true
  skip_requesting_account_id  = true
}

resource "aws_s3_bucket" "example" {
  bucket = "updated-bucket-name" # Prueba para activar el workflow
}
