# A quick intro for Azure Concepts

Azure Portal
Azure CLI
Azure Powershell

All happening via REST API Endpoints

Azure Resource Manager interacts with an Azure Resource Provider (Microsoft.Compute, Microsoft.Network)  

Azure uses Azure EntraID, it is the Identity Management Layer for Azure

A Subscription can only have a trust relationship with a single tenant at any one time,
A tenant can have trust relationships with multiple subscriptions.

What is the Azure Portal?

It's a graphical interfaces that allows us to create and manage Azure Resources and we can also use a cloudshell.

## ARM Templates

Azure Resource Manager Templates  

They will follow a defined pattern

```json
{
    "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",  
    "contentVersion": "1.0.0.0",    #This is the version of the template, but versioning is generally done by github etc  
    "parameters": {},               # To provide different values to the same arguments, say dev, prod etc  
    "functions": [],                # reuse functions or logic across the template. 2 types; built-in and user-defined  
    "variables": {},                # Containers filled with values to be re-used  
    "resources": [],                # This is where you describe the resources to be deployed or updated  
    "outputs": {}                   # To return certain values  
}
```

## Virtual Machines  

- Windows or Linux OS  
- Remote Connection via RDP or SSH  
- Can be placed in availability sets, behind load balancers  
- Install whatever software your heart desires  

### Virtual Machine Abstractions  

- Azure Batch
- Virtual Machine Scale Sets
- Azure Kubernetes
- Service Fabric

### App Services or Web Apps  

- Web apps or container apps  
- Windows or Linux  
- Fully managed servers, no ability to ssh into them  
- Lots of benefits  
  - Scaling, CI, deployment slots, integrates well with Visual Studio  

### Azure Storage  

- Create storage up to 5 PB each  
- Blobs, queues, tables and files  
- Various levels of replication included from global to local  
- Storage tiers (hot, cool, archive)  
- Managed (for VMs) or un-managed  

### Data Services - SQL Server Related (Not covered in the AZ-104 exam)  

MS SQL Databases:  

- Azure SQL Database  
- Azure SQL Managed Instances  
- SQL Server on a Virtual Machine  
- Synapse Analytics (SQL Data Warehouse)  

Non MS SQL Databases:  

- Cosmos DB - global scale  
- Azure Database for MySQL  
- Azure Database for PostgreSQL  
- Azure Database for MariaDB  
- Azure Cache for Redis  

### Microservices (Not covered in the AZ-104 exam)  

- Service Fabric  
- Azure Functions  
- Azure Logic Apps  
- API Management  
- Azure Kubernetes Services (AKS)  

### Networking  

- Connectivity  
  - vNet - Virtual Network  
  - Virtual WAN  
  - ExpressRoute - Private network, encrypted and faster  
  - VPN Gateway - goes over the public internet  
  - Azure DNS  
  - Peering - To allow multiple regions to connect  
  - Bastion  
- Security
  - Network Security Groups (NSG)  
  - Azure Private Link - create private endpoints with service protection  
  - DDoS Protection  
  - Azure Firewall  
  - WAF - Built into the application gateway  
  - Virtual Network Endpoints  
- Delivery  
  - CDN  
  - Azure Front Door  
  - Traffic manager - Allows you to distribute traffic around the world  
  - Application Gateway  
  - Load Balancer - Layer 7 and Layer 4  
- Monitoring  
  - Network Watcher  
  - ExpressRoute Monitor  
  - Azure Monitor  
  - vNet Terminal Access Point (TAP)  
