# Manage Microsoft Entra ID Users and Groups

Microsoft has updated the exam requirements as of July 2023, they have removed the following topics from the exam:

- Administrative units
- Manage devices
- Bulk operations

You can check out the lab for this section [here](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_01-Manage_Entra_ID_Identities.md)  

## Manage Entra ID Users

Users have identities for security purposes, so too can applications. For users, we are talking about users that have specific permissions to certain services and resources in the tenant. Users can be created in the *onmicrosoft.com domain that the tenant was initially set up with or under any verified domains that you have set up. Free tier supports up to 500k objects, which includes, users, groups and contacts.  
To manage the user account, select it and then go into `edit properties` to make the necessary changes.  
To assign permissions to user accounts, once you select the user account, select Manage from the left hand menu then. To assign a role the organisation needs Microsoft Entra Premium P1 or P2.

## Managing Entra ID Groups

Entra ID groups are accessed through Entra ID blade. An Entra ID Group is a collection of users who have been given a specific set of permissions to resources in Azure. A groups is just an organisational structure, you need to add roles and permissions to it. You need, at minimum a P1 account to be able to assign roles to groups.  

There are two types of Groups:  

- **Security groups** are used to give group members access to applications, resources and assign licenses. Group members can be users, devices, service principals, and other groups.
- **Microsoft 365 groups** are used for collaboration, giving members access to a shared mailbox, calendar, files, SharePoint site, and so on. Group members can only be users.

Groups can be:  

- Assigned - Add members directly to the group  
- Dynamic - based on a dynamic query that searches attributes on the user account to see if that account should be added or removed from a particular group

## Manage Entra ID Licenses  

To view and assign licenses, head to `Entra ID` then head to `Licenses` and `All Products`  
To see what features are included with licenses, click on `Licensed Features`  
An important note, to have the ability to do a `Self-Service Password Change for Cloud Users`  
You will need to assign licenses to uses, to enable them to use these features.  
Another way to assign user's licenses, is to go through the `Users` blade, then select `Licenses` and `+ Assignments` to assign a license to the user. You need to ensure that you add a `Usage Location` specified to be able to use the license.

## Administrative Units  

A way of segregating permissions into logical separations. It allows you to delegate administrative permissions and control over areas of a directory to specific administrators. It allows you to allow subsets of users to have access only to specific areas of your Azure Organisation. It is basically a segregation of administrative duties.  
To use an Administrative Unit, create it, as you would a group and assign it a permission role, such as Password Administrator and also assign it a user. In the next and final step, you add users or groups to the Administrative unit, the users you add are the ones that can have their passwords changed/reset etc by the user you added when you created the Administrative unit.  

## Manage Devices

Devices manage the physical devices that access the organisations resources. You can have certain organisational standards applied to devices, therefore, if the device doesn't meet those standards, then it won't be allowed to access Azure (or whatever you determine is appropriate).  

Some settings include:  

- Users may register their devices with Entra ID  
- Require MFA to register or join devices with Entra ID
- Maximum number of devices per user  
- Bitlocker key settings  

## Bulk Operations  

Microsoft have added bulk operations to some areas of their portal, such as in the Users blade. It allows you to Import Users, Remove Users or download User lists, in the form of csv files.  

## External Users  

These are users you can invite to the Azure portal so that they can use Azure, they are referred to a guest user. They can be partners, vendors, contractors. Once they accept the invitation, then you can assign permissions to them as you would any other internal user in Entra ID.  

## Self Service Password Reset  

You need at minimum a P1 account for self-service password reset on users. The setting can be accessed through Entra ID.  

Some settings are:

- By default this is set to `none`.
- Admins are already enabled for self-service password resets  
- You can set this to `All`, `Selected` (where you add certain groups) or `None`
