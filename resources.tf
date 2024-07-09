resource "aws_s3_bucket" "lab_bucket" {
bucket = local.bucket_name
  tags = {
    "Name" = "labbucket"
    "Description" = "This bucket is for demonstarting the terraform"
  }
}
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
