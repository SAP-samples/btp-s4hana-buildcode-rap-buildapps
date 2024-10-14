# Add Geo Coordinates Logic

## Introduction 

SAP HANA has significant potential to analyze geographic information. Support for the processing of spatial data represents a key evolution in SAP HANA. To have the most powerful and flexible way to access and manipulate the spatial data, it is necessary to be at the database layer. 

ABAP Managed Database Procedures is one of the recommended patterns for use in ABAP code optimization within the context of ABAP development on SAP HANA. AMDPs allow you as an ABAP developer to write database procedures directly in ABAP. AMDP is implemented in ABAP class methods (so called AMDP methods) that serve as a container for SQLScript code.

In this part you will create a helper class with two methods, working at the database layer.

The first **get_geo_point** method will convert coordinates to the **geom_ewkb** SAP HANA spatial type. You will use this method later to convert the human-readable coordinates to the internal SAP HANA representation. Both types of data will be stored in the database. This will guarantee data consistency between those two approaches.

The second **get_partners_around** method will return all the partners within some radius around one point defined by the coordinates. This is a typical geo search task. It will be used later as a RAP function exposed with the OData service.

## 1. Create Class for Working with the SAP HANA Spatial Engine

1. Right-click your **ZGEO** package name.

2. Choose **New** &rarr; **Other ABAP Repository Object** in the context menu.

  ![New Object](../common-images/new-object.png) 

3. Choose **ABAP Class** in the **Source Code Library** folder and then choose **Next**.

  ![New object type](../common-images/new-abap-class.png) 

4. Enter the following data and then choose **Add** in the **Interfaces** section:

  - **ZCL_GEO_HELPER** in the **Name** field
  - **Geo Engine Helper Class** in the **Description** field

  ![Object data](img/class-details.png) 

5. Search for the **if_amdp_marker_hdb** interface. Select it and choose **OK**.

  ![Add interface](img/add-interface.png)

6. Choose **Next**.

5. Select your transport (if applicable) and choose **Finish**.

6. Replace the code of the class with the one below:

~~~abap
CLASS zcl_geo_helper DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_amdp_marker_hdb.

    TYPES:
      ty_coord TYPE p LENGTH 16 DECIMALS 13,
      BEGIN OF ty_str,
        point TYPE geom_ewkb,
      END OF ty_str,
      ty_tab TYPE TABLE OF ty_str,

      BEGIN OF ty_coords,
        latitude  TYPE ty_coord,
        longitude TYPE ty_coord,
      END OF ty_coords,
      ty_coords_tab TYPE TABLE OF ty_coords,

      ty_radius TYPE i,

      BEGIN OF ty_partner_distance,
        Partner TYPE ZI_BusinessPartner-Partner,
        Distance TYPE int4,
      END OF ty_partner_distance,
      ty_partner_distance_tab TYPE TABLE OF ty_partner_distance.

    CLASS-METHODS get_geo_point
      IMPORTING
        VALUE(iv_latitude)  TYPE ty_coord
        VALUE(iv_longitude) TYPE ty_coord
      EXPORTING
        VALUE(et_points)    TYPE ty_tab
      RAISING
        cx_amdp_execution_error.

    CLASS-METHODS get_partners_around
      IMPORTING
        VALUE(iv_latitude)  TYPE ty_coord
        VALUE(iv_longitude) TYPE ty_coord
        VALUE(iv_radius) TYPE ty_radius
      EXPORTING
        VALUE(et_partners) TYPE ty_partner_distance_tab
      RAISING
        cx_amdp_execution_error.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS ZCL_GEO_HELPER IMPLEMENTATION.


  METHOD get_geo_point
    BY DATABASE PROCEDURE
    FOR HDB
    LANGUAGE SQLSCRIPT
    OPTIONS READ-ONLY.
    et_points = SELECT NEW ST_POINT( iv_longitude, iv_latitude ).ST_SRID( 4326 ) as point FROM DUMMY;
  ENDMETHOD.


  METHOD get_partners_around
    BY DATABASE PROCEDURE
    FOR HDB
    LANGUAGE SQLSCRIPT
    OPTIONS READ-ONLY
    USING zbupageo.

    et_partners = SELECT partner AS Partner,
                          location.ST_Distance( NEW ST_Point(iv_longitude, iv_latitude).ST_SRID( 4326 ) ) / 1000 as Distance
                   FROM zbupageo
                   WHERE location.ST_Distance( NEW ST_Point(iv_longitude, iv_latitude).ST_SRID( 4326 ) ) <= ( iv_radius * 1000 )
                   ORDER BY Distance;
  ENDMETHOD.
ENDCLASS.
~~~

7. Choose **Activate**.
   
  ![Activate](../common-images/activate-button.png)


## Result

You have created a class with ABAP Managed Database Procedures. This class can be now utilized in the service behavior methods.

## Next Step

[Add Behavior Artifacts](../behavior-definition/README.md)

## Reference Links

- [ABAP Managed Database Procedures](https://help.sap.com/docs/abap-cloud/abap-development-tools-user-guide/abap-managed-database-procedures-amdp)
- [SAP HANA Spatial Reference](https://help.sap.com/docs/SAP_HANA_PLATFORM/cbbbfc20871e4559abfd45a78ad58c02/e1c934157bd14021a3b43b5822b2cbe9.html)
