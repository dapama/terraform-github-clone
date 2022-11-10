
resource "null_resource" "git_clone" {
  provisioner "local-exec" {
    command = "./scripts/git_clone.sh -t 300"
    interpreter = ["bash"]

    environment = {
      REPOSITORY_NAME = var.repository_name
      TAG             = var.tag
    }
  }
}