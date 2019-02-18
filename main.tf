provider "aws" {
  region  = "us-east-1"
  profile = "lyrebird"
}

resource "aws_dynamodb_table" "lyrebird-tasks" {
  name = "lyrebird-tasks"
  hash_key = "id"

  attribute {
    name = "id"
    type = "S"
  }

  global_secondary_index = []
  read_capacity = 5
  write_capacity = 5
  stream_enabled = false

  lifecycle = {
    ignore_changes = ["read_capacity", "write_capacity"]
  }
}
