variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
    default = {
        project = "expense"
        environment= "dev"
        terraform = "true"
    }
  
}

variable "zone_id" {
  default = "Z06327003DEZYOOK6T7EB"
}

variable "domain_name" {
  default = "daws82s.tech"
}