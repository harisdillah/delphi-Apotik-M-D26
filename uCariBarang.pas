unit uCariBarang ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, CRGrid, DB, ADODB,
  MemDS, DBAccess, MyAccess,nuest;

type
  TfcariBarang = class(TForm)
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
  fcariBarang: TfcariBarang;

implementation

uses UKeluar;


{$R *.dfm}

procedure TfcariBarang.CRDBGrid1DblClick(Sender: TObject);
var baris, i:integer;
 sama:Boolean;
begin
sama:=false;
if MyQuery.RecordCount<=0 then exit;

if pcontrol.Caption='fCariBrgMasuk' then
    begin
    {
    FrmMasuk.EKdBarang.Text:=MyQuery['kode_brg'];
    FrmMasuk.ENamaBarang.Text:=MyQuery['nama_barang'];
    FrmMasuk.CboSatuan.Text:=MyQuery['satuan'];
    FrmMasuk.EJml.Color:=clbtnface;
    FrmMasuk.EJml.SetFocus;
    }
    end;

    //Barang klik
{
if pcontrol.Caption='fbeliIn' then
    begin

    for i:=0 to FrmGrid.sg.RowCount-1 do
        begin
        if FrmGrid.sg.Cells[1,i]=MyQuery['kode_brg'] then
            begin
            sama:=true;
            baris:=i;
            Break;
            end
        end;
    if sama=true then
        begin
        FrmGrid.sg.Cells[5,i]:=FloatToStr(StrToFloat(FrmGrid.sg.Cells[5,i])+1);
        //fbeliIn.sg.Cells[8,i]:=FormatUang(MyQuery['hrg_beli']*fbeliIn.sg.Cells[5,i]);
        end
        else
        begin
        FrmGrid.sg.Cells[1,FrmGrid.sg.row]:=MyQuery['kode_brg'];
        FrmGrid.sg.Cells[2,FrmGrid.sg.row]:=MyQuery['nama_barang'];
        FrmGrid.sg.Cells[3,FrmGrid.sg.row]:=MyQuery['bidang_brg'];
        FrmGrid.sg.Cells[4,FrmGrid.sg.row]:=MyQuery['satuan'];
        FrmGrid.sg.Cells[5,FrmGrid.sg.row]:='1';
        //fbeliIn.sg.Cells[6,fbeliIn.sg.row]:=FormatUang(MyQuery['hrg_beli']);
        //fbeliIn.sg.Cells[7,fbeliIn.sg.row]:=FormatUang(MyQuery['hrg_jual']);
        //fbeliIn.sg.Cells[8,fbeliIn.sg.row]:=FormatUang(MyQuery['hrg_beli']);
        //  if (FrmGrid.sg.Row=FrmGrid.sg.RowCount-1) then
        //FrmGrid.btbarisClick(Sender);
        //FrmGrid.sg.Row:=FrmGrid.sg.Row+1;
        if FrmGrid.sg.Row=FrmGrid.sg.RowCount-1 then FrmGrid.sg.RowCount:=FrmGrid.sg.RowCount+1;
            FrmGrid.sg.Row:=FrmGrid.sg.Row+1;
        end;



    //FrmGrid.bttotalClick(Sender);
    FrmGrid.pnmBrg.Caption:=MyQuery['nama_barang']; //+'    @Rp.'+FormatUang(MyQuery['harga_beli']);
    //FrmGrid.sg
    end;

    if pcontrol.Caption='fbeli' then
    begin

    for i:=0 to fbeliIn.sg.RowCount-1 do
        begin
        if fbeliIn.sg.Cells[1,i]=MyQuery['kode_brg'] then
            begin
            sama:=true;
            baris:=i;
            Break;
            end
        end;
    if sama=true then
        begin
        fbeliIn.sg.Cells[5,i]:=FloatToStr(StrToFloat(fbeliIn.sg.Cells[5,i])+1);
        //fbeliIn.sg.Cells[8,i]:=FormatUang(MyQuery['hrg_beli']*fbeliIn.sg.Cells[5,i]);
        end
        else
        begin
        fbeliIn.sg.Cells[1,fbeliIn.sg.row]:=MyQuery['kode_brg'];
        fbeliIn.sg.Cells[2,fbeliIn.sg.row]:=MyQuery['nama_barang'];
        fbeliIn.sg.Cells[3,fbeliIn.sg.row]:=MyQuery['bidang_brg'];
        fbeliIn.sg.Cells[4,fbeliIn.sg.row]:=MyQuery['satuan'];
        fbeliIn.sg.Cells[5,fbeliIn.sg.row]:='1';
        //fbeliIn.sg.Cells[6,fbeliIn.sg.row]:=FormatUang(MyQuery['hrg_beli']);
        //fbeliIn.sg.Cells[7,fbeliIn.sg.row]:=FormatUang(MyQuery['hrg_jual']);
        //fbeliIn.sg.Cells[8,fbeliIn.sg.row]:=FormatUang(MyQuery['hrg_beli']);
        //  if (FrmGrid.sg.Row=FrmGrid.sg.RowCount-1) then
        //FrmGrid.btbarisClick(Sender);
        //FrmGrid.sg.Row:=FrmGrid.sg.Row+1;
        if fbeliIn.sg.Row=fbeliIn.sg.RowCount-1 then fbeliIn.sg.RowCount:=fbeliIn.sg.RowCount+1;
            fbeliIn.sg.Row:=fbeliIn.sg.Row+1;
        end;

     

    //FrmGrid.bttotalClick(Sender);
    FrmGrid.pnmBrg.Caption:=MyQuery['nama_barang']; //+'    @Rp.'+FormatUang(MyQuery['harga_beli']);
    //FrmGrid.sg
    end;
{
if pcontrol.Caption='fjualmotor' then
    begin
    fjualmotor.Edit2.Text:=MyQuery['kd_pelanggan'];
    fjualMotor.Edit5.Text:=MyQuery['nm_pelanggan'];
    fjualMotor.Edit3.SetFocus;
    end;
 }
fcariBarang.Close;
end;

procedure TfcariBarang.BitBtn1Click(Sender: TObject);
begin
CRDBGrid1DblClick(Sender);

end;

procedure TfcariBarang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Action:=caFree;
fcariBarang:=nil;
end;

procedure TfcariBarang.CRDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    CRDBGrid1DblClick(Sender);
    end;
end;

procedure TfcariBarang.SpeedButton1Click(Sender: TObject);
begin
{
if fpelangganInput=nil then fpelangganInput:=TfpelangganInput.Create(Application);
fpelangganInput.lbstatus.Caption:='Tambah';
fpelangganinput.btbatalClick(Sender);
fpelangganInput.ShowModal;
}
end;

procedure TfcariBarang.BitBtn3Click(Sender: TObject);
begin
cari(MyQuery,'select * from m_barang where '+
        ' kode_brg like '+QuotedStr('%'+Edit1.Text+'%')+
        //' or nama_barang like '+QuotedStr('%'+Edit1.Text+'%')+
        //' or bidang like '+QuotedStr('%'+Edit1.Text+'%')+
        ' or nama_barang like '+QuotedStr('%'+Edit1.Text+'%'));
CRDBGrid1.Columns.Clear;
DBGridAddColumn(CRDBGrid1,'kode_brg','Kode',10,1);
DBGridAddColumn(CRDBGrid1,'nama_barang','Nama',240,1);
DBGridAddColumn(CRDBGrid1,'satuan','satuan',60,1);
DBGridAddColumn(CRDBGrid1,'bidang_brg','bidang',60,2);
DBGridAddColumn(CRDBGrid1,'gudang','gudang',60,2);


end;

procedure TfcariBarang.Edit1Change(Sender: TObject);
begin
BitBtn3Click(Sender);
end;

procedure TfcariBarang.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_escape then fcariBarang.Close;
if key=vk_down then CRDBGrid1.SetFocus;
if key=vk_return then CRDBGrid1.SetFocus;
end;

procedure TfcariBarang.CRDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if not(key in[#13]) then Edit1.SetFocus;
end;

procedure TfcariBarang.FormCreate(Sender: TObject);
begin
Tampilikon(SpeedButton1,'bg\baru.bmp');
Tampilikon(BitBtn1,'bg\ok.bmp');
Tampilikon(BitBtn3,'bg\cari.bmp');

Edit1.Text:='';
ActiveControl:=Edit1;



end;

procedure TfcariBarang.FormShow(Sender: TObject);
begin
BitBtn3Click(Sender);

end;

end.
