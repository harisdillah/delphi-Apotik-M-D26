unit uDBXls;

interface

uses Windows, Classes, ShellApi, ComObj, DB, ADODB,
 DBAccess,MyAccess,MemDS,Messages,  Excel2000, System.SysUtils, System.DateUtils;
  // Pastikan Anda menggunakan unit yang sesuai dengan Excel API;

const
  XLS_MAX_ROW: Integer = 65536-1;
  MAX_SQL_LENGTH: Integer = 25000;
  TS: string = '.';

procedure OpenFile(Handle: HWND; const FileName: string);
//export

//import
function Import(FileName, DbName, TableName: string; Fields, Types: TStringList): Boolean;
function Importspobt(FileName, DbName, TableName:string; Fields, Types: TStringList): Boolean;
function Importdpa(FileName, DbName, TableName: string; Fields, Types: TStringList): Boolean;
function Importspkdetail(FileName, DbName, TableName:string; Fields, Types: TStringList): Boolean;
function Importkwiudetail(FileName, DbName, TableName:string; Fields, Types: TStringList): Boolean;
//function buatxls(filexls,namasp,strcari,nmsheet:string): Boolean;
//function buatxls_list(filexls,namasp,strcari,nmsheet:string): Boolean;

implementation
uses UnModul,unMenu,UF_setting;

///--------------------

// function buatxls(filexls,namasp,strcari,nmsheet:string): Boolean;
//var
////exls : Texlreport;
//spxls : TMyStoredProc;
//begin
//
//    exls := Texlreport.Create(nil);
//    spxls := TMyStoredProc.Create(nil);
//    try
//    spxls.Connection := DmModul.con1;
//    spxls.Close;
//    spxls.StoredProcName := namasp;
//    spxls.PrepareSQL;
//    //sp_brg.ParamByName('strTglAwal').AsString := strcari;
//    //sp_brg.ParamByName('strTglAkhir').AsString := tgl2;
//    spxls.Execute;
//    begin
//    exls.template :=getxlsPath+filexls;
//    exls.DataSet:= spxls;
//    exls.TemplSheet :=nmsheet;
//    exls.Show();
//    end;
//    finally
//    spxls.Close;
//    end;
//    end;

//function buatxls_list(filexls,namasp,strcari,nmsheet:string): Boolean;
//var
//exls : Texlreport;
//spxls : TMyStoredProc;
//begin
//
//    exls := Texlreport.Create(nil);
//    spxls := TMyStoredProc.Create(nil);
//    try
//    spxls.Connection := DmModul.con1;
//    spxls.Close;
//    spxls.StoredProcName := namasp;
//    spxls.PrepareSQL;
//    spxls.ParamByName('cari').AsString := strcari;
//    //sp_brg.ParamByName('strTglAkhir').AsString := tgl2;
//    spxls.Execute;
//    begin
//    exls.template :=filexls;
//    exls.DataSet:= spxls;
//    exls.TemplSheet :=nmsheet;
//    exls.Show();
//    end;
//    finally
//    spxls.Close;
//    end;
//    end;



//////---------------
function GetTempFile(const Extension: string): string;
var
  Buffer: array[0..MAX_PATH] of Char;
begin
  GetTempPath(SizeOf(Buffer)-1, Buffer);
  GetTempFileName(Buffer, '~', 0, Buffer);
  Result:=ChangeFileExt(Buffer, Extension);
  RenameFile(Buffer, Result);
end;

//function FileExists(const FileName: string): boolean;
//begin
//  if Trim(FileName)='' then Result:=False
//  else Result:=SysUtils.FileExists(FileName);
//end;

function FileExists(const FileName: string): boolean;
begin
  Result := (Trim(FileName) <> '') and FileExists(FileName);
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


  //Proses data sql
function ExecSQL(DbName, Sql: string): boolean;
var q1: TMyQuery;
begin

  q1:=TMyQuery.Create(nil);
  q1.Connection := DmModul.con1;
  q1.ParamCheck:=False;
  q1.SQL.Text:=Sql;
  try q1.ExecSQL; Result:=True;
  except
    on e: Exception do begin
      Result:=False;
    end;
  end;
  q1.Close;
  q1.Free;

  end;

function QuoteXLS(const Text: string): string;
var
  r: string;
