#################
# EAIS Instance
#################
variable "create_instance" {
  description = "Controls if eais instance should be created"
  type        = bool
  default     = false
}

variable "name" {
  description = "(ForceNew) The name of the instance."
  type        = string
  default     = ""
}

variable "security_group_id" {
  description = "(Required) The ID of the security group."
  type        = string
  default     = ""
}

variable "vswitch_id" {
  description = "(Required) The ID of the vswitch."
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "(Required, ForceNew) The type of the resource. Valid values: eais.ei-a6.4xlarge, eais.ei-a6.2xlarge, eais.ei-a6.xlarge, eais.ei-a6.large, eais.ei-a6.medium."
  type        = string
  default     = "eais.ei-a6.2xlarge"

  validation {
    condition     = contains(["eais.ei-a6.4xlarge", "eais.ei-a6.2xlarge", "eais.ei-a6.xlarge", "eais.ei-a6.large", "eais.ei-a6.medium"], var.instance_type)
    error_message = "Allowed values are eais.ei-a6.4xlarge, eais.ei-a6.2xlarge, eais.ei-a6.xlarge, eais.ei-a6.large or eais.ei-a6.medium."
  }
}

variable "force" {
  description = "Whether to force deletion when the instance status does not meet the deletion conditions. Valid values: true and false."
  type        = bool
  default     = false
}