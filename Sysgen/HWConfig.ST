(* Upozornìní *)
(* Soubor je automaticky regenerován a všechny ruèní modifikace budou ztracené. *)
(* ---------------------------------------------------------------------- *)
(* Generováno pro TC700 *)
(* ********************************************************************** *)
TYPE
  TAIStat : STRUCT
    UNF     : BOOL;
    UNR     : BOOL;
    OVR     : BOOL;
    OVF     : BOOL;
    FLS     : BOOL;
    CJC     : BOOL;
    dummy6 {HIDDEN} : BOOL;
    dummy7 {HIDDEN} : BOOL;
    CHC     : BOOL;
    dummy9 {HIDDEN} : BOOL;
    dummy10 {HIDDEN} : BOOL;
    dummy11 {HIDDEN} : BOOL;
    dummy12 {HIDDEN} : BOOL;
    dummy13 {HIDDEN} : BOOL;
    dummy14 {HIDDEN} : BOOL;
    dummy15 {HIDDEN} : BOOL;
  END_STRUCT;

  TAI : STRUCT
    STAT  : TAIStat;
    FS    : INT;
    ENG   : REAL;
    PCT   : REAL;
  END_STRUCT;

  TAO_TC6 : STRUCT
    FS  : INT ;
    ENG  : REAL;
    PCT  : REAL;
  END_STRUCT;

  TBIN_6DI : STRUCT
    DI0  : BOOL;
    DI1  : BOOL;
    DI2  : BOOL;
    DI3  : BOOL;
    DI4  : BOOL;
    DI5  : BOOL;
  END_STRUCT;

  TBIN_4DIPW : STRUCT
    DIP0  : BOOL;
    DIP1  : BOOL;
    DIP2  : BOOL;
    DIP3  : BOOL;
  END_STRUCT;

  TBIN_12DI : STRUCT
    DI0  : BOOL;
    DI1  : BOOL;
    DI2  : BOOL;
    DI3  : BOOL;
    DI4  : BOOL;
    DI5  : BOOL;
    DI6  : BOOL;
    DI7  : BOOL;
    DI8  : BOOL;
    DI9  : BOOL;
    DI10  : BOOL;
    DI11  : BOOL;
  END_STRUCT;

  TCNTF_IN : STRUCT
    SCNT : UINT;
    VALA : UDINT;
    VALB : UDINT;
  END_STRUCT;

  TCNTF_OUT : STRUCT
    CCNT: UINT; 
    SET : UDINT;
  END_STRUCT;

  TBIN_6DO : STRUCT
    DO0  : BOOL;
    DO1  : BOOL;
    DO2  : BOOL;
    DO3  : BOOL;
    DO4  : BOOL;
    DO5  : BOOL;
  END_STRUCT;

  TBIN_12DO : STRUCT
    DO0  : BOOL;
    DO1  : BOOL;
    DO2  : BOOL;
    DO3  : BOOL;
    DO4  : BOOL;
    DO5  : BOOL;
    DO6  : BOOL;
    DO7  : BOOL;
    DO8  : BOOL;
    DO9  : BOOL;
    DO10  : BOOL;
    DO11  : BOOL;
  END_STRUCT;

  TCHStatistic : STRUCT
    STAT       : USINT;
    ERR        : USINT;
    trueMes    : UDINT;
    falseMes   : UDINT;
  END_STRUCT;

  TETHStatistic_BACnet : STRUCT
    STAT       : USINT;
    ERR        : USINT;
    trueMes    : UDINT;
    falseMes   : UDINT;
  END_STRUCT;

  TCHControl : STRUCT
    CONTROL  : UINT;
  END_STRUCT;

END_TYPE
(* ********************************************************************** *)
(* ---------------------------------------------------------------------- *)
(* CP-1005 *)
VAR_GLOBAL
  r0_p0_Statistic_CH1  AT %X7500 : TCHStatistic;
  r0_p0_Control_CH1    AT %Y7500 : TCHControl;
