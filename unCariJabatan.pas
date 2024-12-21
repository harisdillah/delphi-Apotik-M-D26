unit unCariJabatan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, CRGrid, DB, ADODB,
  MemDS, DBAccess, MyAccess,nuest;

type
  TfcariJabatan = class(TForm)
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
    procedure MyQueryAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
fcariJabatan: TfcariJabatan;

implementation

uses unJabatan;







{$R *.dfm}

procedure TfcariJabatan.CRDBGrid1DblClick(Sender: TObject);
begin
if MyQuery.RecordCount<=0 then exit;


if pcontrol.Caption='fkaryawaninput' then
    begin
    //fkaryawaninput.Edit5.Text:=MyQuery['kd_jabatan'];
    //fkaryawanInput.Edit6.Text:=MyQuery['nm_jabatan'];

    end;
fcarijabatan.Close;
end;

procedure TfcariJabatan.BitBtn1Click(Sender: TObject);
begin
CRDBGrid1DblClick(Sender);

end;

procedure TfcariJabatan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Action:=caFree;
fcarijabatan:=nil;
end;

procedure TfcariJabatan.CRDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    CRDBGrid1DblClick(Sender);
    end;
end;

procedure TfcariJabatan.SpeedButton1Click(Sender: TObject);
begin
if fjabatan=nil then fjabatan:=Tfjabatan.Create(Application);
fjabatan.lbstatus.Caption:='Tambah';
fjabatan.FormStyle:=fsNormal;
fjabatan.Visible:=false;
fjabatan.ShowModal;
end;

procedure TfcariJabatan.BitBtn3Click(Sender: TObject);
begin
cari(MyQuery,'select * from jabatan where '+
        ' kd_jabatan like '+QuotedStr('%'+Edit1.Text+'%')+
        ' or nm_jabatan like '+QuotedStr('%'+Edit1.Text+'%')+
        ' or gaji_pokok like '+QuotedStr('%'+Edit1.Text+'%'));
end;

procedure TfcariJabatan.Edit1Change(Sender: TObject);
begin
BitBtn3Click(Sender);
end;

procedure TfcariJabatan.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_escape then fcarijabatan.Close;
if key=vk_down then CRDBGrid1.SetFocus;
if key=vk_return then CRDBGrid1.SetFocus;
end;

procedure TfcariJabatan.CRDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if not(key in[#13]) then Edit1.SetFocus;
end;

procedure TfcariJabatan.FormCreate(Sender: TObject);
begin
Tampilikon(SpeedButton1,'bg\baru.bmp');
Tampilikon(BitBtn1,'bg\ok.bmp');
Tampilikon(BitBtn3,'bg\cari.bmp');
Edit1.Text:='';
ActiveControl:=Edit1;
end;

procedure TfcariJabatan.MyQueryAfterOpen(DataSet: TDataSet);
begin
TFloatField(MyQuery.FieldByName('gaji_pokok')).DisplayFormat:='#,#0;(#,#0);#,#0';
end;

end.
