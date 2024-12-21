unit UnModul;

interface

uses
  SysUtils, Classes,AdoDb,db,forms,ExtCtrls, StdCtrls,
  Buttons, ComCtrls,Messages,Dialogs, Graphics,mask,DBCtrls,IniFIles,
  DBAccess, MyAccess, MemDS;

  function BacaPat(nStr:String): string;
  Procedure TulisPat(nPath:string);
  procedure LsvSetCol(nKolom:String;intLebar:string;nLis:TListView);
  procedure AktifControl(nForm: TForm;
  nObject: TPanel; Nilai: Boolean);
  function EnCrip(nStr:String):String;
  function DeCrip(nStr:String):String;
type
  TDmModul = class(TDataModule)
    con1: TMyConnection;
    QData: TMyQuery;
    MyStoredProc1: TMyStoredProc;
    MyDataSource1: TMyDataSource;
    addscari: TMyQuery;
    MyCommand1: TMyCommand;
    Q: TMyQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure con1BeforeDisconnect(Sender: TObject);
    procedure con1AfterDisconnect(Sender: TObject);
    procedure con1AfterConnect(Sender: TObject);
  private
    { Private declarations }

  public
  pathProg : string;

  function dataRow(Field:TField;res:string):string;

    { Public declarations }
  end;

var
  DmModul: TDmModul;
  CariSucces:Boolean;
  nFieldCari:array of string;
  AlamatData:String;
  nPengg,nPass,nLine:string[100];
  nDenda:Double;
  TbAktif:Boolean;
  readConf:TIniFile;
  ada_config:boolean;
implementation

uses Variants, StrUtils, Masks, UnMenu, Un_settingDB;

{$R *.dfm}

//data kosong emmpy
function TDmModul.dataRow(Field:TField;res:string):string;
begin
 if Field.IsNull then
    Result:=res
 else
    Result:=Field.Text;
end;

procedure LsvSetCol(nKolom: String;intLebar:string;nLis:TListView);
var
  JmKol:Integer;
  NmKol:string;
  I:integer;
  nLeb:string;
begin
  nLis.Items.Clear;
  nLis.Columns.Clear;
  JmKol:=0;
  for I:=1 to length(nKolom) do
  begin
    if MidStr(nKolom,I,1)='|' then
    begin
      JmKol:=JmKol+1;
      nLis.Columns.Add;
      nLis.Column[JmKol-1].Caption:=NmKol;
      NmKol:='';
    end
    else
    begin
      NmKol:=NmKol+MidStr(nKolom,I,1);
    end;
  end;

  nLeb:='';
  JmKol:=0;
  for I:=1 to length(intLebar) do
  begin
    if MidStr(intLebar,I,1)='|' then
    begin
      JmKol:=JmKol+1;
      nLis.Column[JmKol-1].Width:=StrToInt(nLeb);
      nLeb:='';
    end
    else
    begin
      nLeb:=nLeb+MidStr(intLebar,I,1);
    end;
  end;
end;
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

//ke text
function BacaPat(nStr:String): string;
var
  F1: TextFile;
  St:String;
  nAlam:String;
begin
  nAlam:=ExtractFileDir(Application.ExeName)+'\'+nStr;
  AssignFile(F1,nAlam);
  Reset(F1);
  Readln(F1, St);
  Result:= St;
  CloseFile(F1);
end;

Procedure TulisPat(nPath:string);
var
  F1: TextFile;
  pat:string;
begin
    pat:=nPath;
    AssignFile(F1, ExtractFilePath(Application.ExeName)+'\path.ini');
    Rewrite(F1); //hapus data
    Write(F1,pat); //Tulis data
    CloseFile(F1);
end;


//procedure BukaData;
//begin
{
  //DmModul.AdCnSem.Close;
  //DmModul.AdCnSem.Open;
  try
    DmModul.AdoCnGl.Connected:=false;
    DmModul.AdoCnGl.LoginPrompt:=false;
    DmModul.AdoCnGl.ConnectionString:=
   {
     //ms acess
    'Provider=Microsoft.Jet.OLEDB.4.0;'+
    'Data Source='+AlamatData+
    ';Persist Security Info=False';
    }

      //Mysql
  {
  'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;' +
  'Data Source='+AlamatData+'';


    DmModul.AdoCnGl.Connected:=true;
    if Assigned(FSetPat)=true then
    begin
       FSetPat.Close;
    end;
  except
    if not Assigned(FSetPat) then
    begin
      FSetPat:=TFSetPat.Create(Application);
      FSetPat.ShowModal;
    end;
  end;
   }
//  end;

procedure AktifControl(nForm:TForm;nObject:TPanel;Nilai:Boolean);
var
   i:integer;
begin
   for i:=0 to nObject.ControlCount-1 do
   begin
     if Nilai=False then
     begin
       if (nObject.Controls[i].ClassName='TEdit')  then
       begin
          TEdit(nForm.FindComponent(nObject.Controls[i].Name)).Color:=nForm.Color;
          TEdit(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=False;
       end
       else if (nObject.Controls[i].ClassName='TCheckBox')  then
       begin
          TDateTimePicker(nForm.FindComponent(nObject.Controls[i].Name)).Color:=nForm.Color;
          TDateTimePicker(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=false;
       end
       else if (nObject.Controls[i].ClassName='TDBImage')  then
       begin
          TDBImage(nForm.FindComponent(nObject.Controls[i].Name)).Color:=nForm.Color;
          TDBImage(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=false;
       end
       else if (nObject.Controls[i].ClassName='TMemo')  then
       begin
          TMemo(nForm.FindComponent(nObject.Controls[i].Name)).Color:=nForm.Color;
          TMemo(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=false;
       end
       else if (nObject.Controls[i].ClassName='TMaskEdit')  then
       begin
          TMaskEdit(nForm.FindComponent(nObject.Controls[i].Name)).Color:=nForm.Color;
          TMaskEdit(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=false;
       end
       else if (nObject.Controls[i].ClassName='TDateTimePicker')  then
       begin
          TDateTimePicker(nForm.FindComponent(nObject.Controls[i].Name)).Color:=nForm.Color;
          TDateTimePicker(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=false;
       end
       else if (nObject.Controls[i].ClassName='TComboBox')  then
       begin
          TComboBox(nForm.FindComponent(nObject.Controls[i].Name)).Color:=nForm.Color;
          TComboBox(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=false;
       end
//       else if (nObject.Controls[i].ClassName='TPBNumEdit')  then
//       begin
//          TPBNumEdit(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=false;
//          TPBNumEdit(nForm.FindComponent(nObject.Controls[i].Name)).Color:=nForm.Color;
//       end
       else if (nObject.Controls[i].ClassName='TBitBtn')  then
          TBitBtn(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=False;
     end
     else
     begin
       if (nObject.Controls[i].ClassName='TEdit')  then
       begin
          TEdit(nForm.FindComponent(nObject.Controls[i].Name)).Color:=clWhite;
          TEdit(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=True;
       end
//       else if (nObject.Controls[i].ClassName='TPBNumEdit')  then
//       begin
//          TPBNumEdit(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=True;
//          TPBNumEdit(nForm.FindComponent(nObject.Controls[i].Name)).Color:=clWhite;
//       end
       else if (nObject.Controls[i].ClassName='TDBImage')  then
       begin
          TDBImage(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=True;
          TDBImage(nForm.FindComponent(nObject.Controls[i].Name)).Color:=clWhite;
       end
       else if (nObject.Controls[i].ClassName='TMemo')  then
       begin
          TMemo(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=True;
          TMemo(nForm.FindComponent(nObject.Controls[i].Name)).Color:=clWhite;
       end
       else if (nObject.Controls[i].ClassName='TMaskEdit')  then
       begin
          TMaskEdit(nForm.FindComponent(nObject.Controls[i].Name)).Color:=clWhite;
          TMaskEdit(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=True;
       end
       else if (nObject.Controls[i].ClassName='TCheckBox')  then
       begin
          TDateTimePicker(nForm.FindComponent(nObject.Controls[i].Name)).Color:=nForm.Color;
          TDateTimePicker(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=True;
       end
       else if (nObject.Controls[i].ClassName='TComboBox')  then
       begin
          TComboBox(nForm.FindComponent(nObject.Controls[i].Name)).Color:=clWhite;
          TComboBox(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=True;
       end
       else if (nObject.Controls[i].ClassName='TDateTimePicker')  then
       begin
          TDateTimePicker(nForm.FindComponent(nObject.Controls[i].Name)).Color:=clWhite;
          TDateTimePicker(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=True;
       end
       else if (nObject.Controls[i].ClassName='TBitBtn')  then
          TBitBtn(nForm.FindComponent(nObject.Controls[i].Name)).Enabled:=True;
     end;
   end;
end;

//procedure ProsesData(nCommand: String);
//begin
//DmModul.ADOCapotik.Execute(nCommand);
//end;

//procedure TDmModul.AmbilProfile;
//begin
//  end;


procedure TDmModul.DataModuleCreate(Sender: TObject);
var
     sUser,sPass,sDb,sHost,sPort,sGudang,sskin:string;
     //sUser2,sPass2,sDb2,sHost2,sPort2:string;
     //sUser3,sPass3,sDb3,sHost3,sPort3:string;

begin

 if FileExists(pathProg+'bin\konect.dat')then
 begin
 readConf:=TIniFile.Create(pathProg+'bin\konect.dat');
 ada_config:=true;
 end;

 //membaca config
 sUser:=readConf.ReadString('connected_to_db','user','');
 sPass:=readConf.ReadString('connected_to_db','pass','');
 sDb:=readConf.ReadString('connected_to_db','db','');
 sHost:=readConf.ReadString('connected_to_db','host','');
 sPort:=readConf.ReadString('connected_to_db','port','');
 sskin:=readConf.ReadString('connected_to_db','skin','');
  con1.Username := sUser;
  con1.Password := sPass;
  con1.Server := sHost;
  con1.Database := sDb;
  con1.Port := StrToInt(sPort);


  //membaca config dB brigin 1
 {
 sUser2:=readConf.ReadString('connected_to_db2','user2','');
 sPass2:=readConf.ReadString('connected_to_db2','pass2','');
 sDb2:=readConf.ReadString('connected_to_db2','db2','');
 sHost2:=readConf.ReadString('connected_to_db2','host2','');
 sPort2:=readConf.ReadString('connected_to_db2','port2','');

  con2.Username := sUser2;
  con2.Password := sPass2;
  con2.Server := sHost2;
  con2.Database := sDb2;
  con2.Port := StrToInt(sPort2);
  }
  //membaca config dB brigin 2
{
 sUser3:=readConf.ReadString('connected_to_db3','user3','');
 sPass3:=readConf.ReadString('connected_to_db3','pass3','');
 sDb3:=readConf.ReadString('connected_to_db3','db3','');
 sHost3:=readConf.ReadString('connected_to_db3','host3','');
 sPort3:=readConf.ReadString('connected_to_db3','port3','');

  con3.Username := sUser3;
  con3.Password := sPass3;
  con3.Server := sHost3;
  con3.Database := sDb3;
  con3.Port := StrToInt(sPort3);
    }

  //FMenu.dxStatusBar1.Panels[2].Text := sHost +' / ' + sDb ;
  //FMenu.dxStatusBar1.Panels[2].Width := 250;
  //FMenu.dxStatusBar1.Panels[2].Text := 'DB :'+sDb;


 if not con1.Connected then
  try
   con1.Connected:=true;

   //Keterangan
   FMenu.dxStatusBar1.Panels[0].Width := 200;
   FMenu.dxStatusBar1.Panels[2].Width := 50;
   FMenu.dxStatusBar1.Panels[2].Text := sHost ;
   FMenu.dxStatusBar1.Panels[0].Text := sHost +' / ' + sDb ;
   FMenu.dxStatusBar1.Panels[1].Text := 'DB Koneksi' ;
   FMenu.dxStatusBar1.Panels[5].Text := 'harisdillah@gmail.com @2024' ;
   //getInfoSystem;
  except
   MessageDlg('Database Tidak Bisa Koneck Server. : '+#13+#10 + sHost +' / ' + sDb +#13+#10+
   'Aplikasi tidak dapat dijalankan ! Server terputus',mtInformation,[mbOK],0);
  con1.Connected:=false;
  //con2.Connected:=false;
  //con3.Connected:=false;

   //tampil seting
    if frm_setting=nil then
     frm_setting:=Tfrm_setting.Create(Application);
     frm_setting.BringToFront;
     con1.Connected:=false;
     //con2.Connected:=false;
     FMenu.dxStatusBar1.Panels[1].Text := 'DB Terputus' ;
  // Application.Terminate;
  end;

end;



function HitungStr(nStr1:string;nChar:Char):Integer;
var
  nSem:Integer;
  I:integer;
begin
  nSem:=0;
  for I:=1 to length(nStr1) do
  begin
    if nStr1[I]=nChar then
      nSem:=nSem+1;
  end;
  Result:=nSem;
end;
procedure TDmModul.con1BeforeDisconnect(Sender: TObject);
begin
//MessageDlg('Aplikasi tidak dapat dijalankan'+#10#13+'Koneksi terputus ...... ',mtInformation,[mbOK],0);
end;

procedure TDmModul.con1AfterDisconnect(Sender: TObject);
begin
MessageDlg('Aplikasi tidak dapat dijalankan'+#10#13+'Koneksi terputus ...... ',mtInformation,[mbOK],0);
end;

procedure TDmModul.con1AfterConnect(Sender: TObject);
begin
//MessageDlg('Aplikasi Konect Sukses'+#10#13+'!!!!!',mtInformation,[mbOK],0);
//FMenu.StatusBar1.Panels[1].Width := 150;
//FMenu.StatusBar1.Panels[1].Text := '( Konect ok Siip )' ;

end;

end.
