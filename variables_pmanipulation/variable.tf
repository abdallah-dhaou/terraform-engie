variable "total_instance" {
  type        = number
  default     = 3
  description = "Total Number of EC2 instances"
}


variable "users" {
  type    = list(any)
  //default = ["Pierre", "Fred", "Laura"]
  default = [ "Fred", "Laura"]
}