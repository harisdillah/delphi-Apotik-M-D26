unit nuest;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,registry, Buttons, ExtCtrls, CheckLst,  jpeg, DB, ADODB,
  ComCtrls,DBClient,MyAccess,CRGrid,DBGrids,comobj;

function  bulatkan(input:real):integer;
function  caribatas(text:string;pemisah:char;indek:integer):string;
function  CekAngka(angka,pesan:string):Boolean;
function  cekKosong(nama,pesan:string):Boolean;  overload;
function  cekKosong(nama:TEdit;pesan:string):Boolean; overload;
function  cekKosong(nama:TComboBox;pesan:string):Boolean; overload;
function  cekNoHp(no,pesan:string):Boolean; overload;
function  cekNoHp(no:TEdit;pesan:string):Boolean; overload;
function  ceksama(nilai1,nilai2,pesan:string):Boolean;  overload;
function  ceksama(tabel,field,nilai,pesan:string):Boolean;  overload;
function  clearF(duit:string):string;
function  Explode(avalue:String;adelimiter:string):TStringList;
function  ExsporExcel(adone:TMyQuery):Boolean; overload;
function  ExsporExcel(data:TCRDBGrid;adone:TMyQuery):Boolean; overload;

function  FormatUang(angka:string):string;
function  gabungteks(teks: string;pemisah:char): string;

function  Tampilikon(button:TBitBtn;bmp:string):Boolean;    overload;
function  Tampilikon(button:TSpeedButton;bmp:string):Boolean;    overload;
function  Tampilikon(gambar:TImage;bmp:string):Boolean;    overload;
function  TampilKarakter(teksnya,jenisKarakterDibuang:string;jmlHasilKarakter:integer):string; overload;

procedure tampilTab(page:TPageControl;status:Boolean);
function  terbilang(angka:integer):string;

// Ke SQL
function   cari(kriteria:string):integer;   overload;
function   cari(adone: TMyQuery; kriteria: String):integer;  overload;
function   cari(adone: TMyQuery; tabele,kriteria: String):integer; overload;
function   ceksama(adone:TMyQuery;nilai1,nilai2,pesantrue,pesanfalse:string):Boolean; overload;
function   hapus(adone:TMyQuery;pesan:string):Boolean;    overload;
function   hapus(tabel,fieldkunci,nilai,pesan:string):Boolean;    overload;
function   isikombo(angka:tstrings;queryne,nmfield:string):Boolean;   overload;
function   konekDb(port:integer;koneksi:TMyConnection;server,user,pass,db:string):boolean;   overload;
procedure  proses(kriteria:string); overload;
function   sum(tabele,nmfield,kriteria: String):string;
function   TampilOto(angka:string;jmldigit:integer):string;   overload;
function   TampilOto(adone: TMyQuery; tabel,fieldKunci,mulai: string; tgl:TDate):string;  overload;
function   TampilOto(adone: TMyQuery; fieldKunci,perintah,mulai: string):string; overload;
function   TampilOto(adone: TMyQuery; fieldKunci,perintah,mulaiseries: string;jmldigit:integer):string;   overload;
function   TampilOto(adone: TMyQuery; fieldKunci,perintah,mulaiseries: string;tgl:TDate;jmldigit:integer):string;   overload;
Function RealFormat(FloatNum: Double): string;// untuk Desimal

procedure DBGridAddColumn(DBGrid: TCRDBGrid; sDBField: string; sColCaption: string; nColWidth: integer;nAligment:integer);

  { Public declarations }
 const
      WRN_H_GRID=$00FFF0CE;
      arbul:array [1..12] of string=('JAN','FEB','MAR','APR','MEI','JUN','JUL','AGU','SEP','OKT','NOV','DES');
      wrnpemilih:array [1..4] of tcolor=(clred,clyellow,clgreen,clblue);
      wrn:array [0..30] of tcolor=(
    clBlack,            //0
    clMaroon,           //1
    clGreen,            //2
    clOlive,            //3
    clNavy,             //4
    clPurple,           //5
    clTeal,             //6
    clGray,             //7
    clSilver,           //8
    clRed,              //9
    clLime,             //10
    clYellow,           //11
    clBlue,             //12
    clFuchsia,          //13
    clAqua,             //14
    clLtGray,           //15
    clDkGray,           //16
    clWhite,            //17
    clMoneyGreen,       //18
    clSkyBlue,          //19
    clCream,            //20
    clMedGray,          //21
    clActiveCaption,    //22
    clInactiveCaption,  //23
    clMenu,             //24
    clWindow,           //25
    clWindowFrame,      //26
    clMenuText,         //27
    clWindowText,       //28
    clCaptionText,      //29
    clActiveBorder     //30
    );

