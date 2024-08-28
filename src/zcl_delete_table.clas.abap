CLASS zcl_delete_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_delete_table IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DELETE FROM zrent_brands.

    if SY-SUBRC EQ 0.
      OUT->write( 'All data deleted' ).
    endif.

  ENDMETHOD.

ENDCLASS.
