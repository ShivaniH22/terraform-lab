output "vpc_arn" {
description = "ARN OF VPC"
value = aws_vpc.tf_vpc.arn 
}

output "vpc_id" {
description = "ID OF VPC"
value = aws_vpc.tf_vpc.id 
}