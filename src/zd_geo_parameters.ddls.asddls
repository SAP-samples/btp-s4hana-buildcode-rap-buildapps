@EndUserText.label: 'Parameters for function Get-in-Radius'
define abstract entity ZD_GEO_PARAMETERS  
 {
    radius: int4;
    point_lon: abap.char( 25 );
    point_lat: abap.char( 25 );
}
