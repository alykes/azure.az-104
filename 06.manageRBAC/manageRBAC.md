# Managing RBAC

*Note on the recent and upcoming Exam Changes*
Microsoft updated the exam requirements in 2023, they have removed the following topic from the exam:

- Custom role-based access control roles

## Overview of RBAC

Allows you to grant specific permissions to groups, users or applications, based on their roles.  
In order for a user to interact with a resource in Azure, you need permission to do so. If you have a tenant with ten of thousands of users, then you will find it difficult to assign individual users permissions based on their needs. In order to get around this cumbersome process, you would use RBAC.  

The drawbacks of assigning users individual permissions:  

- Principle of Least Privilege - Give permissions based only what they need  
- Some users have too many permissions, like those that have been in an organisation for a long time and have accumulated permissions over time
- Some users don't have permissions to things they need when they need them
- More effort and more costly to maintain  
- Lower productivity
- Potential of malicious users gaining access to the system  

To get around these drawbacks, you use RBAC.  

You define roles for use across the organisation. You then assign these roles to groups, users or applications. Multiple roles can be assigned to resources that require them. This simplifies the administration of permissions across the organisation.  

Benefits of RBAC:  

- Provides a level of abstraction that simplifies management
- Less chance of error because management becomes simpler
- You add the resource to a role, instead of adding a bunch of permissions to that resource
- All resources in the role are treated equally, no-one has more or less permissions
- A lot simpler to add new users to the correct permissions

CBAC (Claims Based Access Control) is also a possibility for permissions but RBAC is the preferred method in the Microsoft ecosystem.

## Managing Azure Administrator Roles  

To see the roles that are available, go to Entra ID and then select `Roles and Administrators`. If you take a look at the roles that are available, you will notice that they refer to specific areas of Azure and are logically separated based on commonly used permissions. There will be `Administrator` permissions and `Reader` permissions.  

## An example on Storage Accounts

How to switch a storage account from using Access Keys to RBAC.  

You can set this up when you first spin up a storage account. An example of CBAC is when you have the keys to a storage account and use them to access it. To enable RBAC, you go to `Configuration` and then select `Default to Azure Entra ID Authorisation in the Azure Portal`, you can also `Disable storage Account key access` to secure it even more.

To view what permissions you have on a resource, click into `Access Control (IAM)` and click `View my Access`
To assign yourself permissions to the storage account via RBAC, click into `Access Control (IAM)` and click `Roles`
There are three builtin roles:

- **Owner** - Full permissions
- **Contributor** - Full permissions but not allowed to assign roles
- **Reader** - Read access and can't make any changes

For storage Accounts, there are three roles that follow this pattern; *Storage Blob Owner*, *Storage Blob Contributor* and *Storage Blob Reader*.  
Note that you can assign granular permissions on storage accounts, that is, you can assign permissions per container if you so wish. That is, create a group role and add users to that role, just on that container.

## Custom RBAC Roles

You have to have P1 or P2 to create custom roles. To do so, you go into the subscription and then click on `Access Control (IAM)`, then select `Create a Custom Role` and add the granular assignments. The best way to create a role is by cloning an existing role and then modify it as necessary.  
If you create the custom role, you can create it at the following scopes:

- Management Group
- Subscription Group
- Resource Group

**Note**: You can only create 5000 custom roles!

## Resource Groups

You can create role assignments on the resource groups, you add the role and add users or groups to this role.  

## Interpret Access Assignments

There are two types of roles:  

- `Assigned Roles` - These are the Administrative roles from Entra ID
  - e.g., Global Administrator
- `Azure Role Assignments` - These are roles assigned for the Azure.
  - e.g., Owner of the Subscription
  
When you assign permissions to users, they get the sum or union of the roles they have been allocated.

## Deny Assignments  

You can't add deny rules in the Azure Portal, you basically don't grant the user access at all.  
Deny Assignments is by using Azure Blueprints (out of scope).  

## HANDS ON LABS

[Subscriptions](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_02a_Manage_Subscriptions_and_RBAC_Entra.md)
[Policies](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_02b-Manage_Governance_via_Azure_Policy.md)
