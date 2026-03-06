output "file_name" {
  description = "Name of the file created by Terraform"
  value       = local_file.hello.filename
}

output "file_content" {
  description = "Content inside the file"
  value       = var.file_content
}
