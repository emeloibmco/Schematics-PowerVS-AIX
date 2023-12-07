resource "ibm_pi_key" "ssh_key" {
  pi_cloud_instance_id = var.powerinstanceid
  pi_key_name          = var.sshkeyname
  pi_ssh_key           = var.sshkey
}


resource "ibm_pi_instance" "test-instance" {
    pi_memory             = var.memory
    pi_processors         = var.processors
    pi_instance_name      = var.instancename
    pi_proc_type          = "shared"
    pi_image_id           = 2582fbf5-1e58-4a0a-88d6-1fcb65289cdf
    pi_key_pair_name      = ibm_pi_key.key.key_id
    pi_sys_type           = "s922"
    pi_cloud_instance_id  = "51e1879c-bcbe-4ee1-a008-49cdba0eaf60"
    pi_pin_policy         = "none"
    pi_health_status      = "WARNING"
    pi_network {
      network_id = 7adb57fd-0f43-4ab8-981e-36bf62c3592b
    }
}
