terraform {
  backend "s3" {
    encrypt = true
    bucket  = "statebuckettf"
    region  = "us-east-1"
    key     = "tfbackend.tfstate"
    profile = "myprofile"
  }
}
