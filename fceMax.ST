FUNCTION fceMax : USINT
  VAR_INPUT
  END_VAR
  VAR_IN_OUT
    pole : TUsintArray;
  END_VAR
  VAR
    i : USINT;
    m : USINT;
  END_VAR
  VAR_TEMP
  END_VAR

  m := 0;

  for i := 1 to 5 do
    if pole[i] > m then m := pole[i]; end_if;
  end_for;

  fceMax := m;

END_FUNCTION


