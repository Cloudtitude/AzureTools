$resources = Get-AzResource

# Loop through each resource and check for TLS version property
foreach ($resource in $resources) {

    # Example for App Service (Web Apps)
    if ($resource.ResourceType -eq "Microsoft.Web/sites") {
        $webApp = Get-AzWebApp -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($resource.Name), TLS Version: $($webApp.SiteConfig.MinTlsVersion)"
    }

    # Check for Storage Accounts
    elseif ($resource.ResourceType -eq "Microsoft.Storage/storageAccounts") {
        $storageAccount = Get-AzStorageAccount -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($storageAccount.StorageAccountName), TLS Version: $($storageAccount.MinimumTlsVersion)"
    }

    # Check for Azure Database for PostgreSQL
    elseif ($resource.ResourceType -eq "Microsoft.DBforPostgreSQL/servers") {
        $postgresqlServer = Get-AzPostgreSqlServer -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($postgresqlServer.Name), TLS Version: $($postgresqlServer.SslEnforcement)"
    }

    # Check for SQL Managed Instances
    elseif ($resource.ResourceType -eq "Microsoft.Sql/managedInstances") {
        $sqlManagedInstance = Get-AzSqlInstance -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($sqlManagedInstance.Name), TLS Version: $($sqlManagedInstance.MinimalTlsVersion)"
    }

    elseif ($resource.ResourceType -eq "Microsoft.DBforPostgreSQL/servers") {
        $postgresqlServer = Get-AzPostgreSqlServer -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($postgresqlServer.Name), TLS Version: $($postgresqlServer.SslEnforcement)"
    }

    # Check for Azure Cosmos DB Accounts
    elseif ($resource.ResourceType -eq "Microsoft.DocumentDB/databaseAccounts") {
        $cosmosDbAccount = Get-AzCosmosDBAccount -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($cosmosDbAccount.Name), TLS Version: $($cosmosDbAccount.EnableAutomaticFailover)"
    }

    # Check for Azure Database for MariaDB
    elseif ($resource.ResourceType -eq "Microsoft.DBforMariaDB/servers") {
        $mariadbServer = Get-AzMariadbServer -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($mariadbServer.Name), TLS Version: $($mariadbServer.SslEnforcement)"
    }
    
    # Check for Azure Database for MySQL
    elseif ($resource.ResourceType -eq "Microsoft.DBforMySQL/servers") {
        $mysqlServer = Get-AzMySqlServer -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($mysqlServer.Name), TLS Version: $($mysqlServer.SslEnforcement)"
    }

    # Check for Azure Database for PostgreSQL
    elseif ($resource.ResourceType -eq "Microsoft.DBforPostgreSQL/servers") {
        $postgresqlServer = Get-AzPostgreSqlServer -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($postgresqlServer.Name), TLS Version: $($postgresqlServer.SslEnforcement)"
    }

    # Check for Azure Function Apps
    elseif ($resource.ResourceType -eq "Microsoft.Web/sites/functions") {
        $functionApp = Get-AzFunctionApp -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($functionApp.Name), TLS Version: $($functionApp.SiteConfig.MinTlsVersion)"
    }

    # Check for HDInsight
    elseif ($resource.ResourceType -eq "Microsoft.HDInsight/clusters") {
        $hdInsightCluster = Get-AzHDInsightCluster -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($hdInsightCluster.Name), TLS Version: $($hdInsightCluster.MinSupportedTlsVersion)"
    }

    # Check for IoT Hub
    elseif ($resource.ResourceType -eq "Microsoft.Devices/IotHubs") {
        $iotHub = Get-AzIotHub -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($iotHub.Name), TLS Version: $($iotHub.Properties.MinimumTlsVersion)"
    }

    # Check for Key Vault
    elseif ($resource.ResourceType -eq "Microsoft.KeyVault/vaults") {
        $keyVault = Get-AzKeyVault -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($keyVault.Name), TLS Version: $($keyVault.Properties.MinTlsVersion)"
    }

    # Check for API Management Services
    elseif ($resource.ResourceType -eq "Microsoft.ApiManagement/service") {
        $apiManagement = Get-AzApiManagement -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($apiManagement.Name), TLS Version: $($apiManagement.Properties.CustomProperties.TlsVersion)"
    }

    #Check for Application Gateway
    elseif ($resource.ResourceType -eq "Microsoft.Network/applicationGateways") {
        $appGateway = Get-AzApplicationGateway -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($appGateway.Name), TLS Version: $($appGateway.SslPolicy.MinProtocolVersion)"
    }

    #Check for Azure Front Door
    elseif ($resource.ResourceType -eq "Microsoft.Network/frontDoors") {
        $frontDoor = Get-AzFrontDoor -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($frontDoor.Name), TLS Version: $($frontDoor.TlsSettings.MinProtocolVersion)"
    }

    # Check for Azure Front Door X
    elseif ($resource.ResourceType -eq "Microsoft.Network/frontDoors/webApplicationFirewallPolicies") {
        $frontDoorWaf = Get-AzFrontDoorWebApplicationFirewallPolicy -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($frontDoorWaf.Name), TLS Version: $($frontDoorWaf.TlsSettings.MinProtocolVersion)"
    }

    # Check for Azure SQL
    elseif ($resource.ResourceType -eq "Microsoft.Sql/servers") {
        $sqlServer = Get-AzSqlServer -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($sqlServer.Name), TLS Version: $($sqlServer.MinimalTlsVersion)"
    }
    # Check for Azure SQL Database Edge
    elseif ($resource.ResourceType -eq "Microsoft.SqlEdge/instances") {
        $sqlEdge = Get-AzSqlEdgeInstance -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($sqlEdge.Name), TLS Version: $($sqlEdge.MinimalTlsVersion)"
    }

    # Check for Azure Synapse Analytics
    elseif ($resource.ResourceType -eq "Microsoft.Synapse/workspaces") {
        $synapseWorkspace = Get-AzSynapseWorkspace -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($synapseWorkspace.Name), TLS Version: $($synapseWorkspace.MinimalTlsVersion)"
    }

    # Check for Azure Web Application Firewall
    elseif ($resource.ResourceType -eq "Microsoft.Network/webApplicationFirewallPolicies") {
        $wafPolicy = Get-AzWebApplicationFirewallPolicy -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($wafPolicy.Name), TLS Version: $($wafPolicy.TlsSettings.MinProtocolVersion)"
    }

    # Check for Cloud Services
    elseif ($resource.ResourceType -eq "Microsoft.ClassicCompute/domainNames") {
        $cloudService = Get-AzCloudService -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($cloudService.Name), TLS Version: $($cloudService.TlsVersion)"
    }

    # Check for Common Data Service
    elseif ($resource.ResourceType -eq "Microsoft.PowerPlatform/CommonDataModel") {
        $cds = Get-AzCommonDataService -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($cds.Name), TLS Version: $($cds.TlsVersion)"
    }

    # Check for Dynamics 365 AI Customer Insights
    elseif ($resource.ResourceType -eq "Microsoft.CustomerInsights/hubs") {
        $customerInsights = Get-AzCustomerInsightsHub -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($customerInsights.Name), TLS Version: $($customerInsights.TlsVersion)"
    }

    # Check for Dynamics 365 Fraud Protection
    elseif ($resource.ResourceType -eq "Microsoft.FraudProtection/fraudProtections") {
        $fraudProtection = Get-AzFraudProtection -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($fraudProtection.Name), TLS Version: $($fraudProtection.TlsVersion)"
    }

    # Check for Event Grid
    elseif ($resource.ResourceType -eq "Microsoft.EventGrid/topics") {
        $eventGridTopic = Get-AzEventGridTopic -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($eventGridTopic.Name), TLS Version: $($eventGridTopic.TlsVersion)"
    }

    # Check for Event Hubs
    elseif ($resource.ResourceType -eq "Microsoft.EventHub/namespaces") {
        $eventHubNamespace = Get-AzEventHubNamespace -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($eventHubNamespace.Name), TLS Version: $($eventHubNamespace.TlsVersion)"
    }

    # Check for Azure Arc
    elseif ($resource.ResourceType -eq "Microsoft.HybridCompute/machines") {
        $arcMachine = Get-AzArcMachine -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($arcMachine.Name), TLS Version: $($arcMachine.TlsVersion)"
    }

    # Check for Azure App Service Static Web Apps
    elseif ($resource.ResourceType -eq "Microsoft.Web/staticSites") {
        $staticWebApp = Get-AzStaticSite -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($staticWebApp.Name), TLS Version: $($staticWebApp.TlsVersion)"
    }

    # Check for Azure Cognitive Search
    elseif ($resource.ResourceType -eq "Microsoft.Search/searchServices") {
        $searchService = Get-AzSearchService -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($searchService.Name), TLS Version: $($searchService.TlsVersion)"
    }

    # Check for Logic Apps
    elseif ($resource.ResourceType -eq "Microsoft.Logic/workflows") {
        $logicApp = Get-AzLogicApp -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($logicApp.Name), TLS Version: $($logicApp.TlsVersion)"
    }

    # Check for Microsoft Azure Managed Instance for Apache Cassandra
    elseif ($resource.ResourceType -eq "Microsoft.Cassandra/managedClusters") {
        $cassandraCluster = Get-AzCassandraCluster -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($cassandraCluster.Name), TLS Version: $($cassandraCluster.TlsVersion)"
    }

    # Check for Microsoft Forms Pro
    elseif ($resource.ResourceType -eq "Microsoft.FormsPro/accounts") {
        $formsPro = Get-AzFormsProAccount -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($formsPro.Name), TLS Version: $($formsPro.TlsVersion)"
    }

    # Check for Notification Hubs
    elseif ($resource.ResourceType -eq "Microsoft.NotificationHubs/namespaces") {
        $notificationHubNamespace = Get-AzNotificationHubNamespace -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($notificationHubNamespace.Name), TLS Version: $($notificationHubNamespace.TlsVersion)"
    }

    # Check for Power Apps
    elseif ($resource.ResourceType -eq "Microsoft.PowerApps/apps") {
        $powerApp = Get-AzPowerApp -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($powerApp.Name), TLS Version: $($powerApp.TlsVersion)"
    }

    # Check for Power Automate
    elseif ($resource.ResourceType -eq "Microsoft.Logic/workflows") {
        $powerAutomate = Get-AzPowerAutomate -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($powerAutomate.Name), TLS Version: $($powerAutomate.TlsVersion)"
    }

    # Check for Power BI
    elseif ($resource.ResourceType -eq "Microsoft.PowerBIDedicated/capacities") {
        $powerBi = Get-AzPowerBiDedicatedCapacity -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($powerBi.Name), TLS Version: $($powerBi.TlsVersion)"
    }

    # Check for Power BI Embedded
    elseif ($resource.ResourceType -eq "Microsoft.PowerBIDedicated/capacities") {
        $powerBiEmbedded = Get-AzPowerBiEmbeddedCapacity -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($powerBiEmbedded.Name), TLS Version: $($powerBiEmbedded.TlsVersion)"
    }

    # Check for Service Bus
    elseif ($resource.ResourceType -eq "Microsoft.ServiceBus/namespaces") {
        $serviceBusNamespace = Get-AzServiceBusNamespace -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($serviceBusNamespace.Name), TLS Version: $($serviceBusNamespace.TlsVersion)"
    }

    # Check for Service Fabric
    elseif ($resource.ResourceType -eq "Microsoft.ServiceFabric/clusters") {
        $serviceFabricCluster = Get-AzServiceFabricCluster -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($serviceFabricCluster.Name), TLS Version: $($serviceFabricCluster.TlsVersion)"
    }

    # Check for SQL Server Stretch Database
    elseif ($resource.ResourceType -eq "Microsoft.Sql/servers") {
        $sqlServerStretch = Get-AzSqlServer -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($sqlServerStretch.Name), TLS Version: $($sqlServerStretch.TlsVersion)"
    }

    # Check for VPN Gateway
    elseif ($resource.ResourceType -eq "Microsoft.Network/virtualNetworkGateways") {
        $vpnGateway = Get-AzVirtualNetworkGateway -ResourceGroupName $resource.ResourceGroupName -Name $resource.Name
        Write-Output "Resource: $($vpnGateway.Name), TLS Version: $($vpnGateway.TlsVersion)"
    }

}
