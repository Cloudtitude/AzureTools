# Azure Resource TLS Version Checker

This PowerShell script retrieves and displays the TLS version for various Azure resources. It supports multiple Azure resource types, including Web Apps, Storage Accounts, SQL Managed Instances, Azure Database for PostgreSQL, Azure Cosmos DB Accounts, Function Apps, Power Automate, Power BI, Power BI Embedded, Service Bus, Service Fabric, and SQL Server Stretch Database.

## Prerequisites

- Azure PowerShell module installed
- Azure account with appropriate permissions to access the resources
- PowerShell 5.1 or later

## Installation

1. Install the Azure PowerShell module if you haven't already:

    ```powershell
    Install-Module -Name Az -AllowClobber -Scope CurrentUser
    ```

2. Clone this repository or download the `tls.ps1` script.

## Usage

1. Open a PowerShell terminal.
2. Authenticate to your Azure account:

    ```powershell
    Connect-AzAccount
    ```

3. Run the script:

    ```powershell
    .\tls.ps1
    ```

## Supported Resource Types

The script currently supports the following Azure resource types:

- **Web Apps**: `Microsoft.Web/sites`
- **Storage Accounts**: `Microsoft.Storage/storageAccounts`
- **SQL Managed Instances**: `Microsoft.Sql/managedInstances`
- **Azure Database for PostgreSQL**: `Microsoft.DBforPostgreSQL/servers`
- **Azure Cosmos DB Accounts**: `Microsoft.DocumentDB/databaseAccounts`
- **Function Apps**: `Microsoft.Web/sites/functions`
- **Power Automate**: `Microsoft.Logic/workflows`
- **Power BI**: `Microsoft.PowerBIDedicated/capacities`
- **Power BI Embedded**: `Microsoft.PowerBIDedicated/capacities`
- **Service Bus**: `Microsoft.ServiceBus/namespaces`
- **Service Fabric**: `Microsoft.ServiceFabric/clusters`
- **SQL Server Stretch Database**: `Microsoft.Sql/servers`
- And more
