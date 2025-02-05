//Description
@EndUserText.label: 'Products'
//DCL
@AccessControl.authorizationCheck: #NOT_REQUIRED
//VDM Layer
@VDM.viewType: #BASIC
//Performance
@ObjectModel.usageType:{
    serviceQuality: #A,
    dataClass: #MASTER,
    sizeCategory: #L
}
define view entity ZVKS_R_Products
  as select from zvks_ta_prod
  /* Foreign Key Association(s) */
  association [1..1] to I_Currency             as _Currency               on  $projection.Currency = _Currency.Currency
  association [1..1] to I_UnitOfMeasure        as _BaseUnitOfMeasure      on  $projection.BaseUnitOfMeasure = _BaseUnitOfMeasure.UnitOfMeasure
  association [1..1] to I_UnitOfMeasure        as _DimensionUnitOfMeasure on  $projection.DimensionUnitOfMeasure = _DimensionUnitOfMeasure.UnitOfMeasure
  association [1..1] to I_UnitOfMeasure        as _WeightUnitOfMeasure    on  $projection.WeightUnitOfMeasure = _WeightUnitOfMeasure.UnitOfMeasure
  association [1..1] to ZVKS_R_BusinessPartner as _Manufacturer           on  $projection.SupplierID    = _Manufacturer.PartnerID
                                                                          and _Manufacturer.PartnerType = 'SPLR'
  association [1..1] to ZVKS_R_BusinessPartner as _Supplier               on  $projection.ManufacturerID = _Supplier.PartnerID
                                                                          and _Supplier.PartnerType      = 'MNFR'
{
      @EndUserText:{ label: 'Product ID', quickInfo: 'Product Identification' }
  key id                    as ProductID,

      @EndUserText:{ label: 'Product Name', quickInfo: 'Product Name' }
      name                  as ProductName,

      @EndUserText:{ label: 'Category', quickInfo: 'Product Category' }
      category              as Category,

      @EndUserText:{ label: 'Sub Category', quickInfo: 'Product Sub Category' }
      sub_category          as SubCategory,

      @EndUserText:{ label: 'Unit Price', quickInfo: 'Unit Price' }
      unit_price            as UnitPrice,

      @EndUserText:{ label: 'Currency', quickInfo: 'Unit Price Currency' }
      @ObjectModel.foreignKey.association:'_Currency'
      currency              as Currency,

      @EndUserText:{ label: 'Rating', quickInfo: 'Product Rating' }
      rating                as Rating,

      @EndUserText:{ label: 'Maximum Quantity', quickInfo: 'Maximum Quantity' }
      @Semantics.quantity.unitOfMeasure: 'BaseUnitOfMeasure'
      qty_maximum           as MaximumQuantity,

      @EndUserText:{ label: 'Minimum Quantity', quickInfo: 'Minimum Quantity' }
      @Semantics.quantity.unitOfMeasure: 'BaseUnitOfMeasure'
      qty_minimum           as MinimumQuantity,

      @EndUserText:{ label: 'Actual Quantity', quickInfo: 'Actual Quantity' }
      @Semantics.quantity.unitOfMeasure: 'BaseUnitOfMeasure'
      qty_actual            as ActualQuantity,

      @EndUserText:{ label: 'Unit of Measure (Base)', quickInfo: 'Unit of Measure (Base)' }
      @ObjectModel.foreignKey.association:'_BaseUnitOfMeasure'
      base_uom              as BaseUnitOfMeasure,

      @EndUserText:{ label: '', quickInfo: '' }
      @Semantics.quantity.unitOfMeasure: 'DimensionUnitOfMeasure'
      height                as Height,

      @EndUserText:{ label: '', quickInfo: '' }
      @Semantics.quantity.unitOfMeasure: 'DimensionUnitOfMeasure'
      width                 as Width,

      @EndUserText:{ label: 'Depth', quickInfo: 'Depth' }
      @Semantics.quantity.unitOfMeasure: 'DimensionUnitOfMeasure'
      depth                 as Depth,

      @EndUserText:{ label: 'UoM for Dimensions', quickInfo: 'Unit of Measurement for Dimensions' }
      @ObjectModel.foreignKey.association:'_DimensionUnitOfMeasure'
      dim_uom               as DimensionUnitOfMeasure,

      @EndUserText:{ label: 'Weight', quickInfo: 'Weight' }
      @Semantics.quantity.unitOfMeasure: 'WeightUnitOfMeasure'
      weight                as Weight,

      @EndUserText:{ label: 'UoM for Weight', quickInfo: 'Unit of Measurement for Weight' }
      @ObjectModel.foreignKey.association:'_WeightUnitOfMeasure'
      weight_uom            as WeightUnitOfMeasure,

      @EndUserText:{ label: 'Manufacturer ID', quickInfo: 'Manufacturer ID' }
      @ObjectModel.foreignKey.association:'_Manufacturer'
      manufact_id           as ManufacturerID,

      @EndUserText:{ label: 'Supplier ID', quickInfo: 'Supplier ID' }
      @ObjectModel.foreignKey.association:'_Supplier'
      supplier_id           as SupplierID,

      @EndUserText:{ label: 'Expiry Date', quickInfo: 'Expiry Date' }
      expiry_dat            as ExpiryDate,

      @EndUserText:{ label: 'Block Procurement', quickInfo: 'Block Procurement' }
      blk_proc              as BlockedForProcurement,

      /*Administrative Fields*/

      @EndUserText.label: 'Created By'
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,

      @EndUserText.label: 'Created At'
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,

      @EndUserText.label: 'Local Last Changed By'
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,

      @EndUserText.label: 'Local Last Changed At'
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt, //Local ETag

      @EndUserText.label: 'Last Changed At'
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt, //Total ETag

      /* Public Associations */
      _Currency,
      _BaseUnitOfMeasure,
      _DimensionUnitOfMeasure,
      _WeightUnitOfMeasure,
      _Manufacturer,
      _Supplier

}
