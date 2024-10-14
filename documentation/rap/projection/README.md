# Create Business Object Projections

## Introduction 

In this part, you will create a projection layer of your service. Projections enable flexible service consumption as well as role-based service designs. In this case you will hide the technical field with spatial data as its field type is not yet fully supported by the RAP business object runtime.

If one business object entity is projected, the root and all parent entities must be projected as well. The root entity has to stay the root entity and must be defined as root projection view. The compositions are redirected to the new target projection entity.

## 1. Create Projection for Root View Entity

1. Right-click the **ZI_BusinessPartner** CDS View created in the previous part.

2. Choose **New Data Definition** in the context menu.

  ![New Object](img/new-root-data-definition.png) 

3. Enter the following data and then choose **Next**:
  - **ZC_BusinessPartner** in the **Name** field
  - **Business Partners - Projection** in the **Description** field

  ![Details](img/data-definition-details-root.png) 

4. Select your transport and choose **Next**.

5. Choose the **Define Projection View** template and then choose **Finish**.

  ![Template](img/projection-template.png) 

6. Replace the code of the view with the one below:

~~~abap
@EndUserText.label: 'Business Partners - Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZC_BusinessPartner 
    provider contract transactional_query
    as projection on ZI_BusinessPartner
{
    key Partner,
    NameFirst,
    NameLast,
    /* Associations */
    _GeoData: redirected to composition child ZC_BusinessPartnerGeo
}
~~~

> Note that the code has errors. It is ok now, you have to create another view first.

> You had to define the type of the projection view. The type of the projection view is specified using the **PROVIDER CONTRACT** syntax addition. The CDS transactional queries are intended for modeling the projection layer of a RAP business object, that's why this type of contract was specified. It is not recommended to define a CDS projection view without a provider contract.

7. Choose **Save**.
   
  ![Save](../common-images/save-button.png)

## 2. Create Projection for Geo Location View Entity

1. Right-click the **ZI_BusinessPartnerGeo** CDS View created in the previous part.

2. Choose **New Data Definition** in the context menu.

  ![New Object](img/new-data-definition.png) 

3. Enter the following data and then choose **Next**:
  - **ZC_BusinessPartnerGeo** in the **Name** field
  - **Geo Data for Business Partners - Proj.** in the **Description** field

  ![Details](img/data-definition-details.png) 

4. Select your transport and choose **Next**.

5. Choose the **Define Projection View** template and then choose **Finish**.

  ![Template](img/projection-template.png) 

6. Replace the code of the view with the one below:

~~~abap
@EndUserText.label: 'Geo Data for Business Partners - Proj.'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZC_BusinessPartnerGeo as projection on ZI_BusinessPartnerGeo
{
    key Partner,
    Latitude,
    Longitude,
    
    _BusinessPartner: redirected to parent ZC_BusinessPartner
}
~~~

7. Choose **Save**.
   
  ![Alt text](../common-images/save-button.png)


## 3. Activate the Views

1. Choose **Activate inactive ABAP development objects**.

  ![Activate all](../common-images/activate-all-button.png)

2. In the popup window, choose the two new CDS views and then choose **Activate**.

  ![Activate objects](img/activate-views.png)

## Result

You have created a projection layer of your service. The projection layer is the first layer in the development flow of the ABAP RESTful Programming Model that is service specific. So, now you can proceed with the serice exposure.

## Next Step

[Expose Service](../service/README.md)

## Reference Links

- [Business Object Projection](https://help.sap.com/docs/abap-cloud/abap-rap/business-object-projection)
- [ABAP CDS - Projection Views](https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/index.htm?file=abencds_pv_no_contract.htm)