var
reg:TRegistry;

implementation
uses UnModul,UnMenu, StrUtils;

function  ExsporExcel(adone:TMyQuery):Boolean;
var
xlapp,xlbook,xlsheet:Variant;
i,x:Integer;
begin
xlapp:=CreateOleObject('Excel.Application');
xlapp.Visible:=true;
xlbook:=xlapp.workbooks.add;

xlsheet:=xlbook.worksheets.add;

x:=1;
adone.First;
while not adone.Eof do
  begin
  for i:=0 to adone.FieldCount-1 do
      begin
      xlsheet.cells[1,i+1].value:=adone.Fields[i].FieldName;
      xlsheet.cells[1+x,i+1].value:=adone.Fields[i].Text;
      end;
  adone.Next;
  inc(x);
  end;
end;


function  ExsporExcel(data:TCRDBGrid;adone:TMyQuery):Boolean; overload;
var
xlapp,xlbook,xlsheet:Variant;
i,x:Integer;
begin
xlapp:=CreateOleObject('Excel.Application');
xlbook:=xlapp.workbooks.add;
xlapp.Visible:=true;
xlsheet:=xlbook.worksheets.add;

x:=1;
adone.First;
while not adone.Eof do
  begin
  for i:=0 to data.FieldCount-1 do
      begin
      xlsheet.cells[1,i+1].value:=data.Fields[i].FieldName;
      xlsheet.cells[1+x,i+1].value:=data.Fields[i].Text;
      end;
  adone.Next;
  inc(x);
  end;
end;

function  TampilOto(angka:string;jmldigit:integer):string;   overload;
var hasil,hasil2:string;
index:integer;
begin
if length(angka)<jmldigit then
    begin
    hasil:=angka;
    repeat
    hasil:='0'+hasil;
    until length(hasil)>=jmldigit;
    end else hasil:=angka;
    Result:=hasil;
{
hasil:='000000000000000'+angka;
if length(hasil)>=jmldigit then
      begin
      index:=length(hasil);
      repeat
      if LeftStr(hasil,1)='0' then
          begin
          index:=index-1;
          hasil2:=RightStr(hasil,index);
          end;
      until   (LeftStr(hasil2,1)<>'0') or (index=jmldigit);
      Result:=RightStr(hasil2,index);
      end;
}

end;


function  Tampilikon(button:TBitBtn;bmp:string):Boolean;
var a:String;
begin
a:=ExtractFilePath(Application.ExeName)+'\'+bmp;
if FileExists(a) then
    begin
    button.Glyph.LoadFromFile(a);
    Result:=true;
    end
    else Result:=false;
end;
function  Tampilikon(button:TSpeedButton;bmp:string):Boolean;
var a:String;
begin
a:=ExtractFilePath(Application.ExeName)+'\'+bmp;
if FileExists(a) then
    begin
    button.Glyph.LoadFromFile(a);
    Result:=true;
    end
    else Result:=false;
end;
function  Tampilikon(gambar:TImage;bmp:string):Boolean;
var a:String;
begin
a:=ExtractFilePath(Application.ExeName)+'\'+bmp;
if FileExists(a) then
    begin
    gambar.Picture.LoadFromFile(a);
    Result:=true;
    end
    else Result:=false;
end;

function  Explode(avalue:String;adelimiter:string):TStringList;
var sl:TStringList;
x:integer;
s:string;
begin
sl:=TStringList.Create;
s:='';
for x:=1 to length(avalue)do
    begin
    if avalue[x]<>adelimiter then s:=s+avalue[x]
        else
        begin
        sl.Add(s);
        s:='';
        end;
    end;
