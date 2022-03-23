#################
# EAIS Instance
#################
variable "force" {
  description = "Whether to force deletion when the instance status does not meet the deletion conditions. Valid values: true and false."
  type        = bool
  default     = false
}

