resource "aws_iam_role_policy_attachment" "ec2_role_ssm_policy_attachment" {
  role       = "${var.ec2_instance_role_name}"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
}

resource "aws_iam_role_policy" "ssm_bucket_policy" {
  name = "${var.ssm_s3_policy_name}"
  role = "${var.ec2_instance_role_name}"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "s3:PutObjectAcl",
            "Resource": "arn:aws:s3:::${var.ssm_bucket_path}/*"
        }
    ]
}
EOF
}
