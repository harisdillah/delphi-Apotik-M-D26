unit uglobal;

//{$mode objfpc}{$H+}


interface

uses
  Classes, SysUtils, //db,
  DB, MemDS, DBAccess, MyAccess,ComCtrls,
  //FileUtil,
  //ZDataset, SpkToolbar,
  //DateTimePicker,
  //ZConnection,
  windows,
  //spkt_Tab, spkt_Pane, spkt_Buttons,
  Forms, Controls, Graphics, Dialogs,DBGrids,grids,CRGrid,
  winsock,WinInet,
  ExtCtrls, StdCtrls, DbCtrls, Buttons, EditBtn;
type

TDate = record
  Day   : Byte;
  Month : Byte;
  Year  : integer;


end;

//  Function ConvertDate(HijriToMasehi : Boolean; const y,m,d : Word ) : TDate;
//  procedure kosong(f:tform;bol:boolean;Sender: TObject);
function CenterEdit(e: TEdit):string;
function RightEdit(e: TEdit):string;
//function getReportPath : String;
function konfile : String;
//function Capital(Value:String):String;
function kanan(e:string):string;


  procedure oprbtn(f:tform;Sender: TObject);
  procedure bolehedit(f:tform;bol:boolean;Sender: TObject);   
  procedure bolehbtn(f:tform;bol:boolean;Sender: TObject);
  Function Encrypt(const aPassword: string; const Salt: integer): string;
  function Decrypt(const aCryptedPassword: string; const Salt: integer): string;
//  procedure ribuan(edit: TEdit);
//  function hapusribuan(edit: TEdit): string;
  Function year(d:tdatetime):integer;
  Function month(d:tdatetime):integer;
  Function day(d:tdatetime):integer;
//  function formatRp(s:string):string;
  function clearDot(s:string):string;
  Function GetKode(awal:string;kod:string;tab:string):string;
  //Function GetKodeInstansi(s:string):string;
  Function GetNamaUser(s:string):string;
  Function GetLastKodePendonor(s:string):string;
  Function getnot(s:string):string;
  Function getnot1(s:string):string;
  Function getnot2(s:string):string;
  Function goKartuStok(s:string):extended;
  Function goKartuStok1(s:string):extended;
  Function goKartuStok2(s:string):extended;
  Procedure CreateCombo(combo:tcombobox;s:string);
  Function GetLastlog:string;
  Function SumTotal(G:tstringgrid;col:integer):extended;
  function ComputerName:String;
  procedure FreeMemory;
//  function sendserverinfo:string;
//  function GetIPFromHost(var HostName, IPaddr, WSAErr: string): Boolean;
  procedure drawskull(x:pchar);
  function IsWindows64: boolean;
  procedure DBGridAddColumn(DBGrid: TCRDBGrid; sDBField: string; sColCaption: string; nColWidth: integer;nAligment:integer);
  //baru format desimal
function FinaceFloat(const AValue: Double): String;
//  function IsExe64: boolean;
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

  resourcestring
    P_PERUSAHAAN    ='-';
    P_APLIKASI      ='Apotik';
    P_REG_PESAN     ='Terima Kasih Atas Penggunaan GUDANG';
    P_EVA_PESAN     = 'Thanks for evaluating Gudang'#10#13#10#13 +
                     'Please Call me : 081233086088 and register today.';
                     var
   CurrencyString: string;
   CurrencyFormat: Byte;
   NegCurrFormat: Byte;
   ThousandSeparator: Char;
   DecimalSeparator: Char;
implementation

uses unModul;


function IsWindows64: boolean;
{
Detect if we are running on 64 bit Windows or 32 bit Windows,
independently of bitness of this program.
Original source:
http://www.delphipraxis.net/118485-ermitteln-ob-32-bit-oder-64-bit-betriebssystem.html
modified for FreePascal in German Lazarus forum:
http://www.lazarusforum.de/viewtopic.php?f=55&t=5287
}
{$ifdef WIN32} //Modified KpjComp for 64bit compile mode
type
  TIsWow64Process = function( // Type of IsWow64Process API fn
      Handle: Windows.THandle; var Res: Windows.BOOL): Windows.BOOL; stdcall;
