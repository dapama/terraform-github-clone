
resource "null_resource" "git_clone" {

  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "./scripts/git_clone.sh -t 300"

    environment = {
      REPOSITORY_NAME = var.repository_name
      TAG             = var.tag
    }
  }
}
