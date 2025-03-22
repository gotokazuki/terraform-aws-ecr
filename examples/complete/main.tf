module "ecr" {
  for_each = toset([
    "ecr_repository_name",
  ])

  source = "../../"

  repository_name              = each.key
  image_tag_mutability         = "MUTABLE"
  force_delete                 = true
  principals_for_cross_account = []
}
