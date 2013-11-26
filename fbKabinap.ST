FUNCTION_BLOCK fbKabinap
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
    vyjmout : fbVyjmout;
    st : USINT;
    m : BOOL := 0;
  END_VAR
  VAR_TEMP
  END_VAR

  if motor4A or motor3A then                            //zmena aktualni hodnoty
    if pod1p then kp := 1;
    elsif pod2p then kp := 2;
    elsif pod3p then kp := 3;
    elsif pod4p then kp := 4;
    elsif pod5p then kp := 5;
    end_if;
  end_if;

    st := 10;
    if kp - kamp = 1 or kamp - kp = 1 then
      st := 7;
      if mezipP then
        m := 1;
      end_if;
      if m then
        st := 4;
      end_if;
    end_if;
    
    motor4A := 0;
    motor3A := 0;

 if kamp = kp then                             //ovladani motoru
   otvp := 1;
   vyjmout(pole := prava);
   m := 0;
 elsif kamp <> 0 and not otvp then
  if kamp > kp then
    motor4A := funkcePWM(st);
  elsif kamp < kp then
    motor3A := funkcePWM(st);
  end_if;
 end_if;

END_FUNCTION_BLOCK


