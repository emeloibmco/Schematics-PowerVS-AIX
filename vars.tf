variable "ibmcloud_api_key" {
  default     = ""
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
  default=""
  description = "Public ssh key"
}

variable "powerinstanceid" {
  default = ""
  description = "Power Instance associated with the account"
}

variable "imagename" {
  description = "Name of the image key to be used"
  default = "7300-01-02"
}

variable "imageid" {
  default     = "7d16f6ff-6137-4343-834a-0090182b18fc"
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
