##############################################################
#This module allows the creation of an AKS cluster
##############################################################


#Output for the AKS module with RBAC enabled

output "KubeName" {
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.name
}

output "KubeLocation" {
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.location
}

output "KubeRG" {
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.resource_group_name
}

output "KubeVersion" {
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.kubernetes_version
}


output "KubeId" {
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.id
}


output "KubeFQDN" {
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.fqdn
}

output "KubeAdminCFGRaw" {
  sensitive                                 = true
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.kube_admin_config_raw
}


output "KubeAdminCFG" {
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.kube_admin_config
}

output "KubeAdminCFG_UserName" {
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.kube_admin_config.0.username
}

output "KubeAdminCFG_HostName" {
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.kube_admin_config.0.host
}


output "KubeAdminCFG_Password" {
  sensitive                                 = true
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.kube_admin_config.0.password
}


output "KubeAdminCFG_ClientKey" {
  sensitive                                 = true
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.kube_admin_config.0.client_key
}


output "KubeAdminCFG_ClientCertificate" {
  sensitive                                 = true
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.kube_admin_config.0.client_certificate
}

output "KubeAdminCFG_ClusCACert" {
  sensitive                                 = true
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.kube_admin_config.0.cluster_ca_certificate
}


output "KubeControlPlane_SAI" {
  sensitive                                 = true
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.identity
}

output "KubeControlPlane_SAI_PrincipalId" {
  sensitive                                 = true
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.identity[0].principal_id
}

output "KubeControlPlane_SAI_TenantId" {
  sensitive                                 = true
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.identity[0].tenant_id
}

output "KubeKubelet_UAI" {
  sensitive                                 = true
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.kubelet_identity
}

output "KubeKubelet_UAI_ClientId" {
  sensitive                                 = true
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.kubelet_identity[0].client_id
}

output "KubeKubelet_UAI_ObjectId" {
  sensitive                                 = true
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.kubelet_identity[0].object_id
}

output "KubeKubelet_UAI_Id" {
  sensitive                                 = true
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.kubelet_identity[0].user_assigned_identity_id
}


output "NodeRG" {
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC.node_resource_group
}

output "FullAKS" {
  value                                     = azurerm_kubernetes_cluster.TerraAKSwithRBAC
  sensitive                                 = true
}



