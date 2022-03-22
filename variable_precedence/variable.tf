variable "tag_name" {
  type = string
  default = "app1-dev"
  description = "The name of my application"

  validation {
    condition = length(var.tag_name) > 5
    error_message = "The lenght of this variable should be > 5."
  }
}