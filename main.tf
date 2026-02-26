provider "local" {}

provider "random" {}

resource "random_pet" "name" {
  length = 2
}

resource "local_file" "demo_file" {
  content  = "Hello from HCP Terraform! Your random name is ${random_pet.name.id}
I live in ${var.place}"
  filename = "${path.module}/demo.txt"
}
