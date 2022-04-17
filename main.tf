
module "my_new_cluster" {
    source          = "_modules/cluster"
    cluster_name    = "geekdojo-cluster-dev"
    node_count      = 12
    # not passing in vlan attributes - using defaults    
}