@AbapCatalog.sqlViewName: 'ZV_RENTL'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view Z_I_RENTING
  as select from Z_B_CARS as Cars
  association [1]    to Z_B_REM_DAYS     as _RemDays      on Cars.Matricula = _RemDays.Matricula
  association [0..*] to Z_B_BRANDS       as _Brands       on Cars.Marca = _Brands.Marca
  association [0..*] to Z_B_DET_CUSTOMER as _DetCustomers on Cars.Matricula = _DetCustomers.Matricula
{
  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      Unidad,
      Combustible,
      Consumo,
      FechaFabr,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      Desde,
      Hasta,
//      0 neutral grey
//      1 negative red
//      2 critical yellow
//      3 positive geen
      case
        when _RemDays.Dias <= 0 then 0
        when _RemDays.Dias between 1 and 30 then 1
        when _RemDays.Dias between 31 and 100 then 2
        when _RemDays.Dias > 100 then 3
        else 0
        end as DiasRestantes,
      '' as Estado,
      _Brands.Imagen,
      _DetCustomers
}
