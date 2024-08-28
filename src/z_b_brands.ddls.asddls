@AbapCatalog.sqlViewName: 'ZV_BRANDSL'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
@Metadata.ignorePropagatedAnnotations: true
define view Z_B_BRANDS
  as select from zrent_brands
{
  key marca as Marca,
  @UI.hidden: true
      url   as Imagen
}
