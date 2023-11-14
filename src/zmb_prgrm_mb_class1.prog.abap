*&---------------------------------------------------------------------*
*& Report ZMB_PRGRM_MB_CLASS1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMB_PRGRM_MB_CLASS1.


CLASS CLASS_A DEFINITION.

   "visibility section

    PUBLIC SECTION .
     data: pub_attr type char10.
     METHODS: pub_method .



     PROTECTED SECTION .
     data: pro_attr type char10.
     METHODS: pro_method .

     PRIVATE SECTION .
     data: pri_attr type char10.
     METHODS: pri_method .
ENDCLASS .


CLASS class_a IMPLEMENTATION .

  METHOD pub_method .
    WRITE: 'PROTECTED METHOD '.
  ENDMETHOD .


  METHOD pri_method .
    WRITE: 'Private METHOD '.
  ENDMETHOD .

    METHOD pro_method .
    WRITE: 'PROTECTED METHOD '.
  ENDMETHOD .

ENDCLASS .


START-OF-SELECTION .

DATA(obj_of_the_class) = new class_a( ) .

obj_of_the_class->pub_attr = 'Value 1' .

write obj_of_the_class->pub_attr .



obj_of_the_class->pub_method( ) .
