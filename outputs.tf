output "role_name" {
  value       = "${module.eks_efs_provisioner_iam_role.role_name}"
  description = "The name of the created role"
}

output "role_id" {
  value       = "${module.eks_efs_provisioner_iam_role.role_id}"
  description = "The stable and unique string identifying the role"
}

output "role_arn" {
  value       = "${module.eks_efs_provisioner_iam_role.role_arn}"
  description = "The Amazon Resource Name (ARN) specifying the role"
}

output "role_policy" {
  value       = "${module.eks_efs_provisioner_iam_role.role_policy}"
  description = "The Amazon Resource Name (ARN) specifying the role"
}
