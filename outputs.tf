output "instance_id" {
  description = "The ID of the EAI instance."
  value       = concat(alicloud_eais_instance.instance[*].id, [""])[0]
}

output "instance_name" {
  description = "The name of the EAI instance."
  value       = concat(alicloud_eais_instance.instance[*].instance_name, [""])[0]
}

output "instance_status" {
  description = "The status of the EAI instance."
  value       = concat(alicloud_eais_instance.instance[*].status, [""])[0]
}