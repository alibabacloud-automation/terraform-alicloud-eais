resource "alicloud_eais_instance" "instance" {
  count             = var.create_instance ? 1 : 0
  instance_type     = var.instance_type
  instance_name     = var.name
  security_group_id = var.security_group_id
  vswitch_id        = var.vswitch_id
  force             = var.force
}