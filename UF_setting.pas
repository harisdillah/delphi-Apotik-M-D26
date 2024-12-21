unit UF_setting;

interface

uses Windows,SysUtils,Variants,Messages,Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls,IniFIles, ToolWin;




function formatRp(input:string):string;
function formatRupiah(AEdit: TEdit):Integer;
function formatRupiah_des(AEdit: TEdit):Integer;
function clearDot(AEdit:string):string;
function CenterEdit(e: TEdit):string;
function RightEdit(e: TEdit):string;
function getReportPath : String;
function konfile : String;
function Capital(Value:String):String;
function ribuan(edit : Tedit): string;
function hapusribuan(edit : Tedit): string;
function kanan(e:string):string;

//baru format desimal
function FinaceFloat(const AValue: Double): String;

//path
function getExePath : String;
function getxlsPath : String;
function getrtfPath : String;
  var
   CurrencyString: string;
   CurrencyFormat: Byte;
   NegCurrFormat: Byte;
   ThousandSeparator: Char;
   DecimalSeparator: Char;
implementation
//-- exe
//apDirExe := ExtractFilePath(Application.ExeName);

{
procedure apLoadKonfigurasiProgram;

begin
  // Cari Keberadaan file exe dan kawan-kawannya
  {
  apDirExe         := ExtractFilePath(Application.ExeName);
  apdirback        := apDirExe + 'back\';
  apdirlist        := apDirExe + 'xls_konsep2015\';
  //apDirLib         := apDirExe + 'lib\';
  apDirxls         := apDirExe + 'xls_rpt\export15\';
  }
  //apDirDb          := apDirExe + '_db\';
  //apDirDbImgBooks  := apDirDb + 'img\books\';
  //apDirDbImgMembers:= apDirDb + 'img\members\';
//end;



function getExePath : String;
 var
 sResult : String;
 begin
 sResult := ExtractFilePath(Application.ExeName);
 Result := sResult;
 end;



///-----export xls
function getxlsPath : String;
 var
 sResult : String;
 begin
 sResult := getExePath + 'xls\';
 Result := sResult;
 end;


///-----export rtf
function getrtfPath : String;
 var
 sResult : String;
 begin
 sResult := getExePath + 'rtf\';
 Result := sResult;
 end;

function konfile : String;
 var
 sResult : String;
 begin
 sResult := ExtractFilePath(Application.ExeName) + '/bin/';
 Result := sResult;
 end;



function CenterEdit(e: TEdit):string;
begin
SetWindowLong(e.Handle,GWL_STYLE,GetWindowLong(e.Handle,GWL_STYLE) or ES_CENTER);
end;

function RightEdit(e: TEdit):string;
begin
SetWindowLong(e.Handle,GWL_STYLE,GetWindowLong(e.Handle,GWL_STYLE) or ES_RIGHT);
end;


function kanan(e:string):string;
begin
 //Result:=ES_RIGHT;
end;



function clearDot(AEdit:string):string;
begin
 Result:=StringReplace(AEdit,'.','',[rfReplaceAll]);
end;

function GetPosition(AEdit: TEdit): integer;
var
 index:integer;
begin
 index:=AEdit.SelStart-SendMessage(AEdit.Handle,EM_LINEINDEX,0,0);
 Inc(index);
 Result:=index;
end;

function formatRp(input:string):string;
//var
//simpan: array[1..2] of char;
begin
//simpan[1]:=ThousandSeparator;
//simpan[2]:=DecimalSeparator;
//ThousandSeparator:='.';
//DecimalSeparator:=',';
//Result:=Format('%.2.2n',[StrToFloatDef(input,0)]);  // data number
//ThousandSeparator:=simpan[1];
//DecimalSeparator:=simpan[2];
// Result:=FormatFloat('#,#0.00   ;(#,#0.00)  ;-    ', input); //%.0n
 //Result:=Format('%%.0n',[StrToFloatDef(input,0)]); //%.0n
end;

function formatRupiah(AEdit: TEdit):Integer;
var
 pos:integer;
 mydata:string;
begin
 pos:=GetPosition(AEdit);
 mydata:=StringReplace(AEdit.Text,'.','',[rfReplaceAll]);
 AEdit.Text:=Format('%.0n',[StrToFloatDef(mydata,0)]);
 AEdit.SelStart:=pos;
 Result:=pos;
end;


function formatRupiah_des(AEdit: TEdit):Integer;
var
 pos:integer;
 mydata:string;
begin
 pos:=GetPosition(AEdit);
 mydata:=StringReplace(AEdit.Text,'.','',[rfReplaceAll]);
 AEdit.Text:=Format('%.2n',[StrToFloatDef(mydata,0)]);
 AEdit.SelStart:=pos;
 Result:=pos;
end;


function ribuan(edit : Tedit): string;
var
 sRupiah: string;
 iRupiah: Currency;

// simpan: array[1..2] of char;

begin

//simpan[1]:=ThousandSeparator;
//simpan[2]:=DecimalSeparator;
//ThousandSeparator:='.';
//DecimalSeparator:=',';

 //ribuan --> currency ( menyesuaikan setting windows )
 sRupiah := edit.Text;
 sRupiah := StringReplace(sRupiah,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
 sRupiah := StringReplace(sRupiah,'.','',[rfReplaceAll,rfIgnoreCase]); //remove char titik . pemisah //ribuan IDR
 iRupiah := StrToCurrDef(sRupiah,0); // convert srupiah ke currency

//currency --> format ribuan
 edit.Text := FormatCurr('#,###',iRupiah);
// edit.Text := FormatFloat('#,#0.00   ;(#,#0.00)  ;-    ',iRupiah);

// Result:=FormatFloat('#,#0.00   ;(#,#0.00)  ;-    ', iRupiah);
// ThousandSeparator:=simpan[1];
// DecimalSeparator:=simpan[2];

 edit.SelStart := length(edit.text);
end;

function hapusribuan(edit : Tedit): string;
var hasil : string;
begin
 hasil := edit.text;
 hasil := StringReplace(hasil,',','',[rfReplaceAll,rfIgnoreCase]);
 hasil := StringReplace(hasil,'.','',[rfReplaceAll,rfIgnoreCase]);
 hapusribuan := hasil;
end;



function getReportPath : String;
 var
 sResult : String;
 begin
 sResult := ExtractFilePath(Application.ExeName) + '/rpt/';
 Result := sResult;
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

//format Rupiah desimal
function FinaceFloat(const AValue: Double): String;
var
simpan: array[1..2] of char;
begin
//if avalue = '' then Exit;
simpan[1]:=ThousandSeparator;
simpan[2]:=DecimalSeparator;
ThousandSeparator:='.';
DecimalSeparator:=',';
Result:=FormatFloat('#,#0.00   ;(#,#0.00)  ;-    ', AValue);
ThousandSeparator:=simpan[1];
DecimalSeparator:=simpan[2];
end;


end.