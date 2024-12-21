unit uCariPetugas ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, CRGrid, DB, ADODB,
  MemDS, DBAccess, MyAccess,nuest;

type
  TfcariPetugas = class(TForm)
    pcontrol: TPanel;
    DataSource1: TDataSource;
    MyQuery: TMyQuery;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    CRDBGrid1: TCRDBGrid;
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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcariPetugas: TfcariPetugas;

implementation

uses UKeluar;






{$R *.dfm}

procedure TfcariPetugas.CRDBGrid1DblClick(Sender: TObject);
begin
if MyQuery.RecordCount<=0 then exit;

if pcontrol.Caption='fMasuk' then
    begin
    //FrmKeluar.EPetugas.Text:=MyQuery['nip'];
    //frmmasuk.Lpetugas.Caption:=MyQuery['NM_p'];
    //frmmasuk.Lpetugas.Color:=clbtnface;
    //frmmasuk.ENamaBarang.SetFocus;
    end;
{
if pcontrol.Caption='fjualmotor' then
    begin
    fjualmotor.Edit2.Text:=MyQuery['kd_pelanggan'];
    fjualMotor.Edit5.Text:=MyQuery['nm_pelanggan'];
    fjualMotor.Edit3.SetFocus;
    end;
 }
fcariPetugas.Close;
end;

procedure TfcariPetugas.BitBtn1Click(Sender: TObject);
begin
CRDBGrid1DblClick(Sender);

end;

procedure TfcariPetugas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Action:=caFree;
fcariPetugas:=nil;
end;

procedure TfcariPetugas.CRDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    CRDBGrid1DblClick(Sender);
    end;
end;

procedure TfcariPetugas.SpeedButton1Click(Sender: TObject);
begin
{
if fpelangganInput=nil then fpelangganInput:=TfpelangganInput.Create(Application);
fpelangganInput.lbstatus.Caption:='Tambah';
fpelangganinput.btbatalClick(Sender);
fpelangganInput.ShowModal;
}
end;

procedure TfcariPetugas.BitBtn3Click(Sender: TObject);
begin
cari(MyQuery,'select * from m_petugas where '+
        ' nip like '+QuotedStr('%'+Edit1.Text+'%')+
        ' or NM_p like '+QuotedStr('%'+Edit1.Text+'%'));
CRDBGrid1.Columns.Clear;
DBGridAddColumn(CRDBGrid1,'nip','Kode',20,1);
DBGridAddColumn(CRDBGrid1,'NM_p','Nama',180,1);



end;

procedure TfcariPetugas.Edit1Change(Sender: TObject);
begin
BitBtn3Click(Sender);
end;

procedure TfcariPetugas.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_escape then fcariPetugas.Close;
if key=vk_down then CRDBGrid1.SetFocus;
if key=vk_return then CRDBGrid1.SetFocus;
end;

procedure TfcariPetugas.CRDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if not(key in[#13]) then Edit1.SetFocus;
end;

procedure TfcariPetugas.FormCreate(Sender: TObject);
begin
Tampilikon(SpeedButton1,'bg\baru.bmp');
Tampilikon(BitBtn1,'bg\ok.bmp');
Tampilikon(BitBtn3,'bg\cari.bmp');

Edit1.Text:='';
ActiveControl:=Edit1;
end;

procedure TfcariPetugas.FormShow(Sender: TObject);
begin
BitBtn3Click(Sender);

end;

end.
