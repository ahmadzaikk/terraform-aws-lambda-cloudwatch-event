variable "enabled" {
  default     = true
  description = "Set to `false` to prevent the module from creating any resources"
  type        = bool
}
variable "role" {
  type = string
  description = "(optional) describe your variable"
  default = ""
}


variable "function_name" {
  default = ""
}

variable "handler" {
  default = ""
}

variable "description" {
  default = ""
}

variable "tags" {
  type = map
  default = {}

}


variable "timeout" {
  type = string
  description = "(optional) describe your variable"
  default = "420"
}
