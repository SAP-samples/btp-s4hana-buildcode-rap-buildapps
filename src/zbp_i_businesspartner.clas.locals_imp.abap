CLASS lhc_ZI_BusinessPartner DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR ZI_BusinessPartner RESULT result.

    METHODS getInRadius FOR READ
      IMPORTING keys FOR FUNCTION ZI_BusinessPartner~getinradius RESULT result.
    METHODS setGEOPoint FOR DETERMINE ON MODIFY
      IMPORTING keys FOR ZI_BusinessPartnerGeo~setGEOPoint.

ENDCLASS.

CLASS lhc_ZI_BusinessPartner IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD getInRadius.
    DATA: lt TYPE TABLE FOR READ RESULT ZI_BusinessPartner,
          lt_geo TYPE TABLE FOR READ RESULT ZI_BusinessPartnerGeo.

    DATA iv_latitude  TYPE zcl_geo_helper=>ty_coord.
    DATA iv_longitude TYPE zcl_geo_helper=>ty_coord.

    iv_latitude = keys[ 1 ]-%param-point_lat.
    iv_longitude = keys[ 1 ]-%param-point_lon.

    zcl_geo_helper=>get_partners_around(
      EXPORTING
        iv_latitude  = iv_latitude
        iv_longitude = iv_longitude
        iv_radius    = keys[ 1 ]-%param-radius
      IMPORTING
        et_partners = DATA(lt_ids)
    ).

    READ ENTITY IN LOCAL MODE ZI_BusinessPartner
      ALL FIELDS WITH CORRESPONDING #( lt_ids MAPPING Partner = partner )
      RESULT lt
      BY \_GeoData
      ALL FIELDS WITH CORRESPONDING #( lt_ids MAPPING Partner = partner )
      RESULT lt_geo.

    DATA ls_result TYPE zd_getinradius_result.
    LOOP AT lt ASSIGNING FIELD-SYMBOL(<ls>).
      READ TABLE lt_geo WITH KEY Partner = <ls>-Partner ASSIGNING FIELD-SYMBOL(<ls_geo>).
      IF sy-subrc IS INITIAL.
        MOVE-CORRESPONDING <ls_geo> TO ls_result.
      ENDIF.

      MOVE-CORRESPONDING <ls> TO ls_result.
      ls_result-Distance = lt_ids[ partner = <ls>-Partner ]-distance.
      CONCATENATE <ls>-NameFirst <ls>-NameLast INTO ls_result-PartnerName
                  SEPARATED BY space.

      APPEND VALUE #( %param = CORRESPONDING #( ls_result ) ) TO result.
    ENDLOOP.

  ENDMETHOD.

  METHOD setGEOPoint.
    DATA lt TYPE TABLE FOR READ RESULT ZI_BusinessPartnerGeo.

    READ ENTITY IN LOCAL MODE ZI_BusinessPartnerGeo
      ALL FIELDS WITH CORRESPONDING #( keys MAPPING Partner = Partner )
      RESULT lt.

    DATA lv_latitude TYPE zcl_geo_helper=>ty_coord.
    DATA lv_longitude TYPE zcl_geo_helper=>ty_coord.

    LOOP AT lt ASSIGNING FIELD-SYMBOL(<ls>).
      lv_latitude = <ls>-Latitude.
      lv_longitude = <ls>-Longitude.

      zcl_geo_helper=>get_geo_point(
        EXPORTING
          iv_latitude  = lv_latitude
          iv_longitude = lv_longitude
        IMPORTING
          et_points    = DATA(lt_points)
      ).

      <ls>-Location = lt_points[ 1 ]-point.
    ENDLOOP.

    MODIFY ENTITY IN LOCAL MODE ZI_BusinessPartnerGeo
      UPDATE
        FIELDS ( Location ) WITH CORRESPONDING #( lt MAPPING Partner = Partner ).
  ENDMETHOD.


ENDCLASS.
