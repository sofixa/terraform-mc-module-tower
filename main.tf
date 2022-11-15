terraform {
  required_providers {
    mc = {
      source  = "app.terraform.io/atodorov-hashi/mc"
      version = "0.1.0"
    }
  }
}

provider "mc" {
  endpoint = var.endpoint
  api_key = var.api_key
}

resource "mc_block" "block1" {
  count = var.height

  x = var.start_x
  y = var.start_y + count.index
  z = var.start_z
  material = var.material
}

resource "mc_block" "block2" {
  count = var.height

  x = var.start_x + 1
  y = var.start_y + count.index
  z = var.start_z
  material = var.material
}

resource "mc_block" "block3" {
  count = var.height

  x = var.start_x
  y = var.start_y + count.index
  z = var.start_z + 1
  material = var.material
}

resource "mc_block" "block4" {
  count = var.height
  x = var.start_x + 1
  y = var.start_y + count.index
  z = var.start_z + 1
  material = var.material
}
