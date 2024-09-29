variable "ami_info" {
    type = object({
      id = string
      username = string
    })
}

variable "template_details" {
    type = object({
      name = string
      instance_type = string
      key_name = string
      script_path = string
      security_group_ids = list(string)
      associate_public_ip_address = bool

    })
  
}

variable "scaling_details" {
  type = object({
    min_size = number
    max_size = number
    subnet_ids = list(string)
  })
  
}

variable "lb_details" {
  type = object({
    type = string
    internal = bool
    security_group_ids = list(string)
    subnet_ids = list(string)
    vpc_id = string
    application_port = number
    port = number

  })
  
}
  
