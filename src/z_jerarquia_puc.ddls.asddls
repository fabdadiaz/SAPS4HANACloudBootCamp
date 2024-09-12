@AbapCatalog.sqlViewName: 'Z_JERARQUIA_PUC1'
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Arbol de cuentas'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view  Z_JERARQUIA_PUC as select distinct  from I_GLAccount

{
key  left( GLAccount , 10 ) as Cuenta,
CompanyCode as Company
}

union all
select distinct  from I_GLAccount
{
key  left( GLAccount , 9 ) as Cuenta,
CompanyCode as Company
}

union all
select distinct  from I_GLAccount
{
key  left( GLAccount , 8 ) as Cuenta,
CompanyCode as Company
}

union all
select distinct  from I_GLAccount
{
 key left( GLAccount , 7 ) as Cuenta,
 CompanyCode as Company
}
union all
select distinct   from I_GLAccount
{

key left( GLAccount , 6 ) as Cuenta,
CompanyCode as Company

}
union all
select distinct  from I_GLAccount
{ 
key left( GLAccount , 5 ) as Cuenta,
CompanyCode as Company
}
union all
select distinct  from I_GLAccount
{ 
 key left( GLAccount , 4 ) as Cuenta,
 CompanyCode as Company
}

union all
select distinct  from I_GLAccount
{
key left( GLAccount , 3 ) as Cuenta,
CompanyCode as Company
}
union all
select distinct  from I_GLAccount
{
key left( GLAccount , 2 ) as Cuenta,
CompanyCode as Company
}
union all
select distinct  from I_GLAccount
{ 
key left( GLAccount , 1 ) as Cuenta,
CompanyCode as Company
}




