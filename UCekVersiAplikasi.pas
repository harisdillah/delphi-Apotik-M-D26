unit UCekVersiAplikasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,FileCtrl, Buttons;

type
  TFCekVersiUpdate = class(TForm)
    lblTujuanCopyExe: TLabel;
    lblVersiUpdate: TLabel;
    edtVERSIUPDATE: TEdit;
    edtTUJUANCOPYEXE: TEdit;
    btnProses: TSpeedButton;
    btnLokasi: TSpeedButton;
    dlgOpen1: TOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure btnLokasiClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCekVersiUpdate: TFCekVersiUpdate;

implementation

{$R *.dfm}

procedure TFCekVersiUpdate.FormShow(Sender: TObject);
begin
//edtVERSIUPDATE.Text := '\\192.168.200.2\New folder\kelengkapan Pengembangan\_NEW SIMRS 2019\APPS\APLIKASI PENDAFTARAN & RAJAL_IGD\update\versi_update\pendaftaran.exe';
edtVERSIUPDATE.Text := '\\192.168.30.7\exe link\laz_gudang\D7_GUDANG\update\Gudang23c.exe';
//edtTUJUANCOPYEXE.Text :='D:\D7_gudang\Gudang23c.exe';
//D:\exe link\laz_gudang\D7_GUDANG\update\Gudang23c.exe
//E:\D7_gudang/Gudang23c.exe
end;


procedure TFCekVersiUpdate.btnLokasiClick(Sender: TObject);
var
  St: string;
begin
  St:='c:\';
  if SelectDirectory(St, [], 0) then
    edtTUJUANCOPYEXE.Text:=St+'\'+ExtractFileName(edtVERSIUPDATE.Text);
end;

procedure TFCekVersiUpdate.btnProsesClick(Sender: TObject);
begin
if (edtVERSIUPDATE.Text<>'')and(edtTUJUANCOPYEXE.Text<>'') then
    if CopyFile(PChar(edtVERSIUPDATE.Text), PChar(edtTUJUANCOPYEXE.Text), False) then ShowMessage('Udah di Update Exe Baru');
end;

end.
                                                                                                                             //