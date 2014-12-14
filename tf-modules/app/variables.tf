variable access_key { }
variable secret_key { }
variable region { default = "eu-west-1" }
variable "amis" {
    default = {
        eu-west-1 = "ami-fd6cbd8a"
    }
}
variable instance_type { default = "t2.micro" }