if s<>'' then sl.Add(s);
Result:=sl;
end;



function  cekNoHp(no,pesan:string):Boolean;
begin
if no='' then exit;
if (LeftStr(no,1)<>'0') or (LeftStr(no,1)<>'+') then
    begin
    if pesan<>'' then ShowMessage(pesan);
    //nama.SetFocus;
    Result:=false;
    end
    else
    begin
    Result:=true;
    end;
end;
function  cekNoHp(no:TEdit;pesan:string):Boolean;
begin
if no.Text='' then exit;
if (LeftStr(no.Text,1)='0') or (LeftStr(no.Text,1)='+') then
    begin
    Result:=true;
    end
    else
    begin
    Result:=False;
    if pesan<>'' then ShowMessage(pesan);
    no.SetFocus;
    end;
end;

function  terbilang(angka:integer):string;
begin
//futama.ATTerbilang1.Number:=angka;
//Result:=futama.ATTerbilang1.Terbilang+' rupiah ';
end;

function  TampilKarakter(teksnya,jenisKarakterDibuang:string;jmlHasilKarakter:integer):string; overload;
var
index:integer;
hasil:string;
begin
if length(teksnya)>=jmlHasilKarakter then
      begin
      index:=length(teksnya);
      repeat
      if LeftStr(teksnya,1)=jenisKarakterDibuang then
          begin
          index:=index-1;
          hasil:=RightStr(teksnya,index);
          end;
      until   (LeftStr(hasil,1)<>jenisKarakterDibuang) or (index=jmlHasilKarakter);
      Result:=RightStr(hasil,index);
      end;
end;

//fungsi SQL

function  TampilOto(adone: TMyQuery; fieldKunci,perintah,mulaiseries: string;tgl:TDate;jmldigit:integer):string;   overload;
var hasil,hasil2:string;
a,awal:string;
index:integer;
begin
a:=FormatDateTime('yyMMdd',tgl);
  adone.Close;
  adone.sql.clear;
  adone.SQL.Add(perintah);
  adone.Open;
  awal:=mulaiseries+a;
  Result:=awal+'-00000000000000'+IntToStr(adone.RecordCount+1);
  hasil2:= caribatas(Result,'-',1);
  if length(hasil2)>=jmldigit then
      begin
      index:=length(hasil2);
      repeat
      if LeftStr(hasil2,1)='0' then
          begin
          index:=index-1;
          hasil:=RightStr(hasil2,index);
          end;
      until   (LeftStr(hasil,1)<>'0') or (index=jmldigit);
      Result:=awal+'-'+RightStr(hasil,index);
      end;

      repeat
      if cari(perintah+ ' where '+ fieldKunci+' = '+QuotedStr(Result))>0 then
      Result:= Result+'C';
      until  cari(perintah+ ' where '+ fieldKunci+' = '+QuotedStr(Result))<=0;

end;

function  TampilOto(adone: TMyQuery; fieldKunci,perintah,mulaiseries: string;jmldigit:integer):string;   overload;
var hasil,hasil2:string;
index:integer;
begin
  adone.Close;
  adone.sql.clear;
  adone.SQL.Add(perintah);
  adone.Open;

  Result:=mulaiseries+'-00000000000000'+IntToStr(adone.RecordCount+1);
  hasil2:= caribatas(Result,'-',1);
  if length(hasil2)>=jmldigit then
      begin
      index:=length(hasil2);
      repeat
      if LeftStr(hasil2,1)='0' then
          begin
          index:=index-1;
          hasil:=RightStr(hasil2,index);
          end;
      until   (LeftStr(hasil,1)<>'0') or (index=jmldigit);
      Result:=mulaiseries+'-'+RightStr(hasil,index);
      end;

      repeat
      if cari(perintah+ ' where '+ fieldKunci+' = '+QuotedStr(Result))>0 then
      Result:= Result+'C';
      until  cari(perintah+ ' where '+ fieldKunci+' = '+QuotedStr(Result))<=0;

end;

