terraform {
  backend "s3" {
    bucket = "sctp-ce8-tfstate"     # Terraform State bucket name
    key    = "coaching18-group" # Name of your tfstate file
    region = "ap-southeast-1"       # Terraform State bucket region
  }
}