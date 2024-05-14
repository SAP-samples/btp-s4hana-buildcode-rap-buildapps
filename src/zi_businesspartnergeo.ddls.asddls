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
