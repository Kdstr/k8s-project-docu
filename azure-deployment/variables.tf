variable "location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  default     = "westeurope"
}

variable "clustername" {
  description = "The name of the cluster, should be sort of unique"
}

variable "master_count" {
  description = "Number of masters of the deployment"
  default = 1
}

variable "worker_count" {
  description = "Number of nodes of the deployment"
  default = 1
}

variable "storage_account_tier" {
  description = "Defines the Tier of storage account to be created. Valid options are Standard and Premium."
  default     = "Standard"
}

variable "storage_replication_type" {
  description = "Defines the Replication Type to use for this storage account. Valid options include LRS, GRS etc."
  default     = "LRS"
}

variable "instance_size" {
  description = "Specifies the size of the virtual machine."
  default     = "Standard_A2_v2"
}

variable "bastion_image_publisher" {
  description = "name of the publisher of the image (az vm image list)"
  default     = "Canonical" #"CoreOS"
}

variable "bastion_image_offer" {
  description = "the name of the offer (az vm image list)"
  default     = "UbuntuServer" #"CoreOS"
}

variable "bastion_image_sku" {
  description = "image sku to apply (az vm image list)"
  default     = "16.04-LTS" #"Stable"
}

variable "bastion_image_version" {
  description = "version of the image to apply (az vm image list)"
  default     = "latest" #"1520.9.0"
}

variable "admin_username" {
  default = "rke"
}

variable "ssh_public_key" {
  description = "Node public ssh key"
}

variable address_space {
  default = "10.0.0.0/16"
}

variable nodes_subnet {
  default = "10.0.1.0/24"
}
