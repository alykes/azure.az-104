# Entra ID  

There has been a name change from Azure Active Directory to **Entra ID**. It is a cloud native identity management service.  

## Pricing Options  

There is a free tier but with some restrictions and SLAs aren't as high. Advanced Security Settings remain for paid services, things such as Conditional Access, Continuous Access Validation. You also don't have access to Group assignments to applications. No SLAs. No dynamic groups and no expiration policies. Self Service Password reset write-back (to on-prem) isn't available, normal cloud self-service password reset is available. All the advanced identity protection is generally on P2 or higher.

## Managing Multiple Directories  

The basic terminology to use is:

- Account - Forms the basis for authentication  
  - Person - Joe Blow [joe.blow@example.com](joe.blow@example.com)
  - App - Managed Identity. (This is a service or program)
- Tenant  
  - A representation of an organisation
  - Usually represented by a public domain name
  - Will be assigned a domain if one isn't specified, e.g., [example.onmicrosoft.com](example.onmicrosoft.com)
  - It is a dedicated instance of Entra ID (Azure Active Directory)
  - Every Azure account is part of at least one tenant
  - More than one account can be the owner of a tenant
- Subscription  
  - It's a billing agreement with Microsoft to use Azure Services, and how payment is made
  - Not every tenant has a subscription
  - Tenants can have more than one subscription
  - The types of payment methods include:
    - Free Subscriptions
    - Pay-As-You-Go
    - Enterprise Agreements
- Resource Group
  - This is a logical grouping of resources that share the same lifecycle  

## Changes to Entra ID Tenant Creations  

- You can now only create Entra ID tenants if you have a paid subscription. Else you can only create B2C tenants  
- You need to be a Global Administrator  
  - Go to Entra ID  
  - Click on Manage Tenant  
  - Click Create
  - Select the Tenant type
  - Give it a unique domain name and region  

### Switching between Entra ID tenants