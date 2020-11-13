/********************************************************************************************
/* This script creates the initial objects for the PostgreSQL database to start the Izenda */
/* sample authentication application "CoreApiSample". Run this script on your connection,  */
/* set the database type to pgSql in the appsettings.json - and the authentication         */
/* application is good to go on your postgres											   */
********************************************************************************************/

/****** Object:  Table AspNetUsers  ******/
CREATE TABLE "AspNetUsers"(
	"Id" varchar(450) NOT NULL,
	"UserName" varchar(256) NULL,
	"NormalizedUserName" varchar(256) NULL,
	"Email" varchar(256) NULL,
	"NormalizedEmail" varchar(256) NULL,
	"EmailConfirmed" boolean NOT NULL,
	"PasswordHash" varchar(2048) NULL,
	"SecurityStamp" varchar(2048) NULL,
	"ConcurrencyStamp" varchar(2048) NULL,
	"PhoneNumber" varchar(2048) NULL,
	"PhoneNumberConfirmed" boolean NOT NULL,
	"TwoFactorEnabled" boolean NOT NULL,
	"LockoutEnd" date NULL,
	"LockoutEnabled" boolean NOT NULL,
	"AccessFailedCount" int NOT NULL,
	"Tenant_Id" int null);
/****** Object:  Table Tenants  ******/
CREATE TABLE "Tenants"(
	"Id" int NOT NULL,
	"Name" varchar(512) null);

INSERT into "AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Tenant_Id") VALUES (N'9f28d6c3-01ae-4b3b-b87e-e61ce031aa13', N'IzendaAdmin@system.com', N'IZENDAADMIN@SYSTEM.COM', N'IzendaAdmin@system.com', N'IZENDAADMIN@SYSTEM.COM', true, N'AQAAAAEAACcQAAAAEFlJ6laK3LBpJYPwAqlamf5rgMVTgk/TkOPYIFs4mteh+iCipBpuVrkMAtDpLaZaDQ==', N'WFGJPJQGRALE7A4O5OUVX32RKQW35LDK', N'8c4432be-233f-417e-a978-361ef7e66d06', NULL, false, false, NULL, true, 0, NULL);
INSERT into "Tenants" ("Id", "Name") VALUES (1, N'DELDG');