function TampilOto(adone: TMyQuery; fieldKunci,perintah,mulai: string):string;
begin
  adone.Close;
  adone.sql.clear;
  adone.SQL.Add(perintah);
  adone.Open;
  Result:=mulai+IntToStr(adone.RecordCount+1);
  if adone.Locate(fieldKunci,Result,[loCaseInsensitive])=true then
      begin
      Result:=mulai+IntToStr(adone.RecordCount+1)+'c';
      end;
end;

function tampilOto(adone: TMyQuery; tabel,fieldKunci,mulai: string;tgl:TDate):string;
var
a:string;
begin
  a:=FormatDateTime('yyMMdd',tgl);
  adone.SQL.Clear;
  adone.SQL.Add( 'select * from '+tabel+' where '+ fieldKunci+' like'+
  QuotedStr(mulai+a+'%'));
  adone.Open;
  Result:=mulai+a+'-'+IntToStr(adone.RecordCount+1);
  if adone.Locate(fieldKunci,Result,[loCaseInsensitive])=true then
      begin
      Result:=mulai+a+'-'+IntToStr(adone.RecordCount+1)+'c';
      end;
end;

function hapus(tabel, fieldkunci,nilai,pesan: string): Boolean;
var kriteria:string;
begin
if fieldkunci<>'' then
kriteria:='where '+fieldkunci+'='+QuotedStr(nilai) else
kriteria:='';
if not(pesan='') then
        begin
        if Application.MessageBox(pchar(pesan),'Peringatan',MB_YESNO+MB_ICONWARNING)= mryes then
            begin
            proses('delete from '+tabel+' '+kriteria);
            Result:=true;
            end
            else Result:=false;
        end
        else
        begin
        proses('delete from '+tabel+' '+kriteria);
        Result:=true;
        end;

end;





function ceksama(adone:TMyQuery;nilai1,nilai2,pesantrue,pesanfalse:string):Boolean;
begin
if adone.Locate(nilai1,nilai2,[loCaseInsensitive])=true then
    begin
    if pesantrue<>'' then ShowMessage(pesantrue);
    Result:=true;
    end
    else
    begin
    if pesanfalse<>'' then ShowMessage(pesanfalse);
    Result:=false;
    end;
end;


function hapus(adone:TMyQuery;pesan:string):Boolean;
begin
if adone.RecordCount>0 then
    begin
    if not(pesan='') then
        begin
        if Application.MessageBox(pchar(pesan),'Peringatan',MB_YESNO+MB_ICONWARNING)= mryes then
        adone.Delete;
        end
        else
        begin
        adone.Delete;
        end;
    Result:=true;
    end
    else
    Result:=false;
end;


function chekKosong(varstr:tedit;pesan:string):Boolean;
begin
if varstr.text='' then
    begin
    if not(pesan='') then ShowMessage(pesan);
    varstr.SetFocus;
    Result:=true;
    end
    else
    Result:=false;
end;







{Kumpulan procedure cari}

function cari(kriteria:string):integer;
begin
DmModul.addscari.Close;
DmModul.addscari.SQL.Clear;
DmModul.addscari.SQL.Add(kriteria);
DmModul.addscari.Open;
if DmModul.addscari.RecordCount>0 then
Result:=DmModul.addscari.RecordCount else
Result:=0;
end;

function cari(adone: TMyQuery; kriteria: String):integer;
begin
adone.Connection  := DmModul.con1;
adone.Close;
adone.SQL.Clear;
adone.SQL.Add(kriteria);
adone.Open;
if adone.RecordCount>0 then
Result:=adone.RecordCount
else
Result:=0;
end;


function cari(adone: TMyQuery; tabele,kriteria: String):integer;
begin
adone.Connection := DmModul.con1;
adone.Close;
adone.SQL.Clear;
adone.SQL.Add('select * from '+tabele+' '+kriteria);
adone.Open;
if adone.RecordCount>0 then
Result:=adone.RecordCount
else
Result:=0;
end;

function sum(tabele,nmfield,kriteria: String):string;
begin
cari('select sum('+nmfield+')as totale from '+tabele);
Result:=DmModul.ADdscari['totale'];
end;



procedure refreshAdo(adodataset: TMyQuery);
begin
adodataset.Close;
adodataset.Open;
end;


procedure proses(kriteria: string);
begin

