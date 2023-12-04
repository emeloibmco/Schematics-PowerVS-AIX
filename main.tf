
resource "ibm_pi_image" "powerimages"{
  pi_image_name         = var.imagename
  pi_image_id           = var.imageid
  pi_cloud_instance_id  = var.powerinstanceid
}

data "ibm_pi_image" "ds_image" {
  depends_on            = [ibm_pi_image.powerimages]
  pi_image_name         = var.imagename
  pi_cloud_instance_id  = var.powerinstanceid
}

resource "ibm_pi_key" "ssh_key" {
  pi_cloud_instance_id = var.powerinstanceid
  pi_key_name          = var.sshkeyname
  pi_ssh_key           = var.sshkey
}

resource "ibm_pi_network" "power_networks" {
  count                = 1
  pi_network_name      = var.networkname
  pi_cloud_instance_id = var.powerinstanceid
  pi_network_type      = "pub-vlan"
  pi_cidr              = var.cidr
  pi_dns               = ["127.0.0.1"]
}

data "ibm_pi_public_network" "ds_network" {
  depends_on      = [ibm_pi_network.power_networks]
  pi_cloud_instance_id = var.powerinstanceid
}

resource "ibm_pi_volume" "volume"{
  pi_volume_size       = 10
  pi_volume_name       = "test-volume"
  pi_volume_type       = "tier3"
  pi_volume_shareable  = true
  pi_cloud_instance_id = var.powerinstanceid
}

resource "ibm_pi_instance" "test-instance" {
    pi_memory             = var.memory
    pi_processors         = var.processors
    pi_instance_name      = var.instancename
    pi_proc_type          = "shared"
    pi_image_id           = data.ibm_pi_image.ds_image.id
    pi_network {
      network_id = data.ibm_pi_public_network.ds_network.id
    }
    pi_key_pair_name      = ibm_pi_key.ssh_key.key_id
    pi_sys_type           = "s922"
    pi_cloud_instance_id  = var.powerinstanceid
    pi_volume_ids         = [ibm_pi_volume.volume.volume_id]
}
