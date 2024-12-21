unit unCariSuplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, CRGrid, DB, ADODB,
  MemDS, DBAccess, MyAccess,nuest;

type
  TfcariSuplier = class(TForm)
    pcontrol: TPanel;
    DataSource1: TDataSource;
    MyQuery: TMyQuery;
    CRDBGrid1: TCRDBGrid;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    procedure CRDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CRDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CRDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcariSuplier: TfcariSuplier;

implementation

uses unbeliIn;







{$R *.dfm}

procedure TfcariSuplier.CRDBGrid1DblClick(Sender: TObject);
begin
if MyQuery.RecordCount<=0 then exit;

if pcontrol.Caption='fbeliIn' then
    begin
    fbeliIn.Edit2.Text:=MyQuery['kd_suplier'];
    fbeliIn.Edit3.Text:=MyQuery['nm_suplier'];
    fbeliIn.sg.SetFocus;
    end;
if pcontrol.Caption='fbelimotor' then
    begin
 //   fbelimotor.Edit2.Text:=MyQuery['kd_suplier'];
 //   fbeliMotor.Edit5.Text:=MyQuery['nm_suplier'];
 //   fbeliMotor.ActiveControl:=fbeliMotor.ComboBox1;
    end;
if pcontrol.Caption='fpelunasanbeli' then
    begin
  //  fMOTORPELUNASANINPUT.Edit8.Text:=MyQuery['kd_suplier'];
  //  FMotorPelunasanInput.Edit18.Text:=MyQuery['nm_suplier'];
  //  FMotorPelunasanInput.isidatamotorSuplier(MyQuery['kd_suplier']);
  //  FMotorPelunasanInput.ActiveControl:=FMotorPelunasanInput.pbbayar;
    end;
fcariSuplier.Close;
end;

procedure TfcariSuplier.BitBtn1Click(Sender: TObject);
begin
CRDBGrid1DblClick(Sender);

end;

procedure TfcariSuplier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Action:=caFree;
fcariSuplier:=nil;
end;

procedure TfcariSuplier.CRDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    CRDBGrid1DblClick(Sender);
    end;
end;

procedure TfcariSuplier.SpeedButton1Click(Sender: TObject);
begin
//if fSuplierInput=nil then fSuplierInput:=TfSuplierInput.Create(Application);
//fSuplierInput.lbstatus.Caption:='Tambah';
//fSuplierInput.ShowModal;
end;

procedure TfcariSuplier.BitBtn3Click(Sender: TObject);
begin
cari(MyQuery,'select * from suplier where '+
        ' kd_suplier like '+QuotedStr('%'+Edit1.Text+'%')+
        ' or nm_suplier like '+QuotedStr('%'+Edit1.Text+'%')+
        ' or almt_suplier like '+QuotedStr('%'+Edit1.Text+'%'));
end;

procedure TfcariSuplier.Edit1Change(Sender: TObject);
begin
BitBtn3Click(Sender);
end;

procedure TfcariSuplier.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_escape then fcariSuplier.Close;
if key=vk_down then CRDBGrid1.SetFocus;
if key=vk_return then CRDBGrid1.SetFocus;
end;

procedure TfcariSuplier.CRDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if not(key in[#13]) then Edit1.SetFocus;
end;

procedure TfcariSuplier.FormCreate(Sender: TObject);
begin
Tampilikon(SpeedButton1,'bg\baru.bmp');
Tampilikon(BitBtn1,'bg\ok.bmp');
Tampilikon(BitBtn3,'bg\cari.bmp');
Edit1.Text:='';
ActiveControl:=Edit1;
end;

end.
