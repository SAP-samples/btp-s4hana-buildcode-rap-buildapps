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
