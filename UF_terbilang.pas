unit UF_terbilang;

interface

uses SysUtils;

function SpellAll(strInput : string) : string;
function Spell(strInput : string) : string;
   var
   CurrencyString: string;
   CurrencyFormat: Byte;
   NegCurrFormat: Byte;
   ThousandSeparator: Char;
   DecimalSeparator: Char;
implementation

function PartialSpell( strInput : String) : String;
var strSebutan, strAngka, strHasil : String;
    sTAngka : char;
    i,sAngka : Byte;
begin
  For i := length(strInput) DownTo 1 do
   begin
    //--ambil satu digit
    sTAngka := strInput[i];
    if not (sTAngka  in ['0'..'9']) then continue;
    sAngka := strToInt(copy(strInput, i, 1));
    //--ubah angka menjadi huruf yang sesuai, kecuali angka nol
    Case sAngka of
       1: strAngka := 'satu ';
       2: strAngka := 'dua ';
       3: strAngka := 'tiga ';
       4: strAngka := 'empat ';
       5: strAngka := 'lima ';
       6: strAngka := 'enam ';
       7: strAngka := 'tujuh ';
       8: strAngka := 'delapan ';
       9: strAngka := 'sembilan ';
       0: begin
             strAngka := '';
             strSebutan := '';
          end;
    End;
    strSebutan := '';
    //--cek kondisi khusus untuk angka 1 yang bisa berubah jad 'se'
    If (sAngka = 1) And (i <> length(strInput)) Then strAngka := 'se';
    //--tambahkan satuan yang sesuai yaitu puluh, belas, ratus
    If ((length(strInput) - i) = 1) And (sAngka <> 0) Then
     begin
      strSebutan := 'puluh ';
      If (sAngka = 1) And (strHasil <> '') Then
       begin
        strSebutan := 'belas ';
        If strHasil = 'satu ' Then strAngka := 'se'
          Else strAngka := strHasil;
        strHasil := '';
       end
     End
     else if ((length(strInput) - i) = 2) And (sAngka <> 0) Then
         strSebutan := 'ratus ';
    strHasil := strAngka + strSebutan + strHasil
  end;
  PartialSpell := strHasil
end;

function Spell(strInput : String) : String ;
var i : integer;
    j : Byte;
  strPars, strOlah, strSebutan, strHasil, strSpell : String;
begin
  if length(strInput)>15 then raise Exception.Create('Nilai maksimal 999.999.999.999.999');
  strInput:=Copy(strInput,1,15);
  strPars := strInput;
  i := length(strInput);
  repeat
    //--mengambil angka 3 digit dimulai dari belakang
    j := length(strPars) Mod 3;
    If j <> 0 Then
    begin
      strOlah := copy(strPars, 1, j);
      strPars := copy(strPars, j + 1, length(strPars) - j)
    end
    Else
    begin
      strOlah := copy(strPars, 1, 3);
      strPars := copy(strPars,4,length(strPars)-3);
    End;
    //--membilang 3 digit angka yang ada
    strSpell := PartialSpell(strOlah);
    //--menambahkan satuan yang sesuai, misalnya : ribu, juta, milyar, trilyun
    If strSpell <> '' Then
      If i > 12 Then
        strSebutan := 'trilyun '
       else if i > 9 Then
         strSebutan := 'milyar '
        else if i > 6 Then
          strSebutan := 'juta '
         else if i > 3 Then
          begin
           strSebutan := 'ribu ';
           If strSpell = 'satu ' Then strSpell := 'se'
          end;
    strHasil := strHasil + strSpell + strSebutan;
    strSpell := '';
    strSebutan := '';
    dec(i,3);
  until i<1;
  if Length(StrHasil)>0 then StrHasil[1]:=UpCase(StrHasil[1]);
  Spell := strHasil;
end;

function SpellDec(strInput : string) : string;
var strAngka,strHasil : String;
    i: Byte;
    sAngka : char;
begin
  i:=Length(strInput);
  while (copy(strInput,i,1)='0') and (i>0) do
  begin
   i:=i-1;
   strInput:= Copy(strInput,1,i);
  End;
  For i :=1 to length(strInput) do
   begin
    sAngka := strInput[i];
    if not (sAngka  in ['0'..'9']) then raise Exception.Create('Invalid character');
    Case sAngka of
       '1': strAngka := ' satu';
       '2': strAngka := ' dua';
       '3': strAngka := ' tiga';
       '4': strAngka := ' empat';
       '5': strAngka := ' lima';
       '6': strAngka := ' enam';
       '7': strAngka := ' tujuh';
       '8': strAngka := ' delapan';
       '9': strAngka := ' sembilan';
       '0': strAngka := ' nol';
    End;
    strHasil := strHasil + strAngka;
  end;
  if strHasil<>'' then  SpellDec := ' koma' + strHasil;
end;

function SpellAll(strInput : string) : string;
var PosSep : integer;
    FHead, FDec : string;
begin
 PosSep :=Pos(DecimalSeparator,strInput);
 if PosSep > 0 then
 begin
  FHead := Copy(strInput,1,PosSep-1);
  FDec := Copy(strInput,PosSep+1,Length(strInput)-PosSep);
  Result := Trim(Spell(FHead)) + SpellDec(FDec);
 end
 else
 begin
  Result := Spell(strInput);
 end;
end;
  
end.
