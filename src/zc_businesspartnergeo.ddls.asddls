@EndUserText.label: 'Geo Data for Business Partners - Proj.'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZC_BusinessPartnerGeo as projection on ZI_BusinessPartnerGeo
{
    key Partner,
    Latitude,
    Longitude,
    
    _BusinessPartner: redirected to parent ZC_BusinessPartner
}