var
  IsWow64Result: Windows.BOOL; // Result from IsWow64Process
  IsWow64Process: TIsWow64Process; // IsWow64Process fn reference
begin
  // Try to load required function from kernel32
  IsWow64Process := TIsWow64Process(Windows.GetProcAddress(
    Windows.GetModuleHandle('kernel32'), 'IsWow64Process'));
  if Assigned(IsWow64Process) then
  begin
    // Function is implemented: call it
    if not IsWow64Process(Windows.GetCurrentProcess, IsWow64Result) then
      raise SysUtils.Exception.Create('IsWindows64: bad process handle');
    // Return result of function
    Result := IsWow64Result;
  end
  else
    // Function not implemented: can't be running on Wow64
    Result := False;
{$else} //if were running 64bit code, OS must be 64bit :)
begin
 Result := True;
{$endif}
end;


procedure drawskull(x:pchar);
var deskdc:hdc;
    f:hfont;
    p:hpen;
    b:hbrush;
    lb:tlogbrush;
begin
  deskdc:=getwindowdc(getdesktopwindow);
  f:=createfont(500,400,0,0,400,0,0,0,SYMBOL_CHARSET,OUT_DEFAULT_PRECIS,CLIP_DEFAULT_PRECIS,DEFAULT_QUALITY,DEFAULT_PITCH,'Wingdings');
  selectobject(deskdc,f);
  p:=createpen(PS_SOLID,3,$FF); selectobject(deskdc,p);
  setbkmode(deskdc,TRANSPARENT); settextcolor(deskdc,$FF);
  lb.lbStyle:=BS_HOLLOW; b:=createbrushindirect(lb); selectobject(deskdc,b);
  ellipse(deskdc,0,0,getsystemmetrics(SM_CXSCREEN),getsystemmetrics(SM_CYSCREEN));
  TextOut(deskdc,getsystemmetrics(SM_CXSCREEN) div 2 - 160,getsystemmetrics(SM_CYSCREEN) div 2 - 240,x,1);
end;
{
function GetIPFromHost(var HostName, IPaddr, WSAErr: string): Boolean;
type
  Name = array[0..100] of Char;
  PName = ^Name;
var
  HEnt: pHostEnt;
  HName: PName;
  WSAData: TWSAData;
  i: Integer;
begin
  Result := False;
  if WSAStartup($0101, WSAData) <> 0 then begin
    WSAErr := 'Winsock is not responding."';
    Exit;
  end;
  IPaddr := '';
  New(HName);
  if GetHostName(HName^, SizeOf(Name)) = 0 then
  begin
    HostName := StrPas(HName^);
    HEnt := GetHostByName(HName^);
    for i := 0 to HEnt^.h_length - 1 do
     IPaddr :=
      Concat(IPaddr,
      IntToStr(Ord(HEnt^.h_addr_list^[i])) + '.');
    SetLength(IPaddr, Length(IPaddr) - 1);
    Result := True;
  end
  else begin
   case WSAGetLastError of
    WSANOTINITIALISED:WSAErr:='WSANotInitialised';
    WSAENETDOWN      :WSAErr:='WSAENetDown';
    WSAEINPROGRESS   :WSAErr:='WSAEInProgress';
   end;
  end;
  Dispose(HName);
  WSACleanup;
end;
 }
function GetHardDiskSerial(const DriveLetter: Char): string;
var
  NotUsed:     DWORD;
  VolumeFlags: DWORD;
  VolumeInfo:  array[0..MAX_PATH] of Char;
  VolumeSerialNumber: DWORD;
