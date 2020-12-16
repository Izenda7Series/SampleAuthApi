# Izenda SampleAuthApi Repository 

## Overview
The SampleAuthApi repository holds examples of Sample Authentication Application.

### Q. What is in this repository?

### A. It contains a sample web api applications that shows examples of authentication, api controllers, and other izenda interactions through code examples all in a single repository. It also contains database generation scripts to make it easier to get an integrated Izenda instance deployed. 
(You may recognize the WebApi2StarterKit which was previously in our other sample kit repositories)
 
 - This repository also includes a .Net Core version of the sample api application

 :warning: **The SampleAuthApi Repository is designed for demonstration purposes and should not be used as an “as-is” fully-integrated solution. You can use the kit for reference or a baseline but ensure that security and customization meet the standards of your company.**


 :warning: **The Izenda configuration database script provided is currently configured for version 3.10.0 of Izenda.**

### Deployment and Use
This Sample Application is designed to be used with Izenda's other integrated sample kits.
- This application will act as the "middle man", interacting with your front-end application and the Izenda API.
- You will first need to set up the Izenda configuration database. Create a database with a name of your chosing then using the Izenda.sql script located in the directory "DbScripts". You will need to check the database version in the Izenda.DbVersion table and upgrate to the necessary version using the schema migration tool available within the Izenda Downloads Portal

### Deploying the WebAPI & Database
- Create another database of your choosing for the Web Api database. This is the database for the WebApi application. It contains the users, roles, tenants used to login. You may use any name of your choosing, just be sure to modify the script below to use the new database name.
- Use the  Starterkit_Api.sql script located in the "integration/DbScripts" directory to generate the necessary schema for the database. 
- Run/Deploy the WebApiStarterKit solution located in integration/WebApiStarterKit and modify the web.config (Line 75) file with a valid connection string to this new database.

```xml
  <connectionStrings>
    <add name="DefaultConnection" connectionString="[your connection string here]" providerName="System.Data.SqlClient" />
  </connectionStrings>
``` 
- Modify the 'IzendaApiUrl' value in the WebApiStarterKit web.config (Line 80) file with the url of the Izenda API.
```xml
<add key="IzendaApiUrl" value="http://localhost:9999/api/" />
```

### Deploying the Retail Database (optional)
Create the Retail database with the RetailDbScript.sql located in the "integration/DbScripts" directory.

### Run WebApi2StarterKit in Visual Studio
- Build and run the WebApi2StarterKit project and login with the System Admin account below:<br />
   Tenant: <br />
   Username: IzendaAdmin@system.com<br />
   Password: Izenda@123<br />

- Once you have logged in successfully, navigate to the Settings tab and enter your Izenda License Key .
- Now navigate to Settings > Data Setup > Connection String and replace the current connection string with the one you created for the Retail Database.

- Click Reconnect and then save

## Post Installation

 :warning: In order to ensure smooth operation of this kit, the items below should be reviewed.
 
 
### Exporting

Update the WebUrl value in the IzendaSystemSetting table with the URL for your front-end. You can use the script below to accomplish this. As general best practice, we recommend backing up your database before making any manual updates.

```sql

UPDATE [IzendaSystemSetting]
SET [Value] = '<your url here including the trailing slash>'
WHERE [Name] = 'WebUrl'

``` 

If you do not update this setting, charts and other visualizations may not render correctly when emailed or exported. This will also be evident in the log files as shown below:

`[ERROR][ExportingLogic ] Convert to image:
System.Exception: HTML load error. The remote content was not found at the server - HTTP error 404`

</br>

### Authentication Routes

Ensure that the AuthValidateAccessTokenUrl and AuthGetAccessTokenUrl values in the IzendaSystemSetting table use the fully qualified path to those API endpoints. 

Examples:

| Name                       | Value                                                   | 
| -------------------------- |:--------------------------------------------------------|
| AuthValidateAccessTokenUrl |http://localhost:3358/api/account/validateIzendaAuthToken|
| AuthGetAccessTokenUrl      |http://localhost:3358/api/account/GetIzendaAccessToken   |

</br>

You can use the script below to accomplish this. As general best practice, we recommend backing up your database before making any manual updates.

```sql

UPDATE [IzendaSystemSetting]
SET [Value] = '<your url here>'
WHERE [Name] = 'AuthValidateAccessTokenUrl'

UPDATE [IzendaSystemSetting]
SET [Value] = '<your url here>'
WHERE [Name] = 'AuthGetAccessTokenUrl'

``` 

:no_entry: If these values are not set, the authentication will not work properly.

## Further details about Izenda integration

- [Installation and Maintenance Guide](https://www.izenda.com/docs/install/.install.html)
- [Developer Guide](https://www.izenda.com/docs/dev/.developer_guide.html)
- [Developer Guide for Integrated Scenarios](https://www.izenda.com/docs/dev/.developer_guide_integrated_scenarios.html)

