output "vpc" {
  value = aws_vpc.intuitive_vpc.id
}

output "subnet" {
  value = aws_subnet.intuitive_subnet.id
}

output "instance-1" {
  value = aws_instance.intuitive_instance_1.public_ip
}

output "instance-2" {
  value = aws_instance.intuitive_instance_2.public_ip
}

output "ebs-1" {
  value = aws_instance.intuitive_instance_1.ebs_block_device
}

# output "ebs-2" {
#   value = aws_instance.intuitive_instance_2.ebs_block_device.volume_id
# }

output "s3" {
  value = aws_s3_bucket.intuitive_bucket.bucket
}