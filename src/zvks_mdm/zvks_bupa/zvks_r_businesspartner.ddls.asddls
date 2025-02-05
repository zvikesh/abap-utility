//Description
@EndUserText.label: 'Business Partner'
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
//Analytical
@Analytics.dataCategory: #DIMENSION
define view entity ZVKS_R_BusinessPartner
  as select from zvks_ta_bupa
{
  key partner_id            as PartnerID,
  key partner_type          as PartnerType,
      prefix                as Prefix,

      @Semantics.name.fullName : true
      first_name            as FirstName,

      @Semantics.name.additionalName: true
      middle_name           as MiddleName,

      @Semantics.name.familyName: true
      last_name             as LastName,

      @Semantics.name.suffix: true
      suffix                as Suffix,

      @Semantics.name.nickName: true
      nick_name             as NickName,

      @Semantics.telephone.type: [ #WORK ]
      tel_number            as Phone,

      @Semantics.eMail.address: true
      @Semantics.eMail.type:  [#WORK]
      email_addr            as Email,

      @Semantics.address.city: true
      city                  as City,

      @Semantics.address.street: true
      street                as Street,

      @Semantics.address.region: true
      region                as Region,

      @Semantics.address.country: true
      country               as Country,

      @Semantics.address.zipCode: true
      zip_code              as ZipCode,

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
      last_changed_at       as LastChangedAt //Total ETag
}
