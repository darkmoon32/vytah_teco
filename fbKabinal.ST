FUNCTION_BLOCK fbKabinal
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

  if motor2A or motor1A then                                 //zmena aktualni hodnotz
    if pod1l then kl := 1;
    elsif pod2l then kl := 2;
    elsif pod3l then kl := 3;
    elsif pod4l then kl := 4;
    elsif pod5l then kl := 5;
    end_if;
  end_if;

    st := 10;
    if kl - kaml = 1 or kaml - kl = 1 then
      st := 7;
      if mezipL then
        m := 1;
      end_if;
      if m then
        st := 4;
      end_if;
    end_if;

    motor2A := 0;
    motor1A := 0;

 if kaml = kl then                                    //ovladani motoru
   otvl := 1;
   vyjmout(pole := leva);
   m := 0;
 elsif kaml <> 0 and not otvl then
  if kaml > kl then
    motor2A := funkcePWM(st);
  elsif kaml < kl then
    motor1A := funkcePWM(st);
  end_if;
 end_if;

END_FUNCTION_BLOCK


