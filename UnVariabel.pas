unit UnVariabel;

interface
uses Windows, Messages, SysUtils, variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons ,IniFIles, ToolWin,
  Menus,  ekrtf,ComObj,
  jpeg;

function SpellAll(strInput : string) : string;
function Spell(strInput : string) : string;
function DTSQL(dt: TDateTime): string;
function NumSQL(s: string): string;
function SVal(s: string; min, max: Extended): Extended; overload;
function SVal(s: string): Extended; overload;
function NFormat(n: Extended; d: Integer): string; overload;
function NFormat(n: Extended; d: Integer; f: string): string; overload;
function NFormat(n: Extended; d: Integer; f: string; l: Integer): string; overload;
function SRepeat(s: string; n: Integer): string;
function FinaceFloat(const AValue: Double): String;
function ConvKeHuruf(inp: string): string;

function clearDot(AEdit:string):string;
function FormatUang(angka:string):string;
function TitleCase(Kata:String):String;
function BuangTitik(Data: String): Currency;
Function HitungUang(Uang: String):String;
function RemoveWhiteSpace(const s: string): string;
procedure RightEdit(e: TEdit);
procedure CenterEdit(e: TEdit);
function getxlsPath : String;
function getReportPath : String;
function GetPosition(AEdit: TEdit): integer;
procedure formatRupiah(AEdit: TEdit);

var
  RootPath : String;
  tISTIMER : String;
  tWaktu : String;
  IMenit : Int64;
//tabSheet : array[0..500] of TcxTabSheet;
   TTglSrvSkr : TDateTime;
   fFormAktif : TForm;
   IsConect : Boolean;
   bAction : Boolean;
   vRoleID : String;
   tKDBarang,tNamaBarang,tKDSatuan,tNamaSatuan : String;
   isFormQuery : String;
   vLokasiFileJPEG : String;
//       Tambahan
   CurrencyString: string;
   CurrencyFormat: Byte;
   NegCurrFormat: Byte;
   ThousandSeparator: Char;
   DecimalSeparator: Char;


implementation

//uses
//uses SysUtils;

function GetPosition(AEdit: TEdit): integer;
var
 index:integer;
begin
 index:=AEdit.SelStart-SendMessage(AEdit.Handle,EM_LINEINDEX,0,0);
 Inc(index);
 Result:=index;
end;

procedure formatRupiah(AEdit: TEdit);
var
 pos:integer;
 mydata:string;
begin
 pos:=GetPosition(AEdit);
 mydata:=StringReplace(AEdit.Text,'.','',[rfReplaceAll]);
 AEdit.Text:=Format('%.0n',[StrToFloatDef(mydata,0)]);
 AEdit.SelStart:=pos;
end;

function formatRp(input:string):string;
begin
 Result:=Format('%.0n',[StrToFloatDef(input,0)]);
end;

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

{misc function}
function SRepeat(s: string; n: Integer): string;
var i: Integer; r: string;
begin
  r:='';
  for i:=1 to n do r:=r+s;
  Result:=r;
end;


function NFormat(n: Extended; d: Integer; f: string; l: Integer): string; overload;
var s: string;
begin
  if d=0 then s:='#,##0'
  else s:='#,##0.0'+SRepeat(f, d-1);
  Result:=FormatFloat(s, n);
  if l=0 then begin
    if Copy(Result, Length(Result)-1, 2)=DecimalSeparator+'0' then
      Result:=Copy(Result, 0, Length(Result)-2);
  end;
end;

function NFormat(n: Extended; d: Integer; f: string): string; overload;
begin
  Result:=NFormat(n, d, f, 0);
end;

function NFormat(n: Extended; d: Integer): string; overload;
begin
  Result:=NFormat(n, d, '#', 0);
end;

function SVal(s: string): Extended; overload;
begin
  try Result:=StrToFloat(StringReplace(s, ThousandSeparator, '', [rfReplaceAll]));
  except Result:=0; end;
end;

function SVal(s: string; min, max: Extended): Extended; overload;
var n: Extended;
begin
  try
    n:=StrToFloat(StringReplace(s, ThousandSeparator, '', [rfReplaceAll]));
    if n<min then n:=min;
    if (max>=min) and (n>max) then n:=max;
    Result:=n;
  except Result:=min; end;
end;

function NumSQL(s: string): string;
begin
  if s='' then Result:='0 '
  else Result:=StringReplace(StringReplace(s, ThousandSeparator, '', [rfReplaceAll]), DecimalSeparator, '.', [rfReplaceAll]);
end;

