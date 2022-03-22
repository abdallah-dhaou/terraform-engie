variable "env" {
  type = map
  default = {
      dev = "dev env"
      qual = "qual env"
      prod = "prod env"
  }
}
