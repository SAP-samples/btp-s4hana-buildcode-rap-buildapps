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
