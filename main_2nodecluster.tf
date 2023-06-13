terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.11.1"  # Update with the desired version
    }
  }
}

provider "oci" {
  tenancy_ocid       = "<TENANCY_OCID>"
  user_ocid          = "<USER_OCID>"
  fingerprint       = "<API_KEY_FINGERPRINT>"
  private_key_path   = "<PATH_TO_PRIVATE_KEY>"
  region             = "<REGION>"
}

resource "oci_database_db_system" "oracle_db" {
  availability_domain = "<AVAILABILITY_DOMAIN>"
  compartment_id      = "<COMPARTMENT_OCID>"
  display_name        = "oracle-db"
  shape               = "VM.Standard2.2"
  ssh_public_keys     = ["<SSH_PUBLIC_KEY>"]
  vm_cluster_id       = "<VM_CLUSTER_OCID>"
  node_count          = 2
  db_home {
    db_version          = "12.2.0.1"
    display_name        = "oracle-db-home"
    db_system_id        = oci_database_db_system.oracle_db.id
  }
}

resource "oci_database_db_node" "oracle_db_node" {
  db_home_id              = oci_database_db_system.oracle_db.db_home.0.id
  availability_domain     = "<AVAILABILITY_DOMAIN>"
  compartment_id          = "<COMPARTMENT_OCID>"
  hostname                = "oracle-db-node"
  vm_cluster_id           = "<VM_CLUSTER_OCID>"
  vnic_id                 = "<VNIC_OCID>"
}
