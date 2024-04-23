# Create Data Definition

## Introduction 

In this exercise, you will create a business object which will represent the data model of your service.

## Content

### Task 1: Create root view entity

1. Right click on the database table **ZBUPA** created in the previous exercise.

2. Choose **New Data Definition** option in the context menu.

  ![New Object](img/new-root-data-definition.png) 

3. Enter the following data and then choose **Next**:
  - **ZI_BusinessPartner** in the **Name** field
  - **Business Partners** in the **Description** field

  ![Details](img/data-definition-details-root.png) 

4. On the next screen select your transport and choose **Next**.

5. On the next screen select the **Define Root View Entity** template and then choose **Finish**.

  ![Template](img/root-data-definition-template.png) 

6. Replace the code of the view with the one below:

~~~abap
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Business Partners'
define root view entity ZI_BusinessPartner as select from zbupa
composition [0..1] of ZI_BusinessPartnerGeo as _GeoData
{
    key partner as Partner,
    name_first as NameFirst,
    name_last as NameLast,
    
    _GeoData
}
~~~

> Note that the code has errors. It is ok now, we have to create another view first.

7. Choose **Save** button.
   
  ![Alt text](../common-images/save-button.png)


### Task 2: Create geo location view entity

1. Right click on the database table **ZBUPAGEO** created in the previous exercise.

2. Choose **New Data Definition** option in the context menu.

  ![New Object](img/new-data-definition.png) 

3. Enter the following data and then choose **Next**:
  - **ZI_BusinessPartnerGeo** in the **Name** field
  - **Geo Data for Business Partners** in the **Description** field

  ![Details](img/data-definition-details.png) 

4. On the next screen select your transport and choose **Next**.

5. On the next screen select the **Define View Entity** template and then choose **Finish**.

  ![Template](img/data-definition-template.png) 

6. Replace the code of the view with the one below:

~~~abap
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Geo Data for Business Partners'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_BusinessPartnerGeo as select from zbupageo
association to parent ZI_BusinessPartner as _BusinessPartner on $projection.Partner = _BusinessPartner.Partner
{
    key partner as Partner,
    latitude as Latitude,
    longitude as Longitude,
    location as Location,
    
    _BusinessPartner
}
~~~

7. Choose **Save** button.
   
  ![Alt text](../common-images/save-button.png)


## Task 3: Activate the views

1. Select **Activate inactive ABAP development objects** button.

  ![Activate all](../common-images/activate-all-button.png)

2. In the popup window choose both new CDS views and then choose **Activate** button.

  ![Activate objects](img/activate-views.png)


## Result

You have created a business object. This object could be now ready to be exposed as a service. But we will add projection layer for more flexibility in future.

[Next Tutorial: Create projection views](../projection/README.md)

## Further reading / Reference Links

- [Naming convention](https://help.sap.com/docs/ABAP_PLATFORM_NEW/fc4c71aa50014fd1b43721701471913d/8b8f9d8f3cb948b2841d6045a255e503.html)
- [Developing Managed Transactional Apps](https://help.sap.com/docs/ABAP_PLATFORM_NEW/fc4c71aa50014fd1b43721701471913d/b5bba99612cf4637a8b72a3fc82c22d9.html)
