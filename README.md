# Ora12_2_0_1_tf_OCI
To deploy an Oracle Database 13c instance on Oracle Cloud Infrastructure (OCI) using Terraform

ensure to replace the placeholders (<TENANCY_OCID>, <USER_OCID>, <API_KEY_FINGERPRINT>, <PATH_TO_PRIVATE_KEY>, <REGION>, <AVAILABILITY_DOMAIN>, <COMPARTMENT_OCID>, <SSH_PUBLIC_KEY>, <VM_CLUSTER_OCID>, <VNIC_OCID>) 
  
    oci_database_db_system: This resource defines the Oracle Database system instance.
  It specifies the availability domain, compartment, display name, shape, SSH public key for accessing the instance,
  VM cluster ID, and the database home configuration.
    
    oci_database_db_node: This resource defines the individual database node within the Oracle Database system.
  It specifies the database home ID, availability domain, compartment, hostname, VM cluster ID, and the VNIC ID for network connectivity.
