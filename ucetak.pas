unit ucetak;

interface
uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ComCtrls, ExtCtrls,
  DB, Grids, DBGrids, ToolWin, DBCtrls, Mask,
  Buttons, ADODB,Menus, IniFiles, StrUtils, Printers, WinSpool, ExtDlgs,
  ComObj, ActnList;

 function CenterText(InputString:string; LengthOption:Integer):string;
 function KananStr(Str:string; N:Integer; IsCurrency:Boolean):string;
 function SatuBaris(T : TADOTable; N:Integer):string;
 function CarX(C:string; N:Integer):string;

//var



implementation
 uses UnModul;
function CenterText(InputString:string; LengthOption:Integer):string;
var T:string;
    I, J:Integer;
    iSpc: Integer;
    sSpc: string;
begin
  T := Trim(InputString);
  J := Length(T);
  if J > LengthOption then
  begin
    T := LeftStr(T, LengthOption);
    Result := T;
    Exit;
  end;

  iSpc := (LengthOption - J) div 2;
  sSpc :='';
  for I := 1 to iSpc do sSpc := sSpc + ' ';
  T:= sSpc + T + sSpc;
  if Length(T)> LengthOption then T:= LeftStr(T,LengthOption);
  Result:= T;
end;


  function KananStr(Str:string; N:Integer; IsCurrency:Boolean):string;
  var s,r: string;
      i,k:Integer;
  begin
    if not(IsCurrency) then
    begin
      if Length(Str)>N then
         s:= LeftStr(Str,N)
      else
        s:= Str;
    end
    else
      s:= FormatCurr('#,##0',StrToCurr(Str));

    k:= N-Length(s);
    Result:=s;
    if K<1 then Exit;
    r:='';
    for i:=1 to k do
    begin
      r:=r+' ';
    end;
    r:= r+ s;
    result:=r;
  end;


  function SatuBaris(T : TADOTable; N:Integer):string;
  var B : string;
      C1,C2,C3,C4:string;
  begin
      C1:=KananStr(T.Fields[1].AsString,4,False);
      C2:=KananStr(T.Fields[2].AsString,3,False);
      C3:=KananStr(T.Fields[3].AsString,11,True);
      C4:=KananStr(T.Fields[4].AsString,15,True);
      B := C1 + ' ' + C2 + ' x ' + C3 + ' = ' + C4;
      if Length(B)< N then KananStr(B,N,false);
      Result:= B;
  end;

  function CarX(C:string; N:Integer):string;
  var i : Integer; s:string;
  begin
    s:='';
    for i:=1 to N do s:= s+C;
    result:=s;
  end;


end.