DmModul.MyCommand1.SQL.Clear;
DmModul.MyCommand1.SQL.Add(kriteria);
DmModul.MyCommand1.Execute;
end;


function   konekDb(port:integer; koneksi:TMyConnection;server,user,pass,db:string):boolean;   overload;
begin
koneksi.Connected:=false;
koneksi.Server:=server;
koneksi.Username:=user;
koneksi.Password:=pass;
koneksi.Database:=db;
koneksi.Port:=port;
//koneksi.ConnectionTimeout:=5000;
try
koneksi.Connect;
 except


//ShowMessage('Tidak dapat terhubung ke server'+#13+'Periksa kembali pengaturan atau koneksinya');
end;
if koneksi.Connected=true then Result:=true else Result:=false;

end;

function  ceksama(tabel,field,nilai,pesan:string):Boolean;
begin
if cari('select * from '+tabel+' where '+field+'='+
    QuotedStr(nilai))>0  then
    begin
    if pesan<>'' then ShowMessage(pesan);
    Result:=true;
    end
    else
    begin

    Result:=false;
    end;
end;

function  isikombo(angka:tstrings;queryne,nmfield:string):Boolean;   overload;
var a:integer;
begin
angka.Clear;
if cari(queryne) >0 then
    begin
    for  a:=1 to DmModul.addscari.RecordCount do
        begin
        DmModul.addscari.RecNo:=a;
        if DmModul.addscari[nmfield]<>null then
        angka.Add(DmModul.addscari[nmfield]);
        end;
    end;
end;



///////////////////////////////////////////////////////
//////////////////////////////////////////////////////
/////////////////////////////////////////////////////
// Fungsi pada Acces

///////////////////////////////////////////////////
{
function  konekDb(koneksi:TADOConnection;namaDatabase:string):boolean;
begin
if not(namaDatabase='') then
    begin
    koneksi.Close;
    koneksi.Connected:=false;
    koneksi.ConnectionString:=
    'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+namaDatabase+
    ';Persist Security Info=False';
    try
    koneksi.Connected:=true;
    Result:=true;
    except
    Result:=false;
    end;
    end;
end;
}
{
procedure prosesA(queryAkses:string);
begin
DmModul.con1.Execute(queryAkses);
end;
 }
function  clearF(duit:string):string;
var i:integer;
a:char;
nilai:string;
begin
for i:=1 to length(duit) do
    begin
    a:=duit[i];
    //if not((a='.')or (a=',') or (a='R') or (a='P') or (a='r') or (a='$') or (a='p')) then
    if (a in ['0'..'9']) then
    nilai:=nilai+a;
    end;
    Result:=nilai;
end;

{
function  isikomboA(angka:tstrings;queryne,nmfield:string):Boolean;   overload;
var a:integer;
begin
angka.Clear;
if cariA(queryne) >0 then
    begin
    for  a:=1 to DmModul.addscariA.RecordCount do
        begin
        DmModul.addscariA.RecNo:=a;
        angka.Add(DmModul.addscariA[nmfield]);
        end;
    end;
end;
 }
function gabungteks(teks: string;pemisah:char): string;
var sl: TStringList;
 i:integer;
hasil:string;
begin
  sl := TStringList.Create;
  sl.Delimiter :=pemisah;
  sl.DelimitedText := teks;
  for i:=0 to sl.Count-1 do
      begin
      hasil:=hasil+sl[i];
      end;
  Result:=hasil;
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

function bulatkan(input:real):integer;
begin
  Result := round(input);
end;

function CekAngka(angka,pesan:string):Boolean;
var a:integer;
begin
try
a:=StrToInt(angka);
Result:=true;
except
if pesan<>'' then ShowMessage(pesan);
Result:=false;
end;
end;