END_VAR
(* ---------------------------------------------------------------------- *)
(* MI2-01M *)
VAR_GLOBAL
  r0_p2_Statistic_MI_CIB1 AT %X0   : TCHStatistic;
  r0_p2_Control_MI_CIB1 AT %Y0   : TCHControl;
END_VAR
(* ---------------------------------------------------------------------- *)
(* IR-1064 *)
VAR_GLOBAL
  r0_p3_DI             AT %X10  : TBIN_6DI;
  r0_p3_dummy0         AT %X11  : USINT;
  r0_p3_AI0            AT %X12  : TAI;
  r0_p3_AI1            AT %X24  : TAI;
  r0_p3_AI2            AT %X36  : TAI;
  r0_p3_AI3            AT %X48  : TAI;
  r0_p3_AI4            AT %X60  : TAI;
  r0_p3_AI5            AT %X72  : TAI;
  r0_p3_DO             AT %Y2   : TBIN_6DO;
  r0_p3_dummy1         AT %Y3   : USINT;
  r0_p3_AO0            AT %Y4   : TAO_TC6;
  r0_p3_AO1            AT %Y14  : TAO_TC6;
END_VAR
(* ********************************************************************** *)
(* ---------------------------------------------------------------------- *)
(* OS-1401 *)
VAR_GLOBAL
  r1_p0_DO             AT %Y24  : TBIN_12DO;
(* alias *)
  kLED5L               AT r1_p0_DO.DO0;
  kLED5P               AT r1_p0_DO.DO1;
  pLED1N               AT r1_p0_DO.DO5;
  pLED2D               AT r1_p0_DO.DO6;
  pLED2N               AT r1_p0_DO.DO4;
  pLED3D               AT r1_p0_DO.DO7;
  pLED3N               AT r1_p0_DO.DO8;
  pLED4D               AT r1_p0_DO.DO9;
  pLED4N               AT r1_p0_DO.DO10;
  pLED5D               AT r1_p0_DO.DO11;
END_VAR
(* ---------------------------------------------------------------------- *)
(* IB-1301 *)
VAR_GLOBAL
  r1_p1_DI             AT %X84  : TBIN_12DI;
  r1_p1_DIPW           AT %X86  : TBIN_4DIPW;
  r1_p1_CNT_IN1        AT %X88  : TCNTF_IN;
  r1_p1_CNT_IN2        AT %X98  : TCNTF_IN;
  r1_p1_CNT_OUT1       AT %Y26  : TCNTF_OUT;
  r1_p1_CNT_OUT2       AT %Y32  : TCNTF_OUT;
(* alias *)
  mezipL               AT r1_p1_DI.DI1;
  mezipP               AT r1_p1_DI.DI0;
  pod1L                AT r1_p1_DI.DI7;
  pod1P                AT r1_p1_DI.DI2;
  pod2L                AT r1_p1_DI.DI8;
  pod2P                AT r1_p1_DI.DI3;
  pod3L                AT r1_p1_DI.DI9;
  pod3P                AT r1_p1_DI.DI4;
  pod4L                AT r1_p1_DI.DI10;
  pod4P                AT r1_p1_DI.DI5;
  pod5L                AT r1_p1_DI.DI11;
  pod5P                AT r1_p1_DI.DI6;
END_VAR
(* ---------------------------------------------------------------------- *)
(* IB-1301 *)
VAR_GLOBAL
  r1_p2_DI             AT %X108 : TBIN_12DI;
  r1_p2_DIPW           AT %X110 : TBIN_4DIPW;
  r1_p2_CNT_IN1        AT %X112 : TCNTF_IN;
  r1_p2_CNT_IN2        AT %X122 : TCNTF_IN;
  r1_p2_CNT_OUT1       AT %Y38  : TCNTF_OUT;
  r1_p2_CNT_OUT2       AT %Y44  : TCNTF_OUT;
