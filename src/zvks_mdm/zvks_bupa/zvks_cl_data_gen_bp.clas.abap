CLASS zvks_cl_data_gen_bp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES:
      if_oo_adt_classrun.

    TYPES:
      gtty_business_partner TYPE STANDARD TABLE OF zvks_ta_bupa
                            WITH DEFAULT KEY.

    CLASS-METHODS:
      gen_business_partner
        RETURNING VALUE(rt_business_partner) TYPE gtty_business_partner.

  PROTECTED SECTION.
  PRIVATE SECTION.


ENDCLASS.

CLASS zvks_cl_data_gen_bp IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(lt_business_partner) = zvks_cl_data_gen_bp=>gen_business_partner( ).
    IF lt_business_partner IS NOT INITIAL.
      out->write( |Generated ZVKS_TA_BUPA| ).
      out->write( lt_business_partner ).
    ENDIF.

  ENDMETHOD.

  METHOD gen_business_partner.

    SELECT SINGLE
           @abap_true
      FROM zvks_ta_bupa
      INTO @DATA(ls_data_found).
    IF sy-subrc IS INITIAL.
      DELETE FROM zvks_ta_bupa.
      COMMIT WORK AND WAIT.
    ENDIF.

    rt_business_partner = VALUE #(
( partner_id = '1000000001' partner_type = 'SPLR' prefix = 'Ms.'  first_name = 'Laura' middle_name = 'Anne' last_name = 'Smith' suffix = '' nick_name = 'standingvessel' tel_number = '+15092110479' email_addr = 'lauraannesmith@ymail.com' city = 'Oldtown'
street = '65 Oak Street' region = 'Maryland' zip_code = '21555' )
( partner_id = '1000000002' partner_type = 'SPLR' prefix = 'Ms.'  first_name = 'Jennifer'  middle_name = 'Renee' last_name = 'Taylor' suffix = '' nick_name = 'iratearm' tel_number = '+12763022773' email_addr = 'j_r@outlook.com' city = 'Helper' street =
'95 Lake Street' region = 'Utah' zip_code = '84526' )
( partner_id = '1000000003' partner_type = 'SPLR' prefix = 'Mr.'  first_name = 'Matthew'   middle_name = 'Lee' last_name = 'Lewis' suffix = '' nick_name = 'chemicaltooth' tel_number = '+12521464728' email_addr = 'matthew_l_lewis@outlook.com' city =
'Jennerstown' street = '18734 Division Street' region = 'Pennsylvania' zip_code = '15547' )
( partner_id = '1000000004' partner_type = 'SPLR' prefix = 'Mr.'  first_name = 'Kyle'      middle_name = 'Allen' last_name = 'Hernandez' suffix = 'IV' nick_name = 'ultrahose' tel_number = '+13215940263' email_addr = 'kyle@live.com' city = 'Olney' street
= '45558 River Road' region = 'Montana' zip_code = '59927' )
( partner_id = '1000000005' partner_type = 'SPLR' prefix = 'Mrs.' first_name = 'Jennifer'  middle_name = 'Renee' last_name = 'Hill' suffix = '' nick_name = 'nondescriptsign' tel_number = '+14304625075' email_addr = 'j_r_hill@outlook.com' city =
'Larrabee' street = '65 3rd Avenue' region = 'Iowa' zip_code = '51029' )
( partner_id = '1000000006' partner_type = 'SPLR' prefix = 'Mr.'  first_name = 'Henry'     middle_name = 'Joseph' last_name = 'Young' suffix = 'II' nick_name = 'tritebucket' tel_number = '+17868401089' email_addr = 'hyoung22@live.com' city = 'Laughlin'
street = '20635 2nd Street East' region = 'Nevada' zip_code = '89028' )
( partner_id = '1000000007' partner_type = 'SPLR' prefix = 'Mr.'  first_name = 'Sean'      middle_name = 'Eugene' last_name = 'Turner' suffix = '' nick_name = 'temporaryproperty' tel_number = '+12233388127' email_addr = 'sean@rocketmail.com' city =
'Lemont' street = '51196 Cherry Lane' region = 'Pennsylvania' zip_code = '16851' )
( partner_id = '1000000008' partner_type = 'SPLR' prefix = 'Mr.'  first_name = 'Ryan'      middle_name = 'Scott' last_name = 'Henderson' suffix = '' nick_name = 'puzzledbehavior' tel_number = '+12109156866' email_addr = 'r.s.henderson@gmail.com' city =
'Lahmansville' street = '232 6th Street North' region = 'West Virginia' zip_code = '26731' )
( partner_id = '1000000009' partner_type = 'SPLR' prefix = 'Ms.'  first_name = 'Erin'      middle_name = 'Dawn' last_name = 'Bennett' suffix = '' nick_name = 'charmingspring' tel_number = '+19149883284' email_addr = 'ed@hotmail.com' city = 'Hebron'
street = '77 Front Street North' region = 'Ohio' zip_code = '43025' )
( partner_id = '1000000010' partner_type = 'SPLR' prefix = 'Mr.'  first_name = 'Mark'      middle_name = 'Anthony' last_name = 'Flores' suffix = '' nick_name = 'faststory' tel_number = '+14438339136' email_addr = 'mark_flores@ymail.com' city = 'Tulsa'
street = '26711 Charles Street' region = 'Oklahoma' zip_code = '74155' )
( partner_id = '1000000011' partner_type = 'SPLR' prefix = 'Mr.'  first_name = 'Jeremy'    middle_name = 'George' last_name = 'Moore' suffix = 'IV' nick_name = 'zestygate' tel_number = '+19353949094' email_addr = 'j.moore@live.com' city = 'Deer Creek'
street = '689 Route 10' region = 'Minnesota' zip_code = '56527' )
( partner_id = '1000000012' partner_type = 'SPLR' prefix = 'Ms.'  first_name = 'Tiffany'   middle_name = 'Marie' last_name = 'Rivera' suffix = '' nick_name = 'puzzlingexistence' tel_number = '+13395074556' email_addr = 't.rivera11@yahoo.com' city =
'Charlotte' street = '87 George Street' region = 'North Carolina' zip_code = '28234' )
( partner_id = '1000000013' partner_type = 'SPLR' prefix = 'Ms.'  first_name = 'Claire'    middle_name = 'Kay' last_name = 'Williams' suffix = '' nick_name = 'feignedocean' tel_number = '+15017045538' email_addr = 'claire.williams@yahoo.com' city =
'Ward Cove' street = '80 East Street' region = 'Alaska' zip_code = '99928' )
( partner_id = '1000000014' partner_type = 'SPLR' prefix = 'Mr.'  first_name = 'Sebastian' middle_name = 'Edward' last_name = 'Brown' suffix = 'Jr.' nick_name = 'dynamictrip' tel_number = '+19280635963' email_addr = 'sebastian_edward_brown26@yahoo.com'
city = 'Philadelphia' street = '35 Woodland Drive' region = 'Pennsylvania' zip_code = '19103' )
( partner_id = '1000000015' partner_type = 'SPLR' prefix = 'Ms.'  first_name = 'Lauren'    middle_name = 'Ruth' last_name = 'Perry' suffix = '' nick_name = 'chemicalshelf' tel_number = '+15750412224' email_addr = 'l.r.perry@live.com' city = 'Reevesville'
street = '972 Academy Street' region = 'South Carolina' zip_code = '29471' )
( partner_id = '2000000001' partner_type = 'MNFR' prefix = 'Mr.'  first_name = 'Patrick'   middle_name = 'Joseph' last_name = 'Gray' suffix = '' nick_name = 'painstakingfrog' tel_number = '+13601215656' email_addr = 'p_j_gray@yahoo.com' city = 'Cairo'
street = '42387 Liberty Street' region = 'New York' zip_code = '12413' )
( partner_id = '2000000002' partner_type = 'MNFR' prefix = 'Mr.'  first_name = 'Aaron'     middle_name = 'Joseph' last_name = 'Jones' suffix = '' nick_name = 'pumpedmetal' tel_number = '+15805382430' email_addr = 'a.jones@rocketmail.com' city =
'Delaplane' street = '1161 College Street' region = 'Virginia' zip_code = '20144' )
( partner_id = '2000000003' partner_type = 'MNFR' prefix = 'Mr.'  first_name = 'Jack'      middle_name = 'Alan' last_name = 'Taylor' suffix = '' nick_name = 'tallcat' tel_number = '+15012428162' email_addr = 'j.a@aol.com' city = 'Colorado Springs' street
= '9920 8th Street' region = 'Colorado' zip_code = '80935' )
( partner_id = '2000000004' partner_type = 'MNFR' prefix = 'Mrs.' first_name = 'Allison'  middle_name = 'Ruth' last_name = 'Cooper' suffix = 'III' nick_name = 'tenderorder' tel_number = '+12109438710' email_addr = 'a_r_cooper@hotmail.com' city =
'Hendersonville' street = '21 Colonial Drive' region = 'North Carolina' zip_code = '28792' )
( partner_id = '2000000005' partner_type = 'MNFR' prefix = 'Mrs.' first_name = 'Evelyn'   middle_name = 'Michelle' last_name = 'Peterson' suffix = '' nick_name = 'briefface' tel_number = '+17252600318' email_addr = 'evelyn.m.peterson@live.com' city =
'San Francisco' street = '428 5th Street' region = 'California' zip_code = '94164' )
( partner_id = '2000000006' partner_type = 'MNFR' prefix = 'Mr.'  first_name = 'John'      middle_name = 'James' last_name = 'Mitchell' suffix = '' nick_name = 'somberexchange' tel_number = '+18171800783' email_addr = 'johnmitchell@gmail.com' city =
'El Paso' street = '55033 Meadow Lane' region = 'Texas' zip_code = '88511' )
( partner_id = '2000000007' partner_type = 'MNFR' prefix = 'Mrs.' first_name = 'Allison'  middle_name = 'Jean' last_name = 'Rogers' suffix = '' nick_name = 'overtcushion' tel_number = '+16156294059' email_addr = 'allison_j_rogers43@gmail.com' city =
'Shasta Lake' street = '19 Beech Street' region = 'California' zip_code = '96019' )
( partner_id = '2000000008' partner_type = 'MNFR' prefix = 'Mr.'  first_name = 'Joshua'    middle_name = 'Wayne' last_name = 'Price' suffix = '' nick_name = 'spikyface' tel_number = '+13165199422' email_addr = 'j.price@ymail.com' city = 'Volin' street =
'465 Winding Way' region = 'South Dakota' zip_code = '57072' )
( partner_id = '2000000009' partner_type = 'MNFR' prefix = 'Mr.'  first_name = 'Aaron'     middle_name = 'George' last_name = 'Kelly' suffix = '' nick_name = 'publicjar' tel_number = '+12815207972' email_addr = 'aaron.kelly@gmail.com' city =
'Whittington' street = '60 Cambridge Court' region = 'Illinois' zip_code = '62897' )
( partner_id = '2000000010' partner_type = 'MNFR' prefix = 'Mr.'  first_name = 'Timothy'   middle_name = 'William' last_name = 'Cooper' suffix = 'Jr.' nick_name = 'vivaciousfuel' tel_number = '+18706268947' email_addr = 't_cooper70@live.com' city =
'Charleston' street = '90 2nd Avenue' region = 'West Virginia' zip_code = '25336' )
( partner_id = '2000000011' partner_type = 'MNFR' prefix = 'Mr.'  first_name = 'Sean'      middle_name = 'Lee' last_name = 'Walker' suffix = '' nick_name = 'festivevessel' tel_number = '+13160156024' email_addr = 's_walker@hotmail.com' city = 'Hamlet'
street = '879 Fairway Drive' region = 'North Carolina' zip_code = '28345' )
( partner_id = '2000000012' partner_type = 'MNFR' prefix = 'Ms.'  first_name = 'Sofia'     middle_name = 'Michelle' last_name = 'Gray' suffix = '' nick_name = 'kindlyforce' tel_number = '+18483341099' email_addr = 'sofiagray@yahoo.com' city = 'Hazleton'
street = '295 Pine Street' region = 'Iowa' zip_code = '50641' )
( partner_id = '2000000013' partner_type = 'MNFR' prefix = 'Mrs.' first_name = 'Abigail'  middle_name = 'Dawn' last_name = 'Allen' suffix = '' nick_name = 'frighteninggovernor' tel_number = '+14436204054' email_addr = 'aallen95@gmail.com' city = 'Nelson'
street = '478 Liberty Street' region = 'Minnesota' zip_code = '56355' )
( partner_id = '2000000014' partner_type = 'MNFR' prefix = 'Mrs.' first_name = 'Michelle'  middle_name = 'Anne' last_name = 'Edwards' suffix = '' nick_name = 'magentacook' tel_number = '+19840475006' email_addr = 'michelle_edwards@rocketmail.com' city =
'Austin' street = '169 Highland Avenue' region = 'Texas' zip_code = '78761' )
( partner_id = '2000000015' partner_type = 'MNFR' prefix = 'Ms.'  first_name = 'Olivia'    middle_name = 'Lynn' last_name = 'Baker' suffix = '' nick_name = 'painstakingearth' tel_number = '+19086921538' email_addr = 'o.l.baker@hotmail.com' city =
'Riverside' street = '1346 King Street' region = 'California' zip_code = '92505' )
).

    LOOP AT rt_business_partner ASSIGNING FIELD-SYMBOL(<lfs_business_partner>).
      <lfs_business_partner>-client                = sy-mandt.
      <lfs_business_partner>-country               = 'USA'.
      <lfs_business_partner>-created_by            = cl_abap_context_info=>get_user_technical_name( ).
      <lfs_business_partner>-created_at            = cl_abap_tstmp=>utclong2tstmp( utclong_current( ) ).
      <lfs_business_partner>-local_last_changed_by = cl_abap_context_info=>get_user_technical_name( ).
      <lfs_business_partner>-local_last_changed_at = cl_abap_tstmp=>utclong2tstmp( utclong_current( ) ).
      <lfs_business_partner>-last_changed_at       = cl_abap_tstmp=>utclong2tstmp( utclong_current( ) ).
    ENDLOOP.

    IF rt_business_partner IS NOT INITIAL.
      MODIFY zvks_ta_bupa FROM TABLE @rt_business_partner.
      COMMIT WORK AND WAIT.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
