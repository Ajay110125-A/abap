CLASS zcl_80_local_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_80_local_class IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( 'Local class in Globla class sample' ).
  ENDMETHOD.
ENDCLASS.