{
procedure hapus(adone:TADOConnection;tabel,nmfil,pembanding:string);
begin
adone.Execute('delete * from '+tabel+' where '+nmfil+'='+QuotedStr(pembanding));
end;

procedure simpan(koneksi:TADOConnection; sintak:string);
begin
koneksi.Execute(sintak);
//ShowMessage('penyimpanan berhasil');
end;
 }
{
function hapus(adone:tadodataset;pesan:string):Boolean;
begin
if adone.RecordCount>0 then
    begin
    if not(pesan='') then
        begin
        if Application.MessageBox(pchar(pesan),'Peringatan',MB_YESNO+MB_ICONWARNING)= mryes then
        adone.Delete;
        end
        else
        begin
        adone.Delete;
        end;
    Result:=true;
    end
    else
    Result:=false;
end;
}
{
procedure refreshAdo(adone:TADODataSet);
begin
adone.Close;
adone.Open;
end;

function cari(adone:TADODataSet;kriteria:string):integer;
begin
adone.Close;
adone.CommandText:=kriteria;
adone.Open;
if adone.RecordCount>0 then
Result:=adone.RecordCount
else
Result:=0;
end;
 }
function caribatas(text:string;pemisah:char;indek:integer):string;
var sl: TStringList;
begin
  if text='' then exit;
  sl := TStringList.Create;
  sl.Delimiter :=pemisah;
  sl.DelimitedText := text;
  if sl.Count>0 then
  Result:=sl[indek];
end;

{
function cariA(kriteria:string):integer;
begin
DmModul.addscariA.Close;
DmModul.addscariA.CommandText:=kriteria;
DmModul.addscariA.Open;
if DmModul.addscariA.RecordCount>0 then
Result:=DmModul.addscariA.RecordCount else
Result:=0;
end;
 }
 {
 function EnCrip(nStr:String):String;
var
  I:Integer;
  nSem:String;
  cSem:Char;
  nNum:Integer;
begin
  nSem:='';
  for I:=1 to length(nStr) do
  begin
    cSem:=nStr[I];
    nNum:=ord(cSem)+10;
    nSem:=nSem+chr(nNum);
  end;
  Result:=nSem;
end;
}
{
function DeCrip(nStr:String):String;
var
  I:Integer;
  nSem:String;
  cSem:Char;
  nNum:Integer;
begin
  for I:=1 to length(nStr) do
  begin
    cSem:=nStr[I];
    nNum:=ord(cSem)-10;
    nSem:=nSem+chr(nNum);
  end;
  Result:=nSem;
end;
}
function ceksama(nilai1,nilai2,pesan:string):Boolean;
begin
if nilai1=nilai2 then
    begin

    Result:=true;
    end
    else
    begin
    if pesan<>'' then ShowMessage(pesan);
    Result:=false;
    end;
end;


{
function  ceksamaA(tabel,field,nilai,pesan:string):Boolean;
begin
if cariA('select * from '+tabel+' where '+field+'='+
    QuotedStr(nilai))>0  then
    begin
    if pesan<>'' then ShowMessage(pesan);
    Result:=true;
    end
    else
    begin

    Result:=false;
    end;
end;

function ceksama(adone:TADODataSet;fieldKunci,nilai,pesantrue,pesanfalse:string):Boolean;
begin
if adone.Locate(fieldKunci,nilai,[loCaseInsensitive])=true then
    begin
    if pesantrue<>'' then ShowMessage(pesantrue);
    Result:=true;
    end
    else
    begin
    if pesanfalse<>'' then ShowMessage(pesanfalse);
    Result:=false;
    end;
end;
function ceksama(adone:TClientDataSet;fieldKunci,nilai,pesantrue,pesanfalse:string):Boolean;
begin
if adone.Locate(fieldKunci,nilai,[loCaseInsensitive])=true then
    begin
    if pesantrue<>'' then ShowMessage(pesantrue);
    Result:=true;
    end
    else
    begin
    if pesanfalse<>'' then ShowMessage(pesanfalse);
    Result:=false;
    end;
end;
}



procedure tampilTab(page:TPageControl;status:Boolean);
begin
if status=false then
    begin
    page.TabHeight:=1;
    page.TabWidth:=1;
    end
    else
    begin
    page.TabHeight:=0;
    page.TabWidth:=0;
    end;
end;
function cekKosong(nama,pesan:string):Boolean;
begin
if nama='' then
    begin
    if pesan<>'' then ShowMessage(pesan);
    Result:=true;
    end
    else
    begin
    Result:=false;
    end;
