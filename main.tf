provider "local" {}

provider "random" {}

resource "random_pet" "name" {
  length = 10
}

resource "local_file" "demo_file" {
  content  = "Hello from Anoop P! Your random name is ${random_pet.name.id} \n I live in ${var.place}"
  filename = "${path.module}/demo.txt"
}
