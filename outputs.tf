
output "imageResizeRepositoryUrl" {
  value = aws_ecr_repository.image_resize_repository.repository_url
}

output "imagesRegistryId" {
  value = aws_ecr_repository.image_resize_repository.registry_id
}
