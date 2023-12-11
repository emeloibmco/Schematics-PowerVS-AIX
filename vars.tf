variable "ibmcloud_api_key" {
  default     = ""
  description = "API Key to provisioning resources to the account"
}
variable "ibm_region" {
  default     = "us-south"
  description = "description"
}

variable "sshkeyname" {
  default     = ""
  description = "Name of the ssh key to be used"
}

variable "sshkey" {
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
  default     = "21418607-2298-4c09-b367-0544d0fc4030"
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
  default     = ""
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
  
  default     = "us-south-1"
  description = "zone of the region"
}
