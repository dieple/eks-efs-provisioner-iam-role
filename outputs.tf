output "role_name" {
  value       = "${module.eks_efs_provisioner_iam_role.name}"
  description = "The name of the created role"
}

output "role_id" {
  value       = "${module.eks_efs_provisioner_iam_role.id}"
  description = "The stable and unique string identifying the role"
}

output "role_arn" {
  value       = "${module.eks_efs_provisioner_iam_role.arn}"
  description = "The Amazon Resource Name (ARN) specifying the role"
}

output "role_policy" {
  value       = "${module.eks_efs_provisioner_iam_role.policy}"
  description = "The Amazon Resource Name (ARN) specifying the role"
}
