
# stand up the network layer - note I'm using the defaults of these vars
resource "bitscoperm_vlan" "my_network" {
    vlan_id = var.vlan_id
    cidr    = var.vlan_cidr
}

# stand up the 'cluster' - really just a stateful bucket to attach the nodes to
resource "bitscoperm_cluster" "my_cluster" {
    name = var.name    
}

# roll through the nodes and attach them to the 'cluster' bucket. Assuming some
# method to track state in the mgmt plane these could auto-pick, we could pass
# in specific nodes, or could even use labels/tags like k8s
resource "bitscoperm_node" "my_cluster_nodes" {
    count       = var.node_count
    vlan_id     = bitscoperm_network.my_network.id
    cluster_id  = bitscoperm_cluster.my_cluster.id
}