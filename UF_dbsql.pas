unit UF_dbsql;

interface

uses 
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,registry, Buttons, ExtCtrls, CheckLst,  jpeg, DB, ADODB,
  ComCtrls,DBAccess,MyAccess,CRGrid,DBGrids,comobj;


function ExecSQL1(Sql: string): boolean;
function caricvt(id:string):string;
function dataRow(Field:TField;res:string):string;
function carispcv(Sqlsp,strcarisp: string):string;
function carispagr(Spstr,strcarisp: string):string;
function generateID(tab,kol,id:string):string;
function buat_agenda(tab,kol,id:string):string;
function CariStokbrgTGL(nkode_cr,tglcr1,tglcr2: String):string;
function cekdataSQL(s: String):string;
//function cari_total_agr(id_agr:string):string;

implementation

uses UnModul,UncekSQL;

//datakosong
function dataRow(Field:TField;res:string):string;
begin
 if Field.IsNull then
    Result:=res
 else
    Result:=Field.Text;
end;


{
//execute sql
function ExecSQL1(Sql: string): boolean;
var q: TMyQuery;
begin
  q:=TMyQuery.Create(nil);
  q.Connection := DmModul.con1;
  q.ParamCheck:=False;
  q.SQL.Clear;
  q.SQL.Text:=Sql;
  try
  q.ExecSQL;
  Result:=True;
  except
    on e: Exception do begin
      Result:=False;
    end;
  end;
  q.Free;
end;
}


function ExecSQL1(Sql: string): boolean;
var q: TMyQuery;
begin
  q:=TMyQuery.Create(nil);
  q.Connection := DmModul.con1;
  q.ParamCheck:=False;
  q.SQL.Clear;
  q.SQL.Text:=Sql;
  try
  q.ExecSQL;
  Result:=True;
  except
    on e: Exception do begin
      Result:=False;
    end;
  end;
  q.Free;
end;

function caricvt(id:string):string;
var
 q1 : TMyQuery;
 tmp:String;
begin
  q1 := TMyQuery.Create(nil);
  q1.Connection := DmModul.con1;
 with q1 do
 begin
  Close;
  SQL.Text:='SELECT * FROM m_perusahaan WHERE NoVendor='+QuotedStr(id)+'';
  Open;
  if IsEmpty then
     tmp:='data cv tidak ada !!!!'
  else
     tmp:=FieldByName('NamaPerusahaan').AsString+
     '.'+FieldByName('pemilik').AsString;
  Result:=tmp;
 end;
  q1.Free;
 end;

function carispcv(Sqlsp,strcarisp: string):string;
var spcr: TMyStoredProc;
tmp:String;
begin
  spcr:= TMyStoredProc.Create(nil);
  spcr.Connection := DmModul.con1;
  spcr.Close;
  spcr.StoredProcName :=Sqlsp;
  spcr.PrepareSQL;
  spcr.ParamByName('strcari').AsString := strcarisp;

  try
  spcr.ExecSQL;
  if spcr.IsEmpty then
     tmp:='data cv Tidak Ada !!!'
  else
     tmp:=spcr.FieldByName('Nmcv').AsString;
  Result:=tmp;
  except
    //Result:=False;
  end;
  spcr.Free;
end;

function carispagr(Spstr,strcarisp: string):string;
var spcr1: TMyStoredProc;
tmp:String;
begin
  spcr1:= TMyStoredProc.Create(nil);
  spcr1.Connection := DmModul.con1;
  spcr1.Close;
  spcr1.StoredProcName :=Spstr;
  spcr1.PrepareSQL;
  spcr1.ParamByName('strcari').AsString := strcarisp;

  try
  spcr1.ExecSQL;
  if spcr1.IsEmpty then
     tmp:='data agr Tidak Ada !!!'
  else
     tmp:=spcr1.FieldByName('code').AsString+
     '/'+ spcr1.FieldByName('kd_pro').AsString+
     '/'+ spcr1.FieldByName('kd_keg').AsString+
     '/'+ spcr1.FieldByName('kode_rekening').AsString+
     '/'+ spcr1.FieldByName('Nmagr').AsString+
     '/'+ spcr1.FieldByName('nm_jns').AsString;
  Result:=tmp;
  except
    //Result:=False;
  end;
  spcr1.Free;
end;

//Nomor baru
 function generateID(tab,kol,id:string):string; //table , no ,jns
 var
  urut,tgl: string;
  i : integer;
  Qkwi : TMyQuery;
