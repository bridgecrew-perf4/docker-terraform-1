variable "myamiid"{
type = "string"
default = "ami-0affd4508a5d2481b"
}
variable "mykeypair"{
type = "string"
default = "virginia"
}
variable "publicsubnet1"{
type = string
}
variable "privatesubnet1"{
type = string
}
variable "websg"{
type = "string"
}
variable "userdata"{
type = "string"
}
variable "tags"{
type = "map"
}