begin
  r:=StringReplace(Text, #13#10, ' ', [rfReplaceAll]);
  r:=StringReplace(Text, #10, ' ', [rfReplaceAll]);
  if Pos(';', Text) > 0 then begin
    if Pos('"', Text) > 0 then
      r:=StringReplace(Text, '"', '""', [rfReplaceAll]);
    r:='"'+r+'"';
  end;
  Result:=r;
end;

function CellName(Row, Col: integer): string;
var
  iDiv, iMod: Integer;
begin
  iMod:=Col mod 26;
  if iMod=0 then iMod:=26;
  iDiv:=Round((Col-iMod)/26);
  if iDiv>0 then
    Result:=Chr(64+iDiv)+Chr(64+iMod)
  else Result:=Chr(64+iMod);
  if Row>0 then Result:=Result+IntToStr(Row);
end;

procedure OpenFile(Handle: HWND; const FileName: string);
begin
  if FileExists(FileName) then
    ShellExecute(Handle, 'open', PChar(FileName),
      nil, nil, SW_SHOWMAXIMIZED);
end;

 //import
function Import(FileName, DbName, TableName:string; Fields, Types: TStringList): Boolean;
var oExcel, oBook, oSheet: Variant; i, s, r: Integer;
    DF, Sql, Key, KeyData,Key2, KeyData2, FieldList, Data, DataList: string;

  function StrDate(s: string): TDateTime;
  begin
    try Result:=StrToDateTime(s)
    except Result:=EncodeDate(1900,1,1) end
  end;
  function StrNum(s: string): Extended;
  begin
    if s='' then Result:=0
    else Result:=SVal(StringReplace(s, ThousandSeparator, DecimalSeparator, [rfReplaceAll]));
  end;

  begin
  Key:=Fields.Strings[0];
  Key2:=Fields.Strings[1]; //NAMA KOLOM

  //showmessage(IntToStr(key2))
  //nama kolom
  for i:=0 to Fields.Count-1 do
    if i=0 then FieldList:=Fields.Strings[i]
    else FieldList:=FieldList+','+Fields.Strings[i];
  //excel mulai

  oExcel:=CreateOleObject('Excel.Application');
  try
    DF:=FormatSettings.ShortDateFormat;
    oExcel.DisplayAlerts:=0;
    //seleksi data tanggal
	case oExcel.International[32] of
      0: FormatSettings.ShortDateFormat:='m/d/y';
      1: FormatSettings.ShortDateFormat:='d/m/y';
      2: FormatSettings.ShortDateFormat:='y/m/d';

    end;
    oBook:=oExcel.Workbooks.Open(FileName);
    try
      for s:=1 to oBook.Sheets.Count do begin
        oSheet:=oBook.Sheets[s];
        r:=2;  //mulai baris
        repeat
          if (Trim(oSheet.Cells[r, 1].Value)='')
          or (Trim(oSheet.Cells[r, 1].Value)='-')
          then r:=XLS_MAX_ROW else begin
            for i:=0 to Fields.Count-1 do begin
              case StrToInt(Types.Strings[i]) of
                0: Data:=QuotedStr(Trim(oSheet.Cells[r, i+1].Value));
                1: Data:=NumSQL(NFormat(StrNum(oSheet.Cells[r, i+1].Value), 11));
                2: Data:=DTSQL(StrDate(oSheet.Cells[r, i+1].Value));
               end;
              if i=0 then begin
                DataList:=Data;
                KeyData:=Data;
              //  KeyData2:=Data;
              end else DataList:=DataList+','+Data;
            end;

        			    //mulai proses data SQL
            Sql:='delete from '+TableName+' where '+Key+'='+KeyData+ ' and ' +
            Key2+'='+QuotedStr(Trim(oSheet.Cells[r, 2].Value));
            //Fsp_medis.label50.caption := QuotedStr(Trim(oSheet.Cells[r, 2].Value));
            ExecSQL(DbName, Sql);
            Sql:='insert into '+TableName+'('+FieldList+')values('+DataList+')';
            ExecSQL(DbName, Sql);

          end;
		    Inc(r);
        //hitung proses import
		    //Fsp_medis.Caption := 'Baca Baris ke :' + IntToStr(r);
        until (r>XLS_MAX_ROW);
        
      end;
      //if Sql<>'' then ExecSQL(DbName, Sql);
      Result:=True;
    finally
      oBook.Close(false);
      oBook:='null';
    end;
  finally
    //ShortDateFormat:=DF;
    oExcel.Quit;
	  //Fsp_medis.Caption := 'Program Sp : by harisdillah@gmail.com';

  end;
end;


//---Import SP Obat
function Importspobt(FileName, DbName, TableName:string; Fields, Types: TStringList): Boolean;
var oExcel, oBook, oSheet: Variant; i, s, r: Integer;
    DF, Sql, Key, KeyData,Key2, KeyData2, FieldList, Data, DataList: string;

  function StrDate(s: string): TDateTime;
  begin
    try Result:=StrToDateTime(s)
    except Result:=EncodeDate(1900,1,1) end
  end;
  function StrNum(s: string): Extended;
  begin
    if s='' then Result:=0
    else Result:=SVal(StringReplace(s, ThousandSeparator, DecimalSeparator, [rfReplaceAll]));
  end;

  begin
  Key:=Fields.Strings[0];
  Key2:=Fields.Strings[1]; //NAMA KOLOM

  //showmessage(IntToStr(key2))
  //nama kolom
  for i:=0 to Fields.Count-1 do
    if i=0 then FieldList:=Fields.Strings[i]
    else FieldList:=FieldList+','+Fields.Strings[i];
  //excel mulai

  oExcel:=CreateOleObject('Excel.Application');

   try
    DF:=FormatSettings.ShortDateFormat;
    oExcel.DisplayAlerts:=0;
    //seleksi data tanggal
	case oExcel.International[32] of
      0: FormatSettings.ShortDateFormat:='m/d/y';
      1: FormatSettings.ShortDateFormat:='d/m/y';
      2: FormatSettings.ShortDateFormat:='y/m/d';

    end;
    oBook:=oExcel.Workbooks.Open(FileName);
    try
      for s:=1 to oBook.Sheets.Count do begin
        oSheet:=oBook.Sheets[s];
        r:=2;  //mulai baris
        repeat
          if (Trim(oSheet.Cells[r, 1].Value)='')
          or (Trim(oSheet.Cells[r, 1].Value)='-')
          then r:=XLS_MAX_ROW else begin
            for i:=0 to Fields.Count-1 do begin
              case StrToInt(Types.Strings[i]) of
                0: Data:=QuotedStr(Trim(oSheet.Cells[r, i+1].Value));
                1: Data:=NumSQL(NFormat(StrNum(oSheet.Cells[r, i+1].Value), 11));
                2: Data:=DTSQL(StrDate(oSheet.Cells[r, i+1].Value));
               end;
              if i=0 then begin
                DataList:=Data;
                KeyData:=Data;
              //  KeyData2:=Data;
              end else DataList:=DataList+','+Data;
            end;

        			    //mulai proses data SQL
            Sql:='delete from '+TableName+' where '+Key+'='+KeyData+ ' and ' +
            Key2+'='+QuotedStr(Trim(oSheet.Cells[r, 2].Value));
           // frm_importsp.label6.caption := QuotedStr(Trim(oSheet.Cells[r, 2].Value));
            ExecSQL(DbName, Sql);
            Sql:='insert into '+TableName+'('+FieldList+')values('+DataList+')';
            ExecSQL(DbName, Sql);

          end;
		    Inc(r);
        //hitung proses import
		   // frm_importsp.lblambil.Caption := 'Baca Baris ke :' + IntToStr(r);
       // frm_importsp.pb1.Min := 0;
       // frm_importsp.pb1.Position := r;
        until (r>XLS_MAX_ROW);

      end;
      //if Sql<>'' then ExecSQL(DbName, Sql);
      Result:=True;
    finally
      oBook.Close(false);
      oBook:='null';
    end;
  finally
    //ShortDateFormat:=DF;
    oExcel.Quit;
	 // Fsp_medis.Caption := 'Program Sp : by harisdillah@gmail.com';

  end;
end;


//---Import SPK Detail---
function Importspkdetail(FileName, DbName, TableName:string; Fields, Types: TStringList): Boolean;
var oExcel, oBook, oSheet: Variant; i, s, r: Integer;
    DF, Sql, Key, KeyData,Key2, KeyData2, FieldList, Data, DataList: string;

  function StrDate(s: string): TDateTime;
  begin
    try Result:=StrToDateTime(s)
    except Result:=EncodeDate(1900,1,1) end
  end;
  function StrNum(s: string): Extended;
  begin
    if s='' then Result:=0
    else Result:=SVal(StringReplace(s, ThousandSeparator, DecimalSeparator, [rfReplaceAll]));
  end;

  begin
  Key:=Fields.Strings[0];
  Key2:=Fields.Strings[1]; //NAMA KOLOM

  //showmessage(IntToStr(key2))
  //nama kolom
  for i:=0 to Fields.Count-1 do
    if i=0 then FieldList:=Fields.Strings[i]
    else FieldList:=FieldList+','+Fields.Strings[i];
  //excel mulai

  oExcel:=CreateOleObject('Excel.Application');
  try
   // DF:=ShortDateFormat;
    oExcel.DisplayAlerts:=0;
    //seleksi data tanggal
//	case oExcel.International[32] of
//      0: ShortDateFormat:='m/d/y';
//      1: ShortDateFormat:='d/m/y';
//      2: ShortDateFormat:='y/m/d';
//
//    end;
    oBook:=oExcel.Workbooks.Open(FileName);
    try
      for s:=1 to oBook.Sheets.Count do begin
        oSheet:=oBook.Sheets[s];
        r:=2;  //mulai baris
        repeat
          if (Trim(oSheet.Cells[r, 1].Value)='')
          or (Trim(oSheet.Cells[r, 1].Value)='-')
          then r:=XLS_MAX_ROW else begin
            for i:=0 to Fields.Count-1 do begin
              case StrToInt(Types.Strings[i]) of
                0: Data:=QuotedStr(Trim(oSheet.Cells[r, i+1].Value));
                1: Data:=NumSQL(NFormat(StrNum(oSheet.Cells[r, i+1].Value), 11));
                2: Data:=DTSQL(StrDate(oSheet.Cells[r, i+1].Value));
               end;
              if i=0 then begin
                DataList:=Data;
                KeyData:=Data;
              //  KeyData2:=Data;
              end else DataList:=DataList+','+Data;
            end;

        			    //mulai proses data SQL
            Sql:='delete from '+TableName+' where '+Key+'='+KeyData+ ' and ' +
            Key2+'='+QuotedStr(Trim(oSheet.Cells[r, 2].Value));
          //  frm_importsp.label6.caption := QuotedStr(Trim(oSheet.Cells[r, 2].Value));
            ExecSQL(DbName, Sql);
            Sql:='insert into '+TableName+'('+FieldList+')values('+DataList+')';
            ExecSQL(DbName, Sql);

          end;
		    Inc(r);
        //hitung proses import
		    //frm_importsp.lblambil.Caption := 'Baca Baris ke :' + IntToStr(r);
        //frm_importsp.pb1.Min := 0;
        //frm_importsp.pb1.Position := r;
        until (r>XLS_MAX_ROW);

      end;
      //if Sql<>'' then ExecSQL(DbName, Sql);
      Result:=True;
    finally
      oBook.Close(false);
      oBook:='null';
    end;
  finally
   // ShortDateFormat:=DF;
    oExcel.Quit;
	//  Fsp_medis.Caption := 'Program Sp : by harisdillah@gmail.com';

  end;
end;

function Importdpa(FileName, DbName, TableName:string; Fields, Types: TStringList): Boolean;
var oExcel, oBook, oSheet: Variant; i, s, r: Integer;
    DF, Sql, Key, KeyData,Key2, KeyData2, FieldList, Data, DataList: string;

  function StrDate(s: string): TDateTime;
  begin
    try Result:=StrToDateTime(s)
    except Result:=EncodeDate(1900,1,1) end
  end;
  function StrNum(s: string): Extended;
  begin
    if s='' then Result:=0
    else Result:=SVal(StringReplace(s, ThousandSeparator, DecimalSeparator, [rfReplaceAll]));
  end;

  begin
  Key:=Fields.Strings[0];
  Key2:=Fields.Strings[1]; //NAMA KOLOM

  //showmessage(IntToStr(key2))
  //nama kolom
  for i:=0 to Fields.Count-1 do
    if i=0 then FieldList:=Fields.Strings[i]
    else FieldList:=FieldList+','+Fields.Strings[i];
  //excel mulai

  oExcel:=CreateOleObject('Excel.Application');
  try
   // DF:=ShortDateFormat;
    oExcel.DisplayAlerts:=0;
    //seleksi data tanggal
//	case oExcel.International[32] of
//      0: ShortDateFormat:='m/d/y';
//      1: ShortDateFormat:='d/m/y';
//      2: ShortDateFormat:='y/m/d';
//
//    end;
    oBook:=oExcel.Workbooks.Open(FileName);
    try
      for s:=1 to oBook.Sheets.Count do begin
        oSheet:=oBook.Sheets[s];
        r:=2;  //mulai baris
        repeat
          if (Trim(oSheet.Cells[r, 1].Value)='')
          or (Trim(oSheet.Cells[r, 1].Value)='-')
          then r:=XLS_MAX_ROW else begin
            for i:=0 to Fields.Count-1 do begin
              case StrToInt(Types.Strings[i]) of
                0: Data:=QuotedStr(Trim(oSheet.Cells[r, i+1].Value));
                1: Data:=NumSQL(NFormat(StrNum(oSheet.Cells[r, i+1].Value), 11));
                2: Data:=DTSQL(StrDate(oSheet.Cells[r, i+1].Value));
               end;
              if i=0 then begin
                DataList:=Data;
                KeyData:=Data;
              //  KeyData2:=Data;
              end else DataList:=DataList+','+Data;
            end;

        			    //mulai proses data SQL agr
            Sql:='delete from '+TableName+' where '+Key+'='+KeyData;
          //  frm_masterdpa.PnOperasi.caption := 'no data :'+QuotedStr(Trim(oSheet.Cells[r, 1].Value));
            ExecSQL(DbName, Sql);
            Sql:='insert into '+TableName+'('+FieldList+')values('+DataList+')';
            ExecSQL(DbName, Sql);

          end;
		    Inc(r);
        //hitung proses import
		    //frm_masterdpa.Caption := 'Baca Baris ke :' + IntToStr(r);
        until (r>XLS_MAX_ROW);

      end;
      Result:=True;
    finally
      oBook.Close(false);
      oBook:='null';
    end;
  finally
  //  ShortDateFormat:=DF;
    oExcel.Quit;
	  //Fsp_medis.Caption := 'Program Sp : by harisdillah@gmail.com';

  end;
end;

//--detail import kwiu--
function Importkwiudetail(FileName, DbName, TableName:string; Fields, Types: TStringList): Boolean;
var oExcel, oBook, oSheet: Variant; i, s, r: Integer;
    DF, Sql, Key, KeyData,Key2, KeyData2, FieldList, Data, DataList: string;

  function StrDate(s: string): TDateTime;
  begin
    try Result:=StrToDateTime(s)
    except Result:=EncodeDate(1900,1,1) end
  end;
  function StrNum(s: string): Extended;
  begin
    if s='' then Result:=0
    else Result:=SVal(StringReplace(s, ThousandSeparator, DecimalSeparator, [rfReplaceAll]));
  end;

  begin
  Key:=Fields.Strings[0];
  Key2:=Fields.Strings[1]; //NAMA KOLOM

  //showmessage(IntToStr(key2))
  //nama kolom
  for i:=0 to Fields.Count-1 do
    if i=0 then FieldList:=Fields.Strings[i]
    else FieldList:=FieldList+','+Fields.Strings[i];
  //excel mulai

  oExcel:=CreateOleObject('Excel.Application');
  try
   // DF:=ShortDateFormat;
    oExcel.DisplayAlerts:=0;
    //seleksi data tanggal
//	case oExcel.International[32] of
//      0: ShortDateFormat:='m/d/y';
//      1: ShortDateFormat:='d/m/y';
//      2: ShortDateFormat:='y/m/d';
//
//    end;
    oBook:=oExcel.Workbooks.Open(FileName);
    try
      for s:=1 to oBook.Sheets.Count do begin
        oSheet:=oBook.Sheets[s];
        r:=2;  //mulai baris
        repeat
          if (Trim(oSheet.Cells[r, 1].Value)='')
          or (Trim(oSheet.Cells[r, 1].Value)='-')
          then r:=XLS_MAX_ROW else begin
            for i:=0 to Fields.Count-1 do begin
              case StrToInt(Types.Strings[i]) of
                0: Data:=QuotedStr(Trim(oSheet.Cells[r, i+1].Value));
                1: Data:=NumSQL(NFormat(StrNum(oSheet.Cells[r, i+1].Value), 11));
                2: Data:=DTSQL(StrDate(oSheet.Cells[r, i+1].Value));
               end;
              if i=0 then begin
                DataList:=Data;
                KeyData:=Data;
              //  KeyData2:=Data;
              end else DataList:=DataList+','+Data;
            end;

        			    //mulai proses data SQL
            Sql:='delete from '+TableName+' where '+Key+'='+KeyData+ ' and ' +
            Key2+'='+QuotedStr(Trim(oSheet.Cells[r, 2].Value));
          //  frm_importsp.label6.caption := QuotedStr(Trim(oSheet.Cells[r, 2].Value));
            ExecSQL(DbName, Sql);
            Sql:='insert into '+TableName+'('+FieldList+')values('+DataList+')';
            ExecSQL(DbName, Sql);

          end;
		    Inc(r);
        //hitung proses import
		    //frm_kwiu.lbl1.Caption := 'Baca Baris ke :' + IntToStr(r);
        //frm_importsp.pb1.Min := 0;
        //frm_importsp.pb1.Position := r;
        until (r>XLS_MAX_ROW);

      end;
      //if Sql<>'' then ExecSQL(DbName, Sql);
      Result:=True;
    finally
      oBook.Close(false);
      oBook:='null';
    end;
  finally
   // ShortDateFormat:=DF;
    oExcel.Quit;
	  //frm_kwiu.Caption := 'Program Sp : by harisdillah@gmail.com';

  end;
end;

end.
