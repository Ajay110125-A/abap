CLASS zcl_travel_aux_aj_u DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_behv
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS : get_cause_message_from
      IMPORTING
        msgid             TYPE symsgid
        msgno             TYPE symsgno
        is_dependend      TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(fail_cause) TYPE if_abap_behv=>t_fail_cause.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_travel_aux_aj_u IMPLEMENTATION.
  METHOD get_cause_message_from.

    fail_cause = if_abap_behv=>cause-unspecific.

    IF msgid = '/DMO/CM_FLIGHT_LEGAC'.

      CASE msgno.
        WHEN '009' "Travel Key Initials
          OR '016' "Travel does not exist
          OR '017' ."Booking does not exist
          IF is_dependend = abap_true.
            fail_cause = if_abap_behv=>cause-dependency.
          ELSE.
            fail_cause = if_abap_behv=>cause-not_found.
          ENDIF.
        WHEN '032'.
          fail_cause = if_abap_behv=>cause-locked.
        WHEN '046'.
          fail_cause = if_abap_behv=>cause-unauthorized.
      ENDCASE.

    ENDIF.
  ENDMETHOD.

ENDCLASS.