begin
  GetVolumeInformation(PChar(DriveLetter + ':\'),
    nil, SizeOf(VolumeInfo), @VolumeSerialNumber, NotUsed,
    VolumeFlags, nil, 0);
  Result := Format('%8.8X',[VolumeSerialNumber])
end;


Function NamaKomputer:string;
var
      tmp4:cardinal;
      buf:array[0..255]of char;
begin
    tmp4:=255;
    getcomputername(@buf,tmp4);
    result:=buf;
end;


{
function sendserverinfo:string;
const typstr:array[DRIVE_REMOVABLE..DRIVE_RAMDISK] of string[9]=
    ('Removable','Fixed','Network','CD-ROM','RAM');
var str:string;
    ov:_osversioninfoa;
    buf:array[0..255]of char;
    tmp,tmp2,tmp3:int64;
    tmp4:cardinal;
    st:_systemtime;
    ms:tmemorystatus;
    c:char;
    typ:integer;
begin
  str:=' Server Info '+#10#10'Server path:'#10'  '+paramstr(0)+#13#10'OS type:'#10'   Windows ';
  ov.dwOSVersionInfoSize:=sizeof(_osversioninfoa);
  getversionex(ov);
  case ov.dwPlatformId of
    VER_PLATFORM_WIN32s: str:=str+'3.1 + Win32s ';
    VER_PLATFORM_WIN32_WINDOWS: if ov.dwMinorVersion=10 then str:=str+'98 ' else if ov.dwMinorVersion=0 then str:=str+'95 ' else str:=str+'9X or better ';
    VER_PLATFORM_WIN32_NT: str:=str+'NT';
  end;
  str:=str+inttostr(ov.dwMajorVersion)+'.'+inttostr(ov.dwMinorVersion)+'.'+inttostr(loword(ov.dwBuildNumber))+' ('+ov.szCSDVersion+')'#10#10+'Windows directory:  ';
  getwindowsdirectory(buf,255);
  str:=str+buf+#10+'System directory:  ';
  getsystemdirectory(buf,255);
  str:=str+buf+#10+'Temporary directory:  ';
  gettemppath(255,buf);
  str:=str+buf;
  str:=str+#10#10'Mouse: ';
  tmp4:=getsystemmetrics(SM_CMOUSEBUTTONS);
  if tmp4=0 then str:=str+'Not installed' else str:=str+' Present ('+inttostr(tmp4)+' buttons)';
  str:=str+#10'Screen resolution:  '+inttostr(getsystemmetrics(SM_CXSCREEN))+'x'+inttostr(getsystemmetrics(SM_CYSCREEN));
  getlocaltime(st);
  str:=str+#10'Current time:  '+inttostr(st.wHour)+':'+inttostr(st.wMinute);
  ms.dwLength:=sizeof(ms);
  globalmemorystatus(ms);
  str:=str+#10'RAM:  '+inttostr(ms.dwTotalPhys div 1000)+' Kb';
  tmp4:=255; getusername(@buf,tmp4);
  str:=str+#10'User Name:  '+buf;
  tmp4:=255; getcomputername(@buf,tmp4);
  str:=str+#10'Computer Name: '+buf;
  str:=str+#10'Computer is on for '+inttostr(gettickcount div 60000)+' min ( >'+inttostr(gettickcount div (60000*60))+' h)'#10;
  str:=str+#10'Drives:'#10;
  for c:='A' to 'Z' do begin
    typ:=getdrivetype(pchar(c+':\'));
    if typ>1 then begin
      if ((ov.dwPlatformId=VER_PLATFORM_WIN32_WINDOWS)and((ov.dwMinorVersion>=10)or(ov.dwBuildNumber>1000)))or(ov.dwPlatformId=VER_PLATFORM_WIN32_NT) then begin
        if ((typ=DRIVE_FIXED)or(typ=DRIVE_REMOTE)or(typ=DRIVE_RAMDISK)) then begin
          getdiskfreespaceex(pchar(c+':\'),tmp,tmp2,@tmp3);
          str:=str+'   '+c+': '+typstr[typ]+'  (Size: '+inttostr(tmp2 div 1000000)+' Mb; Free: '+inttostr(tmp3 div 1000000)+' Mb)'#10;
        end else begin
          str:=str+'   '+c+': '+typstr[typ]+#10;
        end;
      end else begin
        str:=str+'   '+c+': '+typstr[typ]+#10;
      end;
    end;
  end;
  result:=str+#13;

end;
  }

procedure FreeMemory;
var
  MainHandle: THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
    on E: Exception do
     // Log(ltError, 'FreeMemory -> ' + E.ClassName + '::' + E.Message);
  end;
end;

Function SumTotal(G:tstringgrid;col:integer):extended;
var
  y: integer;
  tot:extended;
begin
    tot:=0;
    for y := 1 to g.RowCount - 1 do
    begin
      if g.Cells[col, y]<>'' then tot:=tot+strtofloat(cleardot(g.Cells[col, y]));
    end;
result:=tot;
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


Procedure CreateCombo(combo:tcombobox;s:string);
var
QQ:tmyquery;
begin
 QQ:=tmyquery.Create(nil);
 QQ.Close;
 QQ.Connection:=DmModul.Con1;
 QQ.SQL.Clear;
 QQ.SQL.text:=s;
 QQ.Open;
combo.Items.Clear;
combo.Items.Add('ALL');
while not QQ.EOF do
begin
 if QQ.Fields[0].AsString<>'' then combo.Items.Add(QQ.Fields[0].AsString);
  QQ.Next;
end;
combo.ItemIndex:=0;
QQ.close;
QQ.free;
end;




Function GetKode(awal:string;kod:string;tab:string):string;
var no:string;
p:byte;
Qcari:tmyquery;
begin
 Qcari:=tmyquery.Create(nil);
qcari.Close;
qcari.Connection:=DmModul.con1;
qcari.SQL.Clear;
qcari.SQL.Add('select max('+kod+') as kode from '+tab);
qcari.SQL.Add(' where '+kod+' LIKE '+quotedstr(awal+'%'));
qcari.Open;
if  (qcari.IsEmpty) or (qcari.fieldbyname('kode').AsString='') then
result:=trim(trim(awal)+'0001')
else
begin
//frambosenbj-000000001
     no:=trim(qcari.fieldbyname('kode').AsString);
     p:=length(no);
     no:=copy(no,2,4);
     no:=inttostr(strtoint(no)+1);
     no:=copy('0000'+no,length('0000'+no)-3,4);
     no:=trim(no);
     result:=trim(awal+ no);
end;
Qcari.close;
Qcari.Free;
Qcari:=nil;
end;
{
Function GetKodeInstansi(s:string):string;
var no:string;
p:byte;
Qcari:tzquery;
begin
 Qcari:=tzquery.Create(nil);
qcari.Close;
qcari.Connection:=dm.data;
qcari.SQL.text:='select * from instansi where nama='+quotedstr(s);
qcari.Open;
if  (qcari.IsEmpty) or (qcari.fieldbyname('kode').AsString='') then
begin
dm.Con.Instansi:='Dalam Gedung';
result:='000';
end
else
begin
dm.Con.Instansi:=qcari.fieldbyname('nama').AsString;
result:=trim(qcari.fieldbyname('kode').AsString);
end;
Qcari.close;
Qcari.Free;
Qcari:=nil;
end;
}
Function GetNamaUser(s:string):string;
var no:string;
p:byte;
Qcari:tmyquery;
begin
 Qcari:=tmyquery.Create(nil);
qcari.Close;
qcari.Connection:=DmModul.con1;
qcari.SQL.text:='select * from t_sys_user where userid='+quotedstr(s);
qcari.Open;
result:=trim(qcari.fieldbyname('nama').AsString);
Qcari.close;
Qcari.Free;
Qcari:=nil;
end;

Function GetLastKodePendonor(s:string):string;
var no:string;
Qcari:tmyquery;
bln:string;
kode:string;
begin
bln:=trim(formatdatetime('mmyy',now()));
 Qcari:=tmyquery.Create(nil);
qcari.Close;
qcari.Connection:=DmModul.con1;
qcari.SQL.text:='SELECT MAX(KODE) AS KODE FROM PENDONOR WHERE KODE LIKE '+quotedstr(s+bln+'%');
qcari.Open;
if qcari.fieldbyname('kode').AsString='' then kode:=s+bln+'00001'
else
begin
kode:=trim(qcari.fieldbyname('kode').AsString);
  //123456789012
  //009051600001
  no:=inttostr(strtoint(copy(kode,8,5))+1);
  no:=copy('00000'+no,length('00000'+no)-4,5);
  kode:=trim(s)+trim(formatdatetime('mmyy',now()))+trim(no);
end;
result:=kode;
Qcari.close;
Qcari.Free;
Qcari:=nil;
end;

function ComputerName():String;
var
  buffer: array[0..255] of char;
  size: dword;
begin
  size := 256;
  if GetComputerName(buffer, size) then
    Result := buffer
  else
    Result := ''
end;

Function GetLastlog:string;
var no:string;
Qcari:tmyquery;
bln:string;
kode:string;
begin
bln:=trim(formatdatetime('DDMMYYYY',now()));
 Qcari:=tmyquery.Create(nil);
qcari.Close;
qcari.Connection:=DmModul.con1;
qcari.SQL.text:='SELECT MAX(KODE) AS KODE FROM LOGLOGIN WHERE KODE LIKE '+quotedstr(bln+'%');
qcari.Open;
if qcari.fieldbyname('kode').AsString='' then kode:=bln+'-00001'
else
begin
kode:=trim(qcari.fieldbyname('kode').AsString);
  //123456789012
  //009051600001
  no:=inttostr(strtoint(copy(kode,10,5))+1);
  no:=copy('00000'+no,length('00000'+no)-4,5);
  kode:=BLN+'-'+trim(no);
end;
result:=kode;
Qcari.close;
Qcari.Free;
Qcari:=nil;
end;

function clearDot(s:string):string;
begin
 Result:=StringReplace(s,'.','',[rfReplaceAll]);
end;
 {
function formatRp(s:string):string;
begin  

 Result:=Format('%.0n',[StrToFloatDef(s,0)]);
end; 
   }
Function Encrypt(const aPassword: string; const Salt: integer): string;

var
  I: integer;

begin
  Result := '';
  for I := 1 to Length(aPassword) do
    Result := Result + Chr(((Ord(aPassword[I]) - 32 + Salt) mod 223) + 32);
end;

//---------------------------------------------------------------------------------------------
//  decode a crypted string (for passwords)
//---------------------------------------------------------------------------------------------
function Decrypt(const aCryptedPassword: string; const Salt: integer): string;

var
  I: integer;

begin
  Result := '';
  for I := 1 to Length(aCryptedPassword) do
    Result := Result + Chr(((Ord(aCryptedPassword[I]) - 32 + 222 * Salt) mod
      223) + 32);
end;

procedure ribuan(edit : Tedit);
var
 sRupiah: string;
 iRupiah: Currency;
begin
 //ribuan --> currency ( menyesuaikan setting windows )
 sRupiah := edit.Text;
 sRupiah := StringReplace(sRupiah,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
 sRupiah := StringReplace(sRupiah,'.','',[rfReplaceAll,rfIgnoreCase]); //remove char titik . pemisah //ribuan IDR
 iRupiah := StrToCurrDef(sRupiah,0); // convert srupiah ke currency

//currency --> format ribuan
if irupiah>0 then
begin
 edit.Text := FormatCurr('#,###',iRupiah);
 edit.SelStart := length(edit.text);
 end
else
edit.Text :='0';
end;
 {
function hapusribuan(edit : Tedit): string;
var hasil : string;
begin
 hasil := edit.text;
 hasil := StringReplace(hasil,',','',[rfReplaceAll,rfIgnoreCase]);
 hasil := StringReplace(hasil,'.','',[rfReplaceAll,rfIgnoreCase]);
 hapusribuan := hasil;
end;
   }
procedure bolehbtn(f:tform;bol:boolean;Sender: TObject);
 var i:byte;
begin
 for i:=0 to f.componentcount-1 do
 begin
   if f.components[i] is TBitBtn then
    begin
      with f.components[i] as TBitBtn do
       begin
         case tag of
          0,1,2,3:enabled:= bol;
          4,5:enabled:=not bol;
         end;

       end;
    end;
 end;

end;





  {

procedure kosong(f:tform;bol:boolean;Sender: TObject);

 var i:byte;
  wrn:tcolor;
begin

for i:=0 to f.componentcount-1 do
 begin
   if f.components[i] is TEdit then
    begin
      with f.components[i] as TEdit do
       begin
         wrn:=color;
         if tag<90 then text:='';
         if tag<90 then
         begin
           enabled:=bol;
         if enabled then color:=clwhite else color:=clsilver;

         end;
         if tag=1000 then
         begin
          enabled:=true;
           color:=wrn;
           font.Color:=clblack;
         end;
         if tag=100 then
           begin
             text:='Search...';
             color:=clyellow ;
             font.color:=clred;
             enabled:=true;
           end;
         if tag=98 then
           begin
             text:='0';
          //   color:=clgreen ;
           //  font.color:=clred;
             enabled:=bol;
           end;
       end;
    end;
   if f.components[i] is Tcombobox then
    begin
      with f.components[i] as Tcombobox do
       begin
       if tag<1000 then
           begin
         itemindex:=0;
         enabled:=bol;
         if enabled then color:=clwhite else color:=clsilver;
       end;

       end;
    end;
       if f.components[i] is TDateTimePicker then
     begin
       with f.components[i] as TDateTimePicker do
        begin

         if tag>100 then enabled:=bol;
           if enabled then
            begin
              color:=clwhite;
              font.color:=clblack;
            end
          else
          begin
            color:=clsilver;
            font.color:=clred;
         end;
        end;

     end;
 end;

end;
 }
procedure bolehedit(f:tform;bol:boolean;Sender: TObject);

 var i:byte;
  wrn:tcolor;
begin

 for i:=0 to f.componentcount-1 do
 begin
   if f.components[i] is TEdit then
    begin
      with f.components[i] as TEdit do
       begin
         enabled:=bol;
         wrn:=color;

         if enabled then
           begin
             color:=clwhite;
             font.color:=clblack;
           end
         else
         begin
           color:=clyellow;
           font.color:=clred;
        end;
         if tag=99 then
           begin
             text:='0';
             color:=clwhite ;
             font.color:=clblue;
             readonly:=true;
           end;
         if tag=1000 then
         begin
           color:=wrn;
           font.Color:=clblack;
           enabled:=true;
         end;
         if tag=100 then
           begin
             text:='Search...';
             color:=clyellow ;
             font.color:=clblue;
             enabled:=true;
           end;
    end;
    end;
   if f.components[i] is Tcombobox then
    begin
      with f.components[i] as Tcombobox do
       begin
           if tag<1000 then
           begin
             itemindex:=0;
             enabled:=bol;
              if enabled then
               begin
                 color:=clwhite;
                 font.color:=clblack;
               end
             else
             begin
             itemindex:=-1;
               color:=clyellow;
               font.color:=clred;
             end;

           end;
       end;
  end;
    if f.components[i] is TDateTimePicker then
     begin
       with f.components[i] as TDateTimePicker do
        begin

          enabled:=bol;
           if enabled then
            begin
              color:=clwhite;
              font.color:=clblack;
            end
          else
          begin
            color:=clyellow;
            font.color:=clred;
         end;
        end;

     end;
 end;
 end;
    

procedure oprbtn(f:tform;Sender: TObject);

begin
    {
   if sender is TSpkLargeButton then
    begin
      with sender as TSpkLargeButton do
       begin
         showmessage(inttostr(tag));
         case tag of
         1,2: kosong(f,true,Sender);
         3,4,5:kosong(f,false,Sender);
         end;
       end;

    end;
      }
end;
function Ceil(X: Extended): Integer;
begin
  Result := Integer(Trunc(X));
  if Frac(X) > 0 then
    Inc(Result);
end;

function Floor(X: Extended): Integer;
begin
  Result := Integer(Trunc(X));
  if Frac(X) < 0 then
    Dec(Result);
end;
Function IntPart(FloatNum : real) : integer;
Begin
  if FloatNum < -0.0000001 then
    Result := ceil(FloatNum-0.0000001)
  else
    Result := Floor(FloatNum + 0.0000001);
End;

Function year(d:tdatetime):integer;
var dd,mm,yyyy:word;
begin
 decodedate(d,yyyy,mm,dd);
 result:=yyyy;
end;
Function month(d:tdatetime):integer;
var dd,mm,yy:word;
begin
 decodedate(d,yy,mm,dd);
 result:=mm;
end;
Function day(d:tdatetime):integer;
var dd,mm,yy:word;
begin
 decodedate(d,yy,mm,dd);
 result:=dd;
end;

Function goKartuStok(s:string):extended;
var
    Q:tmyquery;
begin
Q:=tmyquery.Create(nil);
Q.Close;
Q.Connection:=DmModul.con1;
Q.SQL.Clear;
Q.SQL.Add('select * from TBARANG');
Q.SQL.Add('where kodebrg='+quotedstr(s));
Q.Open;
if not Q.IsEmpty then
begin
result:=Q.fieldbyname('STOK').asfloat;
//showmessage(result);
end
else
result:=0;
Q.Close;
q.Free;
end;

Function goKartuStok1(s:string):extended;
var
    Q:tmyquery;
begin
 Q:=tmyquery.Create(nil);
Q.Close;
Q.Connection:=DmModul.con1;
Q.SQL.Clear;
Q.SQL.Add('select * from TBARANG');
Q.SQL.Add('where kodebrg='+quotedstr(s));
Q.Open;
if not Q.IsEmpty then
begin
result:=Q.fieldbyname('TOKO').asfloat;
//showmessage(result);
end
else
result:=0;
Q.Close;
q.Free;
end;

Function goKartuStok2(s:string):extended;
var
    Q:tMyquery;
begin
 Q:=tmyquery.Create(nil);
Q.Close;
Q.Connection:=DmModul.con1;
Q.SQL.Clear;
Q.SQL.Add('select * from TBARANG');
Q.SQL.Add('where kodebrg='+quotedstr(s));
Q.Open;
if not Q.IsEmpty then
begin
result:=Q.fieldbyname('GUDANG').asfloat;
//showmessage(result);
end
else
result:=0;
Q.Close;
q.Free;
end;


Function getnot(s:string):string;
var no:string;
p:byte;
    Q:tmyquery;
begin
 Q:=tmyquery.Create(nil);
   s:=trim(s);
   Q.Close;
   Q.Connection:=DmModul.con1;
   Q.SQL.Clear;
   Q.SQL.Add('select max(notrans) as notrans from kartustok');
   Q.SQL.Add(' where notrans LIKE '+quotedstr(s+'-%'));
   Q.Open;
   if  (Q.IsEmpty) or (Q.fieldbyname('notrans').AsString='') then
   result:=trim(s+'-000000001')
   else
   begin
   //frambosenbj-000000001
        no:=trim(Q.fieldbyname('notrans').AsString);
        p:=length(no);
        no:=copy(no,length(s)+2,9);
        no:=inttostr(strtoint(no)+1);
        no:=copy('000000000'+no,length('000000000'+no)-8,9);
        no:=trim(no);
        result:=trim(s+'-'+ no);
   end;
   Q.Close;
q.Free;
 end;

Function getnot1(s:string):string;
var no:string;
p:byte;
    Q:tmyquery;
begin
 Q:=tmyquery.Create(nil);
Q.Close;
Q.Connection:=DmModul.con1;
Q.SQL.Clear;
Q.SQL.Add('select max(notrans) as notrans from kartustok_toko');
Q.SQL.Add(' where notrans LIKE '+quotedstr(s+'%'));
Q.Open;
if  (Q.IsEmpty) or (Q.fieldbyname('notrans').AsString='') then
result:=s+'-000000001'
else
begin
     no:=Q.fieldbyname('notrans').AsString;
     p:=length(no);
     no:=copy(no,length(s)+2,9);
     no:=inttostr(strtoint(no)+1);
     no:=copy('000000000'+no,length('000000000'+no)-8,9);
     result:=s+'-'+ no;
end;
Q.Close;
q.Free;
end;

Function getnot2(s:string):string;
var no:string;
p:byte;
Q:tmyquery;
begin
Q:=tmyquery.Create(nil);
Q.Close;
Q.Connection:=DmModul.con1;
Q.SQL.Clear;
Q.SQL.Add('select max(notrans) as notrans from kartustok_gudang');
Q.SQL.Add(' where notrans LIKE '+quotedstr(s+'%'));
Q.Open;
if  (Q.IsEmpty) or (Q.fieldbyname('notrans').AsString='') then
result:=s+'-000000001'
else
begin
     no:=Q.fieldbyname('notrans').AsString;
     p:=length(no);
     no:=copy(no,length(s)+2,9);
     no:=inttostr(strtoint(no)+1);
     no:=copy('000000000'+no,length('000000000'+no)-8,9);
     result:=s+'-'+ no;
end;
Q.Close;
q.Free;
end;

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

  x:=dbgrid.Columns[nColumnsCount].Field.DataType;
 case  x of
     ftString : DBGrid.Columns[nColumnsCount].Font.Color:=clblack;
     ftInteger,ftCurrency :
       begin
         DBGrid.Columns[nColumnsCount].Font.Color:=clgreen;
         //DBGrid.Columns[nColumnsCount].DisplayFormat:='Rp#,##0.00';
       end;
         ftFloat :
           begin
       //   if DBGrid.Columns[nColumnsCount].Field.IsNull then DBGrid.Columns[nColumnsCount].Field.AsFloat:=0;
         DBGrid.Columns[nColumnsCount].Font.Color:=clgreen;
         //DBGrid.Columns[nColumnsCount].DisplayFormat:='#,##;(#,##)';
      //   DBGrid.Columns[nColumnsCount].DisplayFormat:='###,##0.00';
       end;
       ftTime, ftDateTime   : DBGrid.Columns[nColumnsCount].Font.Color:=clblue;
     ftDate  :
       begin
         DBGrid.Columns[nColumnsCount].Font.Color:=clblue;
         //DBGrid.Columns[nColumnsCount].DisplayFormat:='dd/mm/yyyy';
       end;
 end;

 DBGrid.Columns[nColumnsCount].Title.Color:=WRN_H_GRID;
 case nAligment of
     1:DBGrid.Columns[nColumnsCount].Alignment:=taLeftJustify;
     2:DBGrid.Columns[nColumnsCount].Alignment:=tacenter;
     3:DBGrid.Columns[nColumnsCount].Alignment:=tarightJustify;
 end;

end;

end.

