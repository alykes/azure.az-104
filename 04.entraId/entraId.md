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

To do this, go to Entra ID. Click on Manage Tenants, choose the tenant and then click switch.  
You can also click on your profile picture and click on Switch, then select the tenant.  

## Purchasing P2 licenses  

To purchase the license, you need to go to 365 Admin center, Add more products, then under security you can select the license there.  
Under `licenses | All Products`, you can also select `Try/Buy`  

## Adding custom domains  

You need to connect a domain to your Azure tenant so that you can manage and invite users to your tenant. To set up a custom domain, follow the sequence of steps below:

- In Entra ID, click on `Custom Domain Name`  
- Select `Add custom domain`  
- Enter the domain name and click `Add domain`
- You will get some DNS records that you need to enter into your DNS server to verify the domain
- Click on `verify` after you enter the records
- You can make the verified domain your primary domain and create users in this domain
