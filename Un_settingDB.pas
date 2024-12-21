unit Un_settingDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBAccess, MyAccess,
  MemDS,DBCtrls, Buttons,IniFiles, ComCtrls, AdvDateTimePicker, AdvSmoothPanel,AdvStyleIF,
  AdvSmoothLabel;

type
  Tfrm_setting = class(TForm)
    Panel3: TPanel;
    Btn_test: TBitBtn;
    btn_save: TBitBtn;
    btn_batal: TBitBtn;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Label1: TLabel;
    ed_user: TEdit;
    Label7: TLabel;
    ePassword: TEdit;
    Label3: TLabel;
    Ed_db: TEdit;
    Label4: TLabel;
    Ed_host: TEdit;
    Label5: TLabel;
    Ed_port: TEdit;
    Label2: TLabel;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_saveClick(Sender: TObject);
    procedure Btn_testClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_setting: Tfrm_setting;

implementation

uses UnModul,UF_setting,StrUtils, Masks, UnMenu,UF_dbsql;

{$R *.dfm}

procedure Tfrm_setting.FormClose(Sender: TObject; var Action: TCloseAction);

begin
  frm_setting:=nil;
  Action:=caFree;
end;

procedure Tfrm_setting.btn_saveClick(Sender: TObject);
var
  ini : TIniFile;
begin
  Ini := TIniFile.Create(DmModul.pathProg+'bin\konect.dat');
  try
    ini.WriteString('connected_to_db','user',ed_user.Text);
    ini.WriteString('connected_to_db','pass',ePassword.Text);
    ini.WriteString('connected_to_db','db',Ed_db.Text);
    ini.WriteString('connected_to_db','host',Ed_host.Text);
    ini.WriteString('connected_to_db','port',Ed_port.Text);
    ini.WriteString('connected_to_db','skin',Ed_host.Text);
    //ini.WriteString('connected_to_db','tglawal',FormatDateTime('yyyy/mm/dd',advtglawal.Date));
    //ini.WriteString('connected_to_db','tglakhir',FormatDateTime('yyyy/mm/dd',advtglakhir.Date));
  finally
    ini.Free;
    Application.messageBox('Setting Database telah disimpan' + chr(10)
              + 'Silahkan untuk melakukan '+'BUKA PROGRAM KEMBALI','Information',
              MB_OK or MB_ICONINFORMATION);

    DmModul.con1.Connected:=false;
    Application.Terminate;

  end;
  //DmModul.GetSettingsCon;
  //Application.messageBox('Setting Database telah disimpan' + chr(10)
  //            + 'Silahkan untuk melakukan '+'BUKA PROGRAM KEMBALI','Information',
  //                            MB_OK or MB_ICONINFORMATION);
end;

procedure Tfrm_setting.Btn_testClick(Sender: TObject);
begin
 try
    DmModul.con1.Disconnect;
    DmModul.con1.Connected;
    Application.MessageBox('Koneksi Berhasil','Information',
                            MB_OK or MB_ICONINFORMATION);
  except
    Application.MessageBox('Koneksi Gagal','Information',
                            MB_OK or MB_ICONWARNING);
  end;
end;

procedure Tfrm_setting.ComboBox1Change(Sender: TObject);
var
  s: TTMSStyle;
begin
  s := tsWindows8;
  case Combobox1.ItemIndex of
    0: s := tsOffice2003Blue;
    1: s := tsOffice2003Silver;
    2: s := tsOffice2003Olive;
    3: s := tsOffice2003Classic;
    4: s := tsOffice2007Luna;
    5: s := tsOffice2007Obsidian;
    6: s := tsOffice2007Silver;
    7: s := tsOffice2010Blue;
    8: s := tsOffice2010Silver;
    9: s := tsOffice2010Black;
    10: s := tsWindowsXP;
    11: s := tsWhidbey;
    12: s := tsWindowsVista;
    13: s := tsWindows7;
    14: s := tsTerminal;
    15: s := tsWindows8;
  end;

  AdvSmoothPanel1.SetComponentStyle(s);

end;

procedure Tfrm_setting.btn_batalClick(Sender: TObject);
begin
 DmModul.con1.Connected:=false;
 Application.Terminate;
//program.
//Close;
end;

procedure Tfrm_setting.FormCreate(Sender: TObject);
var sUser,sPass,Sdb,sHost,sPort,sGudang,stglawal,stglakhir : string;

begin

 if FileExists(konfile+'konect.dat')then
 begin
 readConf:=TIniFile.Create(konfile+'konect.dat');
 //ada_config:=true;
 end;
 //membaca config
 sUser:=readConf.ReadString('connected_to_db','user','');
 sPass:=readConf.ReadString('connected_to_db','pass','');
 sDb:=readConf.ReadString('connected_to_db','db','');
 sHost:=readConf.ReadString('connected_to_db','host','');
 sPort:=readConf.ReadString('connected_to_db','port','');
 //stglawal:=readConf.ReadString('connected_to_db','tglawal','');
 //stglakhir:=readConf.ReadString('connected_to_db','tglakhir','');
  ed_user.text := sUser;
  ePassword.Text := spass;
  Ed_host.Text := sHost;
  Ed_host.Color := cllime;
  Ed_db.Text := sDb;
  //Ed_port.Text := StrToInt(sPort);
  Ed_port.Text := sPort;
  //advtglawal.Date := stglawal;
  //advtglakhir.Date := stglakhir;
end;

end.