begin
  Qkwi := TMyQuery.Create(nil);
  Qkwi.Connection := DmModul.con1;
  tgl := FormatDateTime('yy',Date) + '-';
 // tgl := '16-';

  try
  With Qkwi do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select Max(right('+kol+', 6)) from '+tab+' ' +
              'Where mid('+kol+', 2,3) like ' + QuotedStr(tgl) + ';'); //JUMLAH NOMOR
      Active := true; //mid(no_kwi, 2,3)
    end;

  if Qkwi.Fields[0].AsString = '' then
    urut := '000001'
  else
    urut := IntToStr(Qkwi.Fields[0].AsInteger + 1);

  if length(urut) < 6 then              //000001
  begin
    for i := length(urut) to 5 do       // 5 = 00000
      urut := '0' + urut;
  end;
   Result :=id+tgl + urut;
   //cbo_no.Color := $FFCCCC;
  finally
     Qkwi.Close;
     Qkwi.free;
  end;
  end;

  function buat_agenda(tab,kol,id:string):string; //table , no ,jns
 var
  urut,tgl: string;
  i : integer;
  Qkwi1 : TMyQuery;
begin
  Qkwi1 := TMyQuery.Create(nil);
  Qkwi1.Connection := DmModul.con1;
  tgl := FormatDateTime('yy',Date) + '-';
  //tgl := '16-';
  try
  With Qkwi1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select Max(mid('+kol+',5,4)) from '+tab+' ' +
              'Where mid('+kol+', 2,3) like '+ QuotedStr(tgl) + 'AND  mid('+kol+', 1,1) like '+ QuotedStr(id) + ';'); //JUMLAH NOMOR
      Active := true; //mid(no_kwi, 2,3)
    end;

  if Qkwi1.Fields[0].AsString = '' then
    urut := '0001'
  else
    urut := IntToStr(Qkwi1.Fields[0].AsInteger + 1);

  if length(urut) < 4 then              //000001
  begin
    for i := length(urut) to 3 do       // 5 = 00000
      urut := '0' + urut;
  end;
   Result :=id+tgl + urut;

  finally
     Qkwi1.Close;
     Qkwi1.free;
  end;
  end;

 function cari_total_agr(id_agr:string):string;
var
 qtotalk : TMyStoredProc;
 ntotal : Integer;
 nsisa : Integer;
begin
  qtotalk := TMyStoredProc.Create(nil);
  try
    qtotalk.Connection := DmModul.con1;
    qtotalk.Close;
    qtotalk.StoredProcName := 'sp_cari_rekap';
    qtotalk.PrepareSQL;
    qtotalk.ParamByName('cari').AsString := id_agr; //key ba
    qtotalk.Execute;
   if qtotalk.RecordCount > 0 then
  begin
    ntotal := StrToInt(qtotalk.FieldByName('total').AsString);
    nsisa :=StrToInt(qtotalk.FieldByName('sisa').AsString);
   end
  else
    begin
    ShowMessage( 'data kosong / Tidak ADA : ' + id_agr );
    end;

  finally
    qtotalk.Close;
    qtotalk.Free;
  end;

end;

 function CariStokbrgTGL(nkode_cr,tglcr1,tglcr2: String):string;
var
  q7stok : TMyStoredProc;
  Stok_ambil : string;
begin
    q7stok := TMyStoredProc.Create(nil);
    q7stok.Connection := DmModul.con1;
  try

  q7stok.Close;
  q7stok.StoredProcName := 'sp_stoktglnama' ;
  q7stok.PrepareSQL;
  //q7.ParamByName('cari2').AsString := cbo_gudang.EditValue;
  //q7stok.ParamByName('tgl1').AsString := FormatDateTime('yyyy-mm-dd',tglcr1); //key stok Awal Tahun
  //q7stok.ParamByName('tgl2').AsString  := FormatDateTime('yyyy-mm-dd',tglcr2); //key Tgl Akhir
  q7stok.ParamByName('cari').AsString := nkode_cr;
  q7stok.Open;

  result:= Q7stok.FieldByName('stok').AsString;

  finally
    q7stok.Close;
    q7stok.Free;
  end;

end;

function cekdataSQL(s: String):string;
begin
    //FrmCekSQL
if FrmCekSQL=nil then
     FrmCekSQL:=TFrmCekSQL.Create(Application);
     FrmCekSQL.Show;
     FrmCekSQL.memoSQL.Text :=s;
end;

end.