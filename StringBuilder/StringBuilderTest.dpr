program StringBuilderTest;
{$APPTYPE CONSOLE}

uses
  CTmscorlib,
  SysUtils;

procedure TestStringBuilder;
var
  xSB: StringBuilder;
  xSB2: StringBuilder;
begin
  xSB := StringBuilder.Create('Hello CrossTalk!!!'); try
    WriteLn('Length: ' + IntToStr(xSB.Length));

    WriteLn(xSB.Chars[0] + xSB.ToString(1, 4));
    xSB.Chars[1] := 'a';
    WriteLn(xSB.ToString);

    xSB.Append('... more');

    xSB2 := xSB.Append(' and more');
    WriteLn(xSB = xSB2); // True, because Append returns Self
    WriteLn('Length: ' + IntToStr(xSB2.Length));
    WriteLn(xSB.ToString);

    xSB.Length := 10;
    WriteLn(xSB.ToString);
    ReadLn;
  finally xSB.Free; end;
end;

begin
  try
    TestStringBuilder;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
