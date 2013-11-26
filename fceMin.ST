FUNCTION fceMin : USINT
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

  m := 6;

  for i := 1 to 5 do
    if pole[i] <> 0 and pole[i] < m then m := pole[i]; end_if;
  end_for;

  if m = 6 then m := 0; end_if;

  fceMin := m;

END_FUNCTION


