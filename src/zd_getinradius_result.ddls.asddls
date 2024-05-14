@EndUserText.label: 'Result of function Get-in-Radius'
define abstract entity ZD_GETINRADIUS_RESULT
{
  key Partner: abap.char(10);
  PartnerName: abap.char(81);
  Latitude: abap.dec(16,13);
  Longitude: abap.dec(16,13);
  Distance: abap.int4;
}
