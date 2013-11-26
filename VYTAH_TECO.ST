
TYPE
  TUsintArray : ARRAY [1..5] OF USINT;
END_TYPE

VAR_GLOBAL
  init : BOOL := 1;                                 //inicializace
  otvp : BOOL := 0;                                 //otevirani pravych dveri
  otvl : BOOL := 0;                                 //          levych
  kp : USINT := 1;                                  //poloha prave kabiny
  kl : USINT := 1;                                  //       leve
  kamp : USINT := 0;                                //kam ma prava kabina prijet
  kaml : USINT := 0;                                //       leva
  i : USINT;                                        //na PWM
  prava : TUsintArray := [0,0,0,0,0];               //pozadavky na pravou kabinu
  leva : TUsintArray := [0,0,0,0,0];                //             levou
  dol : ARRAY[1..5] OF BOOL := [0,0,0,0,0];
  nah : ARRAY[1..5] OF BOOL := [0,0,0,0,0];
END_VAR

