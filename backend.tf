terraform {
backend "s3" {
bucket = "use-your-backet-name"
key = "class/us-east-1/virginia/dev/infrastructure.tfstate"
region = "us-east-1"
  }
}
