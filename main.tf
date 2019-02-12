provider "aws" {
  region  = "us-east-1"
  profile = "lyrebird"
}

resource "aws_s3_bucket" "upload-bucket" {
  bucket = "lyrebird-uploads"
  acl    = "private"
}

resource "aws_s3_bucket" "post-bucket" {
  bucket = "lyrebird-completion"
  acl    = "private"
}

# resource "aws_dynamodb_table" "lyrebird-events" {
#   name = "events"
#   read_capacity = 5
#   write_capacity = 5
#   hash_key = "id"
#   range_key = "timestamp"

#   attribute = [
#     {
#       name = "id"
#       type = "S"
#     },
#     {
#       name = "timestamp"
#       type = "N"
#     }]
# }