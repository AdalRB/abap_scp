@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details Customer'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view Z_B_DET_CUSTOMER
  as select from zrent_customers
{
  key doc_id    as Id,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Email,
      cntr_type as TipoContrato
}