function DTSQL(dt: TDateTime): string;
begin
     if dt<=EncodeDate(1900,1,1) then Result:='null'

	 //merubah format Tanggal...
    else Result:=QuotedStr(FormatDateTime('yyyy-mm-dd', dt));

  end;

function FinaceFloat(const AValue: Double): String;
var
simpan: array[1..2] of char;
begin
simpan[1]:=ThousandSeparator;
simpan[2]:=DecimalSeparator;
ThousandSeparator:='.';
DecimalSeparator:=',';
Result:=FormatFloat('#,#0.00   ;(#,#0.00)  ;-    ', AValue);
 ThousandSeparator:=simpan[1];
DecimalSeparator:=simpan[2];
end;


procedure RightEdit(e: TEdit);
begin
SetWindowLong(e.Handle,GWL_STYLE,GetWindowLong(e.Handle,GWL_STYLE) or ES_RIGHT);
end;

procedure CenterEdit(e: TEdit);
begin
SetWindowLong(e.Handle,GWL_STYLE,GetWindowLong(e.Handle,GWL_STYLE) or ES_CENTER);
end;

function Capital(Value:String):String;
Var i:integer; s:string;
begin
  s:=UpperCase(Value[1]);
  for i:=2 to Length(Value) do
  if (Value[i-1] in [' ',',',':',';','.']) then
  s:=s+UpperCase(Value[i]) else s:=s+LowerCase(Value[i]);
  Result:=s;
end;

function getReportPath : String;
 var
 sResult : String;
 begin
 sResult := ExtractFilePath(Application.ExeName) + '/rtf/';
 Result := sResult;
 end;


 function getxlsPath : String;
 var
 sResult : String;
 begin
 sResult := ExtractFilePath(Application.ExeName) + '/cetak_xls/';
 Result := sResult;
 end;

function clearDot(AEdit:string):string;
begin
 Result:=StringReplace(AEdit,'.','',[rfReplaceAll]);
end;

function FormatUang(angka:string):string;
var
  hasil:string;
  len : integer;
begin
  len := length(angka);
  if(len>3)then
  begin
    repeat
      len := len-2;
      hasil := '.' + copy(angka, len, 3) + hasil;
      len := len-1;
    until(len<=3);
    hasil := copy(angka, 1, len) + hasil;
  end
  else
    hasil := angka;
  result:=hasil;
end;


function TitleCase(Kata:String):String;
var i:integer;
 s:string;
begin
if Kata='' then Abort;
 s:=UpperCase(Kata[1]);
 for i:=2 to Length(Kata) do
 if (Kata[i-1] in [' ',',',':',';','.']) then s:=s+UpperCase(Kata[i])
 else s:=s+LowerCase(Kata[i]);
Result:=s;
end;

function BuangTitik(Data: String): Currency;
Var I     : Integer;
    TempI : Currency;
    Temp: String;
begin
   Temp := '';
   For I := 1 to Length(Data) do
   begin
     If (Data[I] = ',') or (Data[I] = '.') then
       Continue
     else
       Temp := Temp + Data[I];
   end;
   TempI := StrToInt64(Temp);
   Result := TempI;
end;

Function HitungUang(Uang: String):String;
const
  angka : array [0..9] of string = ('', 'SATU ', 'DUA ', 'TIGA ', 'EMPAT ',
    'LIMA ', 'ENAM ', 'TUJUH ', 'DELAPAN ', 'SEMBILAN ');
  level : array [0..7] of string = ('', 'RIBU', 'JUTA', 'MILYAR', 'TRILIYUN',
    'KUADRILIUM', 'Aujubiliun', 'Banyakamitiliun');
var
   x, grup3 : byte;
   hasil,
   processed,
   n, n1, n2, n3,TempHasil : string;
begin
   hasil := '';
   // Pad text so it fits into chunks of three character
   for x := 1 to 3-(length(Uang) mod 3) do insert ('0',Uang,1);
   // Grup3 is the number of group of 3 character
   grup3 := length(Uang) div 3;
   for x := grup3-1 downto 0 do begin
      processed := copy(Uang, 1, 3);
      Uang := copy(Uang, 4, length(Uang)-3);
      n1 := ''; n2 := ''; n3 := '';

      if processed[1] = '1' then n1 := 'SE'
        else n1 := angka[strtoint(processed[1])];
      if length(n1) > 0 then n1 := n1 + 'RATUS ';

      n2 := angka[strtoint(processed[2])];
      if length(n2) > 0 then n2 := n2 + 'PULUH ';
      n3 := angka[strtoint(processed[3])];

      if processed[2] = '1' then begin
         n2 := '';
         if processed [3] = '0' then n3 := 'SEPULUH '
         else if processed [3] = '1' then n3 := 'SEBELAS '
         else n3 := angka[strtoint(processed[3])] + 'BELAS ';
      end;
      n := n1+n2+n3;
      // untuk seribu
      if (n = 'SATU ') and (grup3 = 2) then n := 'SE';
      hasil := hasil + n;
      if n <> '' then hasil := hasil + level[x]+' ';
   end;
   TempHasil := Copy(Hasil,1,Length(Hasil)-1);
   If Hasil <> '' then
     HitungUang := TempHasil
   else
     HitungUang := 'NOL ';
