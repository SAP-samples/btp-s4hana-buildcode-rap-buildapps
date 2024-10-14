# Create Database Tables

## Introduction 

In this part, you will create 2 database tables which will represent the basis of the data model of your service.

You need 2 tables to split the master data and the transactional data. The first table will be used for storing business partner general information. The other one will contain the current position of the partner.

## 1. Create a Table for Business Partners

1. Right click your package name created in the previous part.

2. Choose **New** &rarr; **Other ABAP Repository Object** in the context menu.

  ![New Object](../common-images/new-object.png) 

3. Choose **Database Tables** in the **Dictionary** folder and then choose **Next**.

  ![New object type](img/02-new-table.png) 

4. Enter the following data and then choose **Next**:

  - **ZBUPA** in the **Name** field
  - **Business Partners** in the **Description** field

  ![Object data](img/03-table-data.png) 

5. Select your transport (if applicable) and choose **Finish**.

6. Replace the code of the table with the one below:

~~~abap
@EndUserText.label : 'Business Partners'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zbupa {

  key client  : abap.clnt not null;
  key partner : abap.char(10) not null;
  name_first  : abap.char(40);
  name_last   : abap.char(40);

}
~~~

> For simplicity, you only have partner names in this table.

7. Choose **Activate**.
   
  ![Activate](../common-images/activate-button.png)


## 2. Create a Table for Business Partners Geo Data

1. Repeat all the steps from the previous section. Only this time, use the following table data:

  - **ZBUPAGEO** in the **Name** field
  - **Geo Data of Business Partners** in the **Description** field

2. Use the following code for the table:

~~~abap
@EndUserText.label : 'Geo Data of Business Partners'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zbupageo {

  key client  : abap.clnt not null;
  key partner : abap.char(10) not null;
  latitude    : abap.dec(16,13);
  longitude   : abap.dec(16,13);
  @AbapCatalog.geo.spatialRefSystem : '4326'
  location    : abap.geom_ewkb;

}
~~~

> You use two ways of storing spatial data here - human-readable geo coordinates and spatial type *abap.geom_ewkb*. On the one hand, it's easier to deal with the pure coordinates during service requests. On the other hand, when you want to do some geo search in the database - you need to use SAP HANA spatial engine. So, both representations are necessary.

> The GEOM_EWKB data type requires a coordinate reference system (a Spatial Reference System), namely a defined space in which geometric positions are described. Every spatial reference system has a unique spatial reference identifier (SRID). A common SRID in use is 4326, which represents spatial data using longitude and latitude coordinates on the Earth's surface as defined in the WGS84 standard, which is also used for the Global Positioning System (GPS).

3. Activate the table.

## Result

You have created two database tables. The tables will be used as a basis of a new RAP Business Object.

## Next Step

[Create Data Definition](../bo/README.md)

## Reference Links

- [Create a Simple Database Table for ABAP Environment](https://developers.sap.com/tutorials/abap-environment-create-table.html)
- [Geodata Types](https://help.sap.com/doc/abapdocu_754_index_htm/7.54/en-US/abenddic_geo_data.htm)



