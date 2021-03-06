FUNCTION_BLOCK fbDvere
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
    casovacl : TON;      //casovac levych dveri
    startl : BOOL;
    outputl : BOOL;
    casovacp : TON;      //casovac pravych dveri
    startp : BOOL;
    outputp : BOOL;
  END_VAR
  VAR_TEMP
  END_VAR

  if otvl then        //leve dvere
    casovacl( IN := startl, PT :=T#10s, Q => outputl );
    startl := 1;
    if pod1l then dvere1l := 1;          //vyber dveri v patre kabiny
    elsif pod2l then dvere2l := 1;
    elsif pod3l then dvere3l := 1;
    elsif pod4l then dvere4l := 1;
    elsif pod5l then dvere5l := 1;
    else otvl := 0; end_if;
    if casovacl.ET>T#5s then
        dvere1l := 0;
        dvere2l := 0;
        dvere3l := 0;
        dvere4l := 0;
        dvere5l := 0;
    end_if;
    if outputl then
        startl := 0;
        otvl := 0;
    end_if;
  end_if;

  if otvp then             //prave dvere
    casovacp( IN := startp, PT :=T#10s, Q => outputp );
    startp := 1;
    if pod1p then dvere1p := 1;         //vyber dveri v patre kabiny
    elsif pod2p then dvere2p := 1;
    elsif pod3p then dvere3p := 1;
    elsif pod4p then dvere4p := 1;
    elsif pod5p then dvere5p := 1;
    else otvp := 0; end_if;
    if casovacp.ET>T#5s then
        dvere1p := 0;
        dvere2p := 0;
        dvere3p := 0;
        dvere4p := 0;
        dvere5p := 0;
    end_if;
    if outputp then
        startp := 0;
        otvp := 0;
    end_if;
  end_if;

END_FUNCTION_BLOCK


