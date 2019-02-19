##############################################################
#This module allows the creation of a vNEt
##############################################################


#Creating a vNet

resource "azurerm_kubernetes_cluster" "TerraAKS" {
  name                = "${var.AKSClusName}"
  location            = "${var.AKSLocation}"
  resource_group_name = "${var.AKSRGName}"
  
  agent_pool_profile {
    name              = "${lower(var.AKSAgentPoolName)}"
    count             = "${var.AKSNodeCount}" 
    vm_size           = "${var.AKSNodeInstanceType}" 
    os_type           = "${var.AKSNodeOSType}"
    os_disk_size_gb   = "${var.AKSNodeOSDiskSize}"
    vnet_subnet_id    = "${var.AKSSubnetId}"
    max_pods          = "${var.AKSMaxPods}"


  }
  
  dns_prefix = "${var.AKSprefix}"

  service_principal {
    client_id         = "${var.K8SSPId}"
    client_secret     = "${var.K8SSPSecret}"

  }

  addon_profile {
    http_application_routing {
      enabled = "${var.IshttproutingEnabled}"
    }
    
    oms_agent {
      enabled                 = "true"
      log_analytics_workspace_id = "${lower(var.AKSLAWId)}"
    }
  }
  
  kubernetes_version = "${var.KubeVersion}"


  linux_profile {
    admin_username = "${var.AKSAdminName}"

    ssh_key {
      key_data = "${var.PublicSSHKey}"
    }
  }

  network_profile {
    network_plugin        = "azure"
    dns_service_ip        = "${var.AKSDNSSVCIP}"
    docker_bridge_cidr    = "${var.AKSDockerBridgeCIDR}"
    service_cidr          = "${var.AKSSVCCIDR}"

  }

  role_based_access_control {
    enabled           = "true"

    azure_active_directory {
      client_app_id       = "${var.AADCliId}"
      server_app_id       = "${var.AADAppId}"
      server_app_secret   = "${var.AADAppSecret}"
      tenant_id           = "${var.AADTenantId}"
    }

  }

  tags {
    Environment       = "${var.EnvironmentTag}"
    Usage             = "${var.EnvironmentUsageTag}"
    Owner             = "${var.OwnerTag}"
    ProvisioningDate  = "${var.ProvisioningDateTag}"
  }
}

