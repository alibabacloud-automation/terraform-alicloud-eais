output "instance_id" {
  value = concat(alicloud_eais_instance.instance.*.id, [""])[0]
}

output "instance_name" {
  value = concat(alicloud_eais_instance.instance.*.instance_name, [""])[0]
}

output "instance_status" {
  value = concat(alicloud_eais_instance.instance.*.status, [""])[0]
}