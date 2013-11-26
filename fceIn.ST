FUNCTION fceIn : BOOL
  VAR_INPUT
    p : USINT;
  END_VAR
  VAR_IN_OUT
    pole : TUsintArray;
  END_VAR
  VAR
    i : USINT;
  END_VAR
  VAR_TEMP
  END_VAR
  
  fceIn := 0;
  
  //if p = kaml then
    //fceIn := 1;
  //else
   for i := 1 to 5 do
    if p = pole[i] then fceIn := 1; end_if;
   end_for;
  //end_if;

END_FUNCTION

