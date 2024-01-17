terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = ">= 1.60.1"
    }
  }
}

# Configure the IBM Provider
provider "ibm" {
  region = var.ibm_region
  ibmcloud_api_key = var.ibmcloud_api_key
  zone = var.zone
  #timeout = "15m" # Set a higher timeout value as needed
}
