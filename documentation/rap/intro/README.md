# Introduction

In this part of the mission we will create an API service which will provide the data for the available incident processors. The data includes ID, name and geo location of the processors.

In this scenario we assume that main information about the incident processors (like ID and name) is coming from S/4HANA Cloud (Business Partners data). For the simplicity reasons this data will be uploaded only once. In real productive scenarios there should be some more comprehensive integration. To reproduce this tutorial you don't need an access to the real S/4HANA Cloud system as we will use SAP Business Accelerator Hub Sandbox.

The geo coordinates for the processors will be assigned randomly. It is assumed that later there could be some additional application which updates actual location of a processor.

## Task 1: Prepare Landscape

To start this part of the tutorial you will need SAP Subaccount with the SAP BTP ABAP Environment service. You can get a trial subaccount for this reason. Follow this [guide](https://developers.sap.com/tutorials/abap-environment-trial-onboarding.html) to proceed.

Alternatively you can use your own subaccount. Make sure that you have necessary [quotas and subscriptions](https://help.sap.com/docs/sap-btp-abap-environment/abap-environment/getting-started-in-abap-environment).

## Task 2: Create ABAP Project

After your subaccount is ready you have to prepare your workspace in ABAP Development tools environment. Follow this [guide](https://developers.sap.com/tutorials/abap-environment-create-abap-cloud-project.html).

## Result
 
You have prepared a SAP BTP Subaccount with the SAP BTP ABAP Environment service and created a workspace in ABAP Development Tools environment. Now you are ready to develop the API.

[Next Tutorial: Create package](../package/README.md)

## Further reading / Reference Links

- [Trial Accounts and Free Tier](https://help.sap.com/docs/btp/sap-business-technology-platform/trial-accounts-and-free-tier)
- [SAP BTP, ABAP environment](https://help.sap.com/docs/sap-btp-abap-environment)
