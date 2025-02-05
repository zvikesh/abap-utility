CLASS zvks_cl_data_gen_prod DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES:
      if_oo_adt_classrun.

    TYPES:
      gtty_products TYPE STANDARD TABLE OF zvks_ta_prod
                    WITH DEFAULT KEY.

    CLASS-METHODS:
      gen_products
        RETURNING VALUE(rt_products) TYPE gtty_products.

  PROTECTED SECTION.
  PRIVATE SECTION.


ENDCLASS.

CLASS zvks_cl_data_gen_prod IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(lt_products) = zvks_cl_data_gen_prod=>gen_products( ).
    IF lt_products IS NOT INITIAL.
      out->write( |Generated ZVKS_TA_PROD| ).
      out->write( lt_products ).
    ENDIF.

  ENDMETHOD.

  METHOD gen_products.

    SELECT SINGLE
           @abap_true
      FROM zvks_ta_prod
      INTO @DATA(ls_data_found).
    IF sy-subrc IS INITIAL.
      DELETE FROM zvks_ta_prod.
      COMMIT WORK AND WAIT.
    ENDIF.

    rt_products = VALUE #(
    ( id = 'PRD001' name = 'Car Kit' category = 'Automotive' sub_category = 'Car' manufact_id = '2000000001' supplier_id = '1000000001' )
    ( id = 'PRD002' name = 'Party Paraphernalia' category = 'Entertainment' sub_category = 'Party' manufact_id = '2000000002' supplier_id = '1000000002' )
    ( id = 'PRD003' name = 'Cleaning Doodad' category = 'Home' sub_category = 'Cleaning' manufact_id = '2000000003' supplier_id = '1000000003' )
    ( id = 'PRD004' name = 'Medicine Doodad' category = 'Health' sub_category = 'Medicine' manufact_id = '2000000004' supplier_id = '1000000004' )
    ( id = 'PRD005' name = 'Party Implement' category = 'Entertainment' sub_category = 'Party' manufact_id = '2000000005' supplier_id = '1000000005' )
    ( id = 'PRD006' name = 'Truck Accessory' category = 'Automotive' sub_category = 'Truck' manufact_id = '2000000006' supplier_id = '1000000006' )
    ( id = 'PRD007' name = 'Kids Mechanism' category = 'Clothing' sub_category = 'Kids' manufact_id = '2000000007' supplier_id = '1000000007' )
    ( id = 'PRD008' name = 'Truck Gizmo' category = 'Automotive' sub_category = 'Truck' manufact_id = '2000000008' supplier_id = '1000000008' )
    ( id = 'PRD009' name = 'Cat Apparatus' category = 'Pets' sub_category = 'Cat' manufact_id = '2000000009' supplier_id = '1000000009' )
    ( id = 'PRD010' name = 'Outdoors Machine' category = 'Activity' sub_category = 'Outdoors' manufact_id = '2000000010' supplier_id = '1000000010' )
    ( id = 'PRD011' name = 'Car Gear' category = 'Automotive' sub_category = 'Car' manufact_id = '2000000001' supplier_id = '1000000001' )
    ( id = 'PRD012' name = 'Biking Gadget' category = 'Activity' sub_category = 'Biking' manufact_id = '2000000002' supplier_id = '1000000002' )
    ( id = 'PRD013' name = 'Furniture Supplies' category = 'Home' sub_category = 'Furniture' manufact_id = '2000000003' supplier_id = '1000000003' )
    ( id = 'PRD014' name = 'Aquarium Machine' category = 'Pets' sub_category = 'Aquarium' manufact_id = '2000000004' supplier_id = '1000000004' )
    ( id = 'PRD015' name = 'Furniture Attachment' category = 'Home' sub_category = 'Furniture' manufact_id = '2000000005' supplier_id = '1000000005' )
    ( id = 'PRD016' name = 'Camera Tool' category = 'Electronics' sub_category = 'Camera' manufact_id = '2000000006' supplier_id = '1000000006' )
    ( id = 'PRD017' name = 'Swimming Machine' category = 'Activity' sub_category = 'Swimming' manufact_id = '2000000007' supplier_id = '1000000007' )
    ( id = 'PRD018' name = 'Gardening Rig' category = 'Home' sub_category = 'Gardening' manufact_id = '2000000008' supplier_id = '1000000008' )
    ( id = 'PRD019' name = 'Tire Whatchamacallit' category = 'Automotive' sub_category = 'Tire' manufact_id = '2000000009' supplier_id = '1000000009' )
    ( id = 'PRD020' name = 'Bath Component' category = 'Beauty' sub_category = 'Bath' manufact_id = '2000000010' supplier_id = '1000000010' )
    ( id = 'PRD021' name = 'Game Paraphernalia' category = 'Entertainment' sub_category = 'Game' manufact_id = '2000000001' supplier_id = '1000000001' )
    ( id = 'PRD022' name = 'Party Implement' category = 'Entertainment' sub_category = 'Party' manufact_id = '2000000002' supplier_id = '1000000002' )
    ( id = 'PRD023' name = 'Cat Supplies' category = 'Pets' sub_category = 'Cat' manufact_id = '2000000003' supplier_id = '1000000003' )
    ( id = 'PRD024' name = 'Biking Instrument' category = 'Activity' sub_category = 'Biking' manufact_id = '2000000004' supplier_id = '1000000004' )
    ( id = 'PRD025' name = 'Kitchen Implement' category = 'Home' sub_category = 'Kitchen' manufact_id = '2000000005' supplier_id = '1000000005' )
    ( id = 'PRD026' name = 'Swimming Accessory' category = 'Activity' sub_category = 'Swimming' manufact_id = '2000000006' supplier_id = '1000000006' )
    ( id = 'PRD027' name = 'Kids Supplies' category = 'Clothing' sub_category = 'Kids' manufact_id = '2000000007' supplier_id = '1000000007' )
    ( id = 'PRD028' name = 'Swimming Rig' category = 'Activity' sub_category = 'Swimming' manufact_id = '2000000008' supplier_id = '1000000008' )
    ( id = 'PRD029' name = 'Book Item' category = 'Entertainment' sub_category = 'Book' manufact_id = '2000000009' supplier_id = '1000000009' )
    ( id = 'PRD030' name = 'Hair Care Machine' category = 'Beauty' sub_category = 'Hair Care' manufact_id = '2000000010' supplier_id = '1000000010' )
    ( id = 'PRD031' name = 'Cat Equipment' category = 'Pets' sub_category = 'Cat' manufact_id = '2000000001' supplier_id = '1000000001' )
    ( id = 'PRD032' name = 'Skin Care Gadget' category = 'Beauty' sub_category = 'Skin Care' manufact_id = '2000000002' supplier_id = '1000000002' )
    ( id = 'PRD033' name = 'Storage Mechanism' category = 'Home' sub_category = 'Storage' manufact_id = '2000000003' supplier_id = '1000000003' )
    ( id = 'PRD034' name = 'Cleaning Apparatus' category = 'Home' sub_category = 'Cleaning' manufact_id = '2000000004' supplier_id = '1000000004' )
    ( id = 'PRD035' name = 'Computer Paraphernalia' category = 'Electronics' sub_category = 'Computer' manufact_id = '2000000005' supplier_id = '1000000005' )
    ( id = 'PRD036' name = 'Computer Mechanism' category = 'Electronics' sub_category = 'Computer' manufact_id = '2000000006' supplier_id = '1000000006' )
    ( id = 'PRD037' name = 'Biking Item' category = 'Activity' sub_category = 'Biking' manufact_id = '2000000007' supplier_id = '1000000007' )
    ( id = 'PRD038' name = 'Fitness Contraption' category = 'Activity' sub_category = 'Fitness' manufact_id = '2000000008' supplier_id = '1000000008' )
    ( id = 'PRD039' name = 'Mens Item' category = 'Clothing' sub_category = 'Mens' manufact_id = '2000000009' supplier_id = '1000000009' )
    ( id = 'PRD040' name = 'Camera Instrument' category = 'Electronics' sub_category = 'Camera' manufact_id = '2000000010' supplier_id = '1000000010' )
    ( id = 'PRD041' name = 'Skin Care Gadget' category = 'Beauty' sub_category = 'Skin Care' manufact_id = '2000000001' supplier_id = '1000000001' )
    ( id = 'PRD042' name = 'Cooking Device' category = 'Home' sub_category = 'Cooking' manufact_id = '2000000002' supplier_id = '1000000002' )
    ( id = 'PRD043' name = 'Vitamin Implement' category = 'Health' sub_category = 'Vitamin' manufact_id = '2000000003' supplier_id = '1000000003' )
    ( id = 'PRD044' name = 'Dining Instrument' category = 'Home' sub_category = 'Dining' manufact_id = '2000000004' supplier_id = '1000000004' )
    ( id = 'PRD045' name = 'Home Improvement Paraphernalia' category = 'Home' sub_category = 'Home Improvement' manufact_id = '2000000005' supplier_id = '1000000005' )
    ( id = 'PRD046' name = 'Medicine Gear' category = 'Health' sub_category = 'Medicine' manufact_id = '2000000006' supplier_id = '1000000006' )
    ( id = 'PRD047' name = 'Cooking Implement' category = 'Home' sub_category = 'Cooking' manufact_id = '2000000007' supplier_id = '1000000007' )
    ( id = 'PRD048' name = 'Book Supplies' category = 'Entertainment' sub_category = 'Book' manufact_id = '2000000008' supplier_id = '1000000008' )
    ( id = 'PRD049' name = 'Movie Widget' category = 'Entertainment' sub_category = 'Movie' manufact_id = '2000000009' supplier_id = '1000000009' )
    ( id = 'PRD050' name = 'Dog Rig' category = 'Pets' sub_category = 'Dog' manufact_id = '2000000010' supplier_id = '1000000010' )
    ( id = 'PRD051' name = 'Bedding Kit' category = 'Home' sub_category = 'Bedding' manufact_id = '2000000001' supplier_id = '1000000001' )
    ( id = 'PRD052' name = 'Camera Gizmo' category = 'Electronics' sub_category = 'Camera' manufact_id = '2000000002' supplier_id = '1000000002' )
    ( id = 'PRD053' name = 'Computer Gear' category = 'Electronics' sub_category = 'Computer' manufact_id = '2000000003' supplier_id = '1000000003' )
    ( id = 'PRD054' name = 'Camping Implement' category = 'Activity' sub_category = 'Camping' manufact_id = '2000000004' supplier_id = '1000000004' )
    ( id = 'PRD055' name = 'Phone Attachment' category = 'Electronics' sub_category = 'Phone' manufact_id = '2000000005' supplier_id = '1000000005' )
    ( id = 'PRD056' name = 'Cat Doodad' category = 'Pets' sub_category = 'Cat' manufact_id = '2000000006' supplier_id = '1000000006' )
    ( id = 'PRD057' name = 'Technology Device' category = 'Electronics' sub_category = 'Technology' manufact_id = '2000000007' supplier_id = '1000000007' )
    ( id = 'PRD058' name = 'Medicine Widget' category = 'Health' sub_category = 'Medicine' manufact_id = '2000000008' supplier_id = '1000000008' )
    ( id = 'PRD059' name = 'Bedding Contraption' category = 'Home' sub_category = 'Bedding' manufact_id = '2000000009' supplier_id = '1000000009' )
    ( id = 'PRD060' name = 'Kids Instrument' category = 'Clothing' sub_category = 'Kids' manufact_id = '2000000010' supplier_id = '1000000010' )
    ( id = 'PRD061' name = 'Home Improvement Gear' category = 'Home' sub_category = 'Home Improvement' manufact_id = '2000000001' supplier_id = '1000000001' )
    ( id = 'PRD062' name = 'Womens Device' category = 'Clothing' sub_category = 'Womens' manufact_id = '2000000002' supplier_id = '1000000002' )
    ( id = 'PRD063' name = 'Bath Instrument' category = 'Beauty' sub_category = 'Bath' manufact_id = '2000000003' supplier_id = '1000000003' )
    ( id = 'PRD064' name = 'Tire Equipment' category = 'Automotive' sub_category = 'Tire' manufact_id = '2000000004' supplier_id = '1000000004' )
    ( id = 'PRD065' name = 'Tire Thingamajig' category = 'Automotive' sub_category = 'Tire' manufact_id = '2000000005' supplier_id = '1000000005' )
    ( id = 'PRD066' name = 'Womens Widget' category = 'Clothing' sub_category = 'Womens' manufact_id = '2000000006' supplier_id = '1000000006' )
    ( id = 'PRD067' name = 'Car Thingamajig' category = 'Automotive' sub_category = 'Car' manufact_id = '2000000007' supplier_id = '1000000007' )
    ( id = 'PRD068' name = 'Vitamin Rig' category = 'Health' sub_category = 'Vitamin' manufact_id = '2000000008' supplier_id = '1000000008' )
    ( id = 'PRD069' name = 'Camera Mechanism' category = 'Electronics' sub_category = 'Camera' manufact_id = '2000000009' supplier_id = '1000000009' )
    ( id = 'PRD070' name = 'Fitness Equipment' category = 'Activity' sub_category = 'Fitness' manufact_id = '2000000010' supplier_id = '1000000010' )
    ( id = 'PRD071' name = 'Makeup Contraption' category = 'Beauty' sub_category = 'Makeup' manufact_id = '2000000001' supplier_id = '1000000001' )
    ( id = 'PRD072' name = 'Jewelry Contraption' category = 'Clothing' sub_category = 'Jewelry' manufact_id = '2000000002' supplier_id = '1000000002' )
    ( id = 'PRD073' name = 'Gardening Apparatus' category = 'Home' sub_category = 'Gardening' manufact_id = '2000000003' supplier_id = '1000000003' )
    ( id = 'PRD074' name = 'Movie Attachment' category = 'Entertainment' sub_category = 'Movie' manufact_id = '2000000004' supplier_id = '1000000004' )
    ( id = 'PRD075' name = 'Tire Whatchamacallit' category = 'Automotive' sub_category = 'Tire' manufact_id = '2000000005' supplier_id = '1000000005' )
    ( id = 'PRD076' name = 'Movie Kit' category = 'Entertainment' sub_category = 'Movie' manufact_id = '2000000006' supplier_id = '1000000006' )
    ( id = 'PRD077' name = 'Music Gear' category = 'Entertainment' sub_category = 'Music' manufact_id = '2000000007' supplier_id = '1000000007' )
    ( id = 'PRD078' name = 'Dining Item' category = 'Home' sub_category = 'Dining' manufact_id = '2000000008' supplier_id = '1000000008' )
    ( id = 'PRD079' name = 'Mens Kit' category = 'Clothing' sub_category = 'Mens' manufact_id = '2000000009' supplier_id = '1000000009' )
    ( id = 'PRD080' name = 'Camera Doodad' category = 'Electronics' sub_category = 'Camera' manufact_id = '2000000010' supplier_id = '1000000010' )
    ( id = 'PRD081' name = 'Music Attachment' category = 'Entertainment' sub_category = 'Music' manufact_id = '2000000001' supplier_id = '1000000001' )
    ( id = 'PRD082' name = 'Womens Whatchamacallit' category = 'Clothing' sub_category = 'Womens' manufact_id = '2000000002' supplier_id = '1000000002' )
    ( id = 'PRD083' name = 'Makeup Implement' category = 'Beauty' sub_category = 'Makeup' manufact_id = '2000000003' supplier_id = '1000000003' )
    ( id = 'PRD084' name = 'Cat Gizmo' category = 'Pets' sub_category = 'Cat' manufact_id = '2000000004' supplier_id = '1000000004' )
    ( id = 'PRD085' name = 'Tire Gizmo' category = 'Automotive' sub_category = 'Tire' manufact_id = '2000000005' supplier_id = '1000000005' )
    ( id = 'PRD086' name = 'Engine Attachment' category = 'Automotive' sub_category = 'Engine' manufact_id = '2000000006' supplier_id = '1000000006' )
    ( id = 'PRD087' name = 'Vitamin Contraption' category = 'Health' sub_category = 'Vitamin' manufact_id = '2000000007' supplier_id = '1000000007' )
    ( id = 'PRD088' name = 'Fitness Implement' category = 'Activity' sub_category = 'Fitness' manufact_id = '2000000008' supplier_id = '1000000008' )
    ( id = 'PRD089' name = 'Computer Instrument' category = 'Electronics' sub_category = 'Computer' manufact_id = '2000000009' supplier_id = '1000000009' )
    ( id = 'PRD090' name = 'Furniture Instrument' category = 'Home' sub_category = 'Furniture' manufact_id = '2000000010' supplier_id = '1000000010' )
    ( id = 'PRD091' name = 'Game Gadget' category = 'Entertainment' sub_category = 'Game' manufact_id = '2000000001' supplier_id = '1000000001' )
    ( id = 'PRD092' name = 'Outdoors Whatchamacallit' category = 'Activity' sub_category = 'Outdoors' manufact_id = '2000000002' supplier_id = '1000000002' )
    ( id = 'PRD093' name = 'Car Equipment' category = 'Automotive' sub_category = 'Car' manufact_id = '2000000003' supplier_id = '1000000003' )
    ( id = 'PRD094' name = 'Tire Kit' category = 'Automotive' sub_category = 'Tire' manufact_id = '2000000004' supplier_id = '1000000004' )
    ( id = 'PRD095' name = 'Sports Component' category = 'Activity' sub_category = 'Sports' manufact_id = '2000000005' supplier_id = '1000000005' )
    ( id = 'PRD096' name = 'Sports Gear' category = 'Activity' sub_category = 'Sports' manufact_id = '2000000006' supplier_id = '1000000006' )
    ( id = 'PRD097' name = 'Toy Gear' category = 'Entertainment' sub_category = 'Toy' manufact_id = '2000000007' supplier_id = '1000000007' )
    ( id = 'PRD098' name = 'Makeup Contraption' category = 'Beauty' sub_category = 'Makeup' manufact_id = '2000000008' supplier_id = '1000000008' )
    ( id = 'PRD099' name = 'Technology Equipment' category = 'Electronics' sub_category = 'Technology' manufact_id = '2000000009' supplier_id = '1000000009' )
    ( id = 'PRD100' name = 'Hair Care Paraphernalia' category = 'Beauty' sub_category = 'Hair Care' manufact_id = '2000000010' supplier_id = '1000000010' ) ).

    DATA(lo_random_rating) = cl_abap_random_packed_dec1=>create( min = 1 max = 5 seed = 1 ).
    DATA(lo_random_price)  = cl_abap_random_packed=>create( min = 1 max = 100 seed = 1 ).
    DATA(lo_random_qty)    = cl_abap_random_int=>create( min = 0 max = 10000 seed = 1 ).      "Less than 1000 is Out of Stock
    DATA(lo_random_dim)    = cl_abap_random_packed_dec3=>create( min = 10 max = 20 seed = 1 ).
    DATA(lo_random_weight) = cl_abap_random_packed_dec3=>create( min = 1 max = 20 seed = 1 ).

    LOOP AT rt_products ASSIGNING FIELD-SYMBOL(<lfs_products>).

      <lfs_products>-client                = sy-mandt.
      <lfs_products>-expiry_dat            = cl_abap_context_info=>get_system_date( ) + 365.
      <lfs_products>-unit_price            = lo_random_price->get_next( ).
      <lfs_products>-currency              = 'USD'.                                                 "United States Dollar
      <lfs_products>-rating                = lo_random_rating->get_next( ).
      <lfs_products>-qty_maximum           = 10000.
      <lfs_products>-qty_minimum           = 1000.
      <lfs_products>-qty_actual            = lo_random_qty->get_next( ).
      <lfs_products>-base_uom              = 'EA'.
      <lfs_products>-height                = lo_random_dim->get_next( ).
      <lfs_products>-width                 = lo_random_dim->get_next( ).
      <lfs_products>-depth                 = lo_random_dim->get_next( ).
      <lfs_products>-dim_uom               = 'M'.                                                   "Meter
      <lfs_products>-weight                = lo_random_weight->get_next( ).
      <lfs_products>-weight_uom            = 'KG'.                                                  "Kilogram
      <lfs_products>-created_by            = cl_abap_context_info=>get_user_technical_name( ).
      <lfs_products>-created_at            = cl_abap_tstmp=>utclong2tstmp( utclong_current( ) ).
      <lfs_products>-local_last_changed_by = cl_abap_context_info=>get_user_technical_name( ).
      <lfs_products>-local_last_changed_at = cl_abap_tstmp=>utclong2tstmp( utclong_current( ) ).
      <lfs_products>-last_changed_at       = cl_abap_tstmp=>utclong2tstmp( utclong_current( ) ).
    ENDLOOP.

    IF rt_products IS NOT INITIAL.
      MODIFY zvks_ta_prod FROM TABLE @rt_products.
      COMMIT WORK AND WAIT.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
