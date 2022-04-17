
output "network_id" {
    value = bitscoperm_network.my_network.id
}

output "cluster_id" {
    value = bitscoperm_cluster.my_cluster.id
}

# assume the bitscoperm provider's node resource returns serial, BMC ID, etc. for each node.
output "nodes" {
    value = bitscoperm_node.my_cluster_nodes[*]
}