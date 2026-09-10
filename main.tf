terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

resource "local_file" "jenkins_demo" {
  filename = "jenkins-demo.txt"
  content  = "Terraform executed successfully from Jenkins!"
}
