terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }

  required_version = ">= 1.0"
}

provider "local" {
}

provider "random" {
}

resource "local_file" "my_pet" {
  filename = "pets.txt"
  content  = "I hate pets!"
}

resource "random_pet" "my-pet" {
  prefix    = "Miss"
  separator = "."
  length    = 1
}