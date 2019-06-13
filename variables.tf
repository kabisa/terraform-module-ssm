variable "ssm_s3_policy_name" {
  default = "ssm_s3_policy"
}

variable "ec_instance_role_arn" {
  default = "the instance role which is attached to the instance profile"
}

variable "ssm_bucket_path" {
  default = "bucket name and/or path where the logging is saved"
}