(* alias *)
  kDvereL              AT r1_p2_DI.DI3;
  kDvereP              AT r1_p2_DI.DI2;
  pTlac1N              AT r1_p2_DI.DI9;
  pTlac2D              AT r1_p2_DI.DI10;
  pTlac2N              AT r1_p2_DI.DI11;
  pTlac3D              AT r1_p2_DI.DI8;
  pTlac3N              AT r1_p2_DI.DI7;
  pTlac4D              AT r1_p2_DI.DI6;
  pTlac4N              AT r1_p2_DI.DI5;
  pTlac5D              AT r1_p2_DI.DI4;
END_VAR
(* ---------------------------------------------------------------------- *)
(* OS-1401 *)
VAR_GLOBAL
  r1_p3_DO             AT %Y50  : TBIN_12DO;
(* alias *)
  dvere1P              AT r1_p3_DO.DO10;
  dvere2P              AT r1_p3_DO.DO11;
  kLED1L               AT r1_p3_DO.DO0;
  kLED2L               AT r1_p3_DO.DO1;
  kLED3L               AT r1_p3_DO.DO2;
  kLED4L               AT r1_p3_DO.DO3;
  motor1A              AT r1_p3_DO.DO8;
  motor2A              AT r1_p3_DO.DO9;
  motor3A              AT r1_p3_DO.DO5;
  motor4A              AT r1_p3_DO.DO4;
  PWMlevy              AT r1_p3_DO.DO7;
  PWMpravy             AT r1_p3_DO.DO6;
END_VAR
(* ---------------------------------------------------------------------- *)
(* OS-1401 *)
VAR_GLOBAL
  r1_p4_DO             AT %Y52  : TBIN_12DO;
(* alias *)
  dvere1L              AT r1_p4_DO.DO7;
  dvere2L              AT r1_p4_DO.DO8;
  dvere3L              AT r1_p4_DO.DO9;
  dvere3P              AT r1_p4_DO.DO4;
  dvere4L              AT r1_p4_DO.DO10;
  dvere4P              AT r1_p4_DO.DO5;
  dvere5L              AT r1_p4_DO.DO11;
  dvere5P              AT r1_p4_DO.DO6;
  kLED1P               AT r1_p4_DO.DO0;
  kLED2P               AT r1_p4_DO.DO1;
  kLED3P               AT r1_p4_DO.DO2;
  kLED4P               AT r1_p4_DO.DO3;
END_VAR
(* ---------------------------------------------------------------------- *)
(* IB-1301 *)
VAR_GLOBAL
  r1_p5_DI             AT %X132 : TBIN_12DI;
  r1_p5_DIPW           AT %X134 : TBIN_4DIPW;
  r1_p5_CNT_IN1        AT %X136 : TCNTF_IN;
  r1_p5_CNT_IN2        AT %X146 : TCNTF_IN;
  r1_p5_CNT_OUT1       AT %Y54  : TCNTF_OUT;
  r1_p5_CNT_OUT2       AT %Y60  : TCNTF_OUT;
(* alias *)
  kSTOPL               AT r1_p5_DI.DI0;
  kSTOPP               AT r1_p5_DI.DI6;
  kTlac1L              AT r1_p5_DI.DI1;
  kTlac1P              AT r1_p5_DI.DI7;
  kTlac2L              AT r1_p5_DI.DI2;
  kTlac2P              AT r1_p5_DI.DI8;
  kTlac3L              AT r1_p5_DI.DI3;
  kTlac3P              AT r1_p5_DI.DI9;
  kTlac4L              AT r1_p5_DI.DI4;
  kTlac4P              AT r1_p5_DI.DI10;
  kTlac5L              AT r1_p5_DI.DI5;
  kTlac5P              AT r1_p5_DI.DI11;
END_VAR
(* -- *)
(* -- *)
VAR_EXTERNAL
END_VAR
(* -- *)

(* ********************************************************************** *)
(* Generováno programem MOSAIC *)
(* © 2001-2013 Teco a.s. *)
(* Verze : 1.2 *)
(* DLL Verze : 13.1.0.230 *)