end;
function cekKosong(nama:TEdit;pesan:string):Boolean;
begin
if nama.Text='' then
    begin
    if pesan<>'' then ShowMessage(pesan);
    nama.SetFocus;
    Result:=true;
    end
    else
    begin
    Result:=false;
    end;
end;

function cekKosong(nama:TComboBox;pesan:string):Boolean;
begin
if nama.Text='' then
    begin
    if pesan<>'' then ShowMessage(pesan);
    nama.SetFocus;
    Result:=true;
    end
    else
    begin
    Result:=false;
    end;
end;


function regbuat(key:HKEY;rot,status,nama,nilai:string):string;
begin
reg:=TRegistry.Create;
reg.RootKey:=key;
reg.OpenKey(rot,true);
if status='str' then
    begin
    reg.WriteString(nama,nilai);
    end
    else
if status='bol' then
    begin
    reg.WriteBool(nama,strtobool(nilai));
    end
    else
if status='int' then
    begin
    reg.WriteFloat(nama,strtofloat(nilai));
    end
    else
if status='date' then
    begin
    reg.WriteDate(nama,StrToDate(nilai));
    end;
reg.CloseKey;
reg.Free;

end;

function regBaca(key:HKEY;rot,status,nama:string):string;
begin
reg:=TRegistry.Create;
reg.RootKey:=key;

reg.OpenKey(rot,false);
if status='str' then
    begin
    Result:=reg.ReadString(nama);
    end
    else
if status='bol' then
    begin

    Result:=BoolToStr(reg.ReadBool(nama));
    end
    else
if status='int' then
    begin
    Result:=FloatToStr(reg.ReadInteger(nama));
    end
    else
if status='date' then
    begin
    Result:=DateToStr(reg.ReadDate(nama));
    end;
reg.CloseKey;
reg.Free;

end;

function reghapus(key:HKEY;rot,nama:string):string;
begin
reg:=TRegistry.Create;
reg.RootKey:=key;
reg.OpenKey(rot,false);
reg.DeleteValue(nama) ;
reg.CloseKey;
reg.Free;
end;

function regcekAda(key:HKEY;rot,nama:string):Boolean;
begin
reg:=TRegistry.Create;
reg.RootKey:=key;
reg.OpenKey(rot,false);
if reg.ValueExists(nama)=true then
Result:=true else
Result:=false;
reg.CloseKey;
reg.Free;
end;

//
Function RealFormat(FloatNum: Double): string;
Var
     ls_FloatNumber: String;
Begin
     ls_FloatNumber:=StringReplace(FloatToStr(FloatNum),',','.',[rfReplaceAll]);
     IF Pos('.', ls_FloatNumber) > 0 Then
          Result :=
            (copy(ls_FloatNumber, 1, Pos('.', ls_FloatNumber) - 1) + '.' + copy
                 (ls_FloatNumber, Pos('.', ls_FloatNumber) + 1, 2))
     Else
          Result := FloatToStr(FloatNum);
End;

procedure DBGridAddColumn(DBGrid: TCRDBGrid; sDBField: string; sColCaption: string; nColWidth: integer;nAligment:integer);
var
  nColumnsCount: integer;
  x:TFieldType;
  y:integer;
begin

  DBGrid.Columns.Add.FieldName := sDBField;
  nColumnsCount := DBGrid.Columns.Count - 1;
  DBGrid.Columns[nColumnsCount].Title.Caption := sColCaption;
  DBGrid.Columns[nColumnsCount].Title.font.Style:= [fsbold];
  DBGrid.Columns[nColumnsCount].Title.Alignment:= tacenter;
  DBGrid.Columns[nColumnsCount].Width := nColWidth;
  DBGrid.Columns[nColumnsCount].font.Style:=DBGrid.Columns[nColumnsCount].font.Style -[fsbold];

 DBGrid.Columns[nColumnsCount].Title.Color:=WRN_H_GRID;
 case nAligment of
     1:DBGrid.Columns[nColumnsCount].Alignment:=taLeftJustify;
     2:DBGrid.Columns[nColumnsCount].Alignment:=tacenter;
     3:DBGrid.Columns[nColumnsCount].Alignment:=tarightJustify;
 end;

end;

end.
