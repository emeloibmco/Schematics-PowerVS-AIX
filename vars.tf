variable "ibmcloud_api_key" {
  default     = "cySbCuhe9Dm5-2RCf9n0jz_R3P5eGyWy9aJxh0YMlswK"
  description = "API Key to provisioning resources to the account"
}
variable "ibm_region" {
  default     = "us-south"
  description = "description"
}

variable "sshkeyname" {
  default     = "llave-ssh"
  description = "Name of the ssh key to be used"
}

variable "sshkey" {
  default="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCwjA7FCebg+xe5RlPLGsQDmFt8ShQUce8icxDMAQHKvgYyOogxh5EPc9F493wqrxSDnQNx8ca9XKRDZxuemwpBj7dzDZLgIFw8Bu5CfEAy1dz9+Q8kilccsi5zVpPggCD1Y8O5yLajRAWsa10jvZe3VUfPeJjDh9U0H0/Y84S86+BtXKG9q2HkvYrgO2q5jaLVRW16vY/w2VvH3V43+40JQ6viU5BCRE4BWqxwcTE/LoK+9amaHczVvzw+sVt/15oPl2/YXNgdsm7+DuAdYELBEtRcKONQ5aAiMp453q13huko0CgBauXUgermdJXBc3EGnp4NZ8qrlDLuMWDpy8gJ2/3PsS44Ah3vQoASh4mqilQIG5bx0tj0ujAE3EjWk+b5CJmzv5L5BHr5nLMeEL/8jFq25wZqqgBVcV8+ZBlM/c71OYtZk7qSjr7CcvCukUeArXomLDTZG9fUAvoZ6yL6y4yphR8gweM3Kl5XNL6Q+DDsM84IJUC0Vpp0Oy5qEfc="
  description = "Public ssh key"
}

variable "powerinstanceid" {
  description = "Power Instance associated with the account"
}

variable "imagename" {
  description = "Name of the image key to be used"
  default = "7300-01-02"
}

variable "imageid" {
  default     = "9179c9e3-25d6-4d7f-ac8d-dec45bbd2744"
  description = "Image ID"
}
 
variable "instancename" {
  default = "myinstance"
  description = "Name of the instance"
}

variable "networkname" {
  default = "mypublicnw"
  description = "Name of the network"
}

variable "cidr" {
  default     = "192.168.13.0/24"
  description = "Ejemplo 192.168.12.0/24"
}


variable "memory" {
  type        = number
  default     = 2
  description = "RAM of the Power Virtual Instance"
}

variable "processors" {
  type        = number
  default     = 0.25
  description = "CPUs to assign"
} 
variable "zone"{
  
  default     = "us-south"
  description = "zone of the region"
}
