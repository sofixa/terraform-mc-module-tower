terraform {
  required_providers {
    minecraft = {
      source  = "app.terraform.io/paris-terraform-day/minecraft"
      version = "~> 0.1"
    }
  }
}

provider "minecraft" {
  endpoint = var.endpoint
  api_key = var.api_key
}

resource "minecraft_block" "block1" {
  count = var.height

  x = var.start_x
  y = var.start_y + count.index
  z = var.start_z
  material = var.material
}

resource "minecraft_block" "block2" {
  count = var.height

  x = var.start_x + 1
  y = var.start_y + count.index
  z = var.start_z
  material = var.material
}

resource "minecraft_block" "block3" {
  count = var.height

  x = var.start_x
  y = var.start_y + count.index
  z = var.start_z + 1
  material = var.material
}

resource "minecraft_block" "block4" {
  count = var.height
  x = var.start_x + 1
  y = var.start_y + count.index
  z = var.start_z + 1
  material = var.material
}
