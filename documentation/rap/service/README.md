# Expose Service

## Introduction 

In this exercise, you will create objects needed to expose your data model as an OData service.

## Content

### Task 1: Create service definition

1. Right click on your root CDS view **ZC_BusinessPartner**.

2. Select **New Service Definition** in the popup menu.

  ![New service definition](img/new-service-definition.png) 

3. Enter the following details and choose **Next**:
  - **ZGEO** in the **Name** field
  - **Geo Service** in the **Description** field

  ![Details](img/service-definition-details.png)

4. On the next screen select your transport and then choose **Next** button.

5. Choose **Define Service** template and then choose **Finish** button.

  ![Template](img/service-definition-template.png)

6. Replace the code of your service definition with the one shown below:

~~~abap
@EndUserText.label: 'Geo Service'
define service ZGEO {
  expose ZC_BusinessPartner    as BusinessPartner;
  expose ZC_BusinessPartnerGeo as BusinessPartnerGeo;
}
~~~

7. Choose **Activate** button.

  ![Activate](../common-images/activate-button.png)


### Task 2: Create service binding

1. Right click on your new service definition **ZGEO**.

2. Select **New Service Binding** option in the popup menu.

  ![New service binding](img/new-service-binding.png) 

3. Enter the following details and then choose **Next** button:
  - **ZAPI_GEO_O2** in the **Name** field
  - **API Geo Service OData V2** in the **Description** field
  - **OData V2 - Web API** in the **Binding Type** list box

  ![Details](img/service-biding-details.png) 

4. On the next screen select your transport and choose **Finish** button.

5. Choose **Activate** button.

  ![Activate](../common-images/activate-button.png)

6. After the service binding was activated, choose **Publish** button.  

  ![Alt text](img/publish-service.png)


## Result

You have created a service definition and a service binding. Now your service is ready to be consumed. But before we will add some custom business logic.

[Next tutorial: Add geo coordinates logic](../geo-logic/README.md)

## Further reading / Reference Links

- [Service Definition](https://help.sap.com/docs/ABAP_PLATFORM_NEW/fc4c71aa50014fd1b43721701471913d/b09e4d53bfca4544a9f8910bcc2cd9d6.html)
- [Service Binding](https://help.sap.com/docs/ABAP_PLATFORM_NEW/fc4c71aa50014fd1b43721701471913d/b58a3c27df4e406f9335d4b346f6be04.html)

