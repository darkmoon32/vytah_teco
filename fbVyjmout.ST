FUNCTION_BLOCK fbVyjmout
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR_IN_OUT
    pole : TUsintArray;
  END_VAR
  VAR
    i : USINT;
  END_VAR
  VAR_TEMP
  END_VAR

  //kaml := pole[1];
  for i := 1 to 4 do
    pole[i] := pole[i+1];
  end_for;
  pole[5] := 0;


END_FUNCTION_BLOCK



