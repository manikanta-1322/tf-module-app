locals {
  project_name = lookup(var.tags, "project_name", null)
  prefix       = "${var.env}-${local.project_name}"
  name         = "${var.env}-${local.project_name}-${var.component}"
  dns_name     = var.dns_name == null ? "${var.component}-${var.env}" : var.dns_name
}
