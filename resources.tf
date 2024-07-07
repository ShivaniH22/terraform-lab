

resource "aws_s3_bucket" "datastore" {
  bucket = "tflabbucket"
  tags = {
     "Name" = "tflabbucket"
     "Department" = "IT"
  }
}

resource "aws_s3_object" "object" {
  bucket = "tflabbucket"
  key = "tf-main-file"
  source = "./main.tf"
}