end;

{
procedure AktifModeIndonesia;
Const hari  : Array[1..7] of string =('Minggu','Senin','Selasa','Rabu',
             'Kamis','Jumat','Sabtu');
      Bulan : Array[1..12] of String =('Januari','Februari','Maret','April',
             'Mei','Juni','Juli','Agustus','September','Oktober','November','Desember');
Var
    I : Byte;
begin
  DateSeparator := '/';
  ThousandSeparator := ',';
  DecimalSeparator := '.';
  CurrencyString := 'Rp. ';
  For I := 1 to 7 do
    LongDayNames[I] := Hari[I];
  For I := 1 to 12 do
    LongMonthNames[I] := Bulan[I];
  LongDateFormat := 'dddd, dd mmmm yyyy';
  ShortDateFormat := 'dd/mm/yyyy';
end;
 }


{
 function MessageDlgWarning(Keterangan: String):Integer;
var
    frm              : TForm;
begin
   frm := Dialogs.CreateMessageDialog(Keterangan,dialogs.mtWarning,[dialogs.mbOK]);
   frm.Color := clOlive;
   frm.Font.Color := clBlack;
   Result := frm.ShowModal;
end;

function MessageDlgUpdate(Keterangan: String):Integer;
var
    frm              : TForm;
begin
   frm := Dialogs.CreateMessageDialog(Keterangan,dialogs.mtConfirmation,[dialogs.mbYes,dialogs.mbNo]);
   frm.Color := clYellow;
   frm.Font.Color := clBlack;
   Result := frm.ShowModal;
end;

function MessageDlgInsert(Keterangan: String):Integer;
var
    frm              : TForm;
begin
   frm := Dialogs.CreateMessageDialog(Keterangan,dialogs.mtConfirmation,[dialogs.mbYes,dialogs.mbNo]);
   frm.Color := clGreen;
   frm.Font.Color := clYellow;
   Result := frm.ShowModal;
end;

function MessageDlgError(Keterangan: String):Integer;
var
    frm              : TForm;
begin
   frm := Dialogs.CreateMessageDialog(Keterangan,dialogs.mtError,[dialogs.mbOK]);
   frm.Color := clRed;
   frm.Font.Color := clWhite;
   Result := frm.ShowModal;
end;

function MessageDlgInformation(Keterangan: String):Integer;
var
    frm              : TForm;
begin
   frm := Dialogs.CreateMessageDialog(Keterangan,dialogs.mtInformation,[dialogs.mbOK]);
   frm.Color := clSkyBlue;
   frm.Font.Color := clBlack;
   Result := frm.ShowModal;
end;
 }
 function RemoveWhiteSpace(const s: string): string;
var
  i, j: Integer;
begin
  SetLength(Result, Length(s));
  j := 0;
  for i := 1 to Length(s) do begin
    if not (s[i] in [#9,#32]) then begin
      inc(j);
      Result[j] := s[i];
    end;
  end;
  SetLength(Result, j);
end;

// pemisahan untuk Desimal ,00

function ConvKeHuruf(inp: string): string;
var
a,b,c,Poskoma,PosTitik : integer;
temp,angka,dpnKoma,BlkKoma : string;
AdaKoma: boolean;

begin
  PosKoma:= pos(',',Inp);
  PosTitik:= pos('.',Inp);
    if (Poskoma<>0) or (posTitik<> 0) then
        begin
        adaKoma:= true;
        if PosKoma= 0 then posKoma:= PosTitik;
        end else
        begin
        adakoma:= False;
        DpnKoma:= inp;
        end;

// Jika ada Koma (Spell) Terbilang
if adakoma then
   begin
    dpnkoma:= copy(inp,1,posKoma-1);
    blkKoma:= Copy(inp,posKoma+1,length(inp)-posKoma);
    if trim(DpnKoma)='0' then
       temp:= 'Nol'+ ' Koma ' + Spell(blkKoma)
        else
          temp:= Spell(dpnKoma)+ ' Koma ' + Spell(blkKoma);
// Jika Tidak ada Koma
   end else begin
   temp:=Spell(dpnKoma);
   end;
   Result:= temp;
end;


end.
