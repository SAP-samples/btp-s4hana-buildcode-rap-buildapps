# Introduction

In this part of the mission, you create an API service which will provide the data for the available incident processors. The data includes ID, name and geo location of the processors.

Let's assume that the main information about the incident processors (like ID and name) is coming from an SAP S/4HANA Cloud system (Business Partners data). For simplicity, this data will be uploaded only once. In real productive scenarios there should be some more comprehensive integration. To reproduce this scenario, you don't need an access to a real SAP S/4HANA Cloud system as you will use the SAP Business Accelerator Hub Sandbox.

The geo coordinates for the processors will be assigned randomly. It is assumed that later on there could be some additional application which updates the actual location of a processor.

## 1. Prepare the Landscape

To start this part of the scenario, you need a subaccount in SAP BTP with the SAP BTP, ABAP Environment enabled. You can also use a trial account in SAP BTP. See the [Create an SAP BTP ABAP Environment Trial User](https://developers.sap.com/tutorials/abap-environment-trial-onboarding.html) tutorial.

Alternatively, you can use your own subaccount. Make sure that you have the necessary quotas and subscriptions. See [Getting Started in the ABAP Environment](https://help.sap.com/docs/sap-btp-abap-environment/abap-environment/getting-started-in-abap-environment).

## 2. Create an ABAP Project

After your subaccount is ready, you have to prepare your workspace in the ABAP Development Tools. See the [Create an ABAP Cloud Project](https://developers.sap.com/tutorials/abap-environment-create-abap-cloud-project.html) tutorial.

## Result
 
You have prepared a subaccount in SAP BTP with the SAP BTP, ABAP Environment and created a workspace in the ABAP Development Tools. Now, you are ready to develop the API.

## Next Step

[Create Package](../package/README.md)

## Reference Links

- [Trial Accounts and Free Tier](https://help.sap.com/docs/btp/sap-business-technology-platform/trial-accounts-and-free-tier)
- [SAP BTP, ABAP Environment](https://help.sap.com/docs/sap-btp-abap-environment)
