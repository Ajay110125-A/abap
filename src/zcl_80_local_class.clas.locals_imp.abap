*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

CLASS connection DEFINITION.

  PUBLIC SECTION.
    DATA : carrier_id TYPE /DMO/CARRIER_ID,
           connection_id TYPE /DMO/CONNECTION_ID.

    CLASS-DATA : conn_counter TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS connection IMPLEMENTATION.

ENDCLASS.
