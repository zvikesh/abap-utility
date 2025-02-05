CLASS zvks_cl_data_gen_mdm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zvks_cl_data_gen_mdm IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    "ZVKS_TA_PROD
    DATA(lt_products) = zvks_cl_data_gen_prod=>gen_products( ).
    IF lt_products IS NOT INITIAL.
        out->write( |Generated ZVKS_TA_PROD| ).
        out->write( lt_products ).
    ENDIF.


  ENDMETHOD.

ENDCLASS.
