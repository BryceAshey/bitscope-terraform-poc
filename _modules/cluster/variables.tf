variable "cluster_name" {
    type        = string
    description = "The name of the cluster."
}

variable "node_count" {
    type        = number
    description = "The number of nodes to add. We could make this optional and have another var that takes an array of BMC IDs."
}

variable "vlan_id" {
    type        = number
    default     = 4
    description = "The VLAN ID to use in forming the network."
}

variable "vlan_cidr" {
    type        = string
    default     = "10.0.0.0/24"
    description = "The CIDR to use in building the network."
}
