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
