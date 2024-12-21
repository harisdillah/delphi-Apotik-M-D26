unit uTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CRGrid, StdCtrls, DB, MemDS, DBAccess, MyAccess,StrUtils,
  ComCtrls, IniFiles,
  uglobal, Menus, ExtCtrls, Buttons, printers, Winspool, EditBtn ;
    
type
  TFrmTest = class(TForm)
    ECari: TEdit;
    qcari: TMyQuery;
    Qbrowse: TMyQuery;
    ds1: TDataSource;
    crGrid: TCRDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure ECariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ECariChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTest: TFrmTest;

implementation
uses UnModul;
{$R *.dfm}

procedure TFrmTest.ECariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_DOWN then crGrid.setfocus;
 if (Key=40)then
    crGrid.SetFocus;
 if (Key=13)then
    crGrid.SetFocus;
end;

procedure TFrmTest.ECariChange(Sender: TObject);
var s:string;
begin
  if ECari.Text<>'' then
  begin
   s:='select * from  m_barang WHERE '+
   ' kode_brg like '+quotedstr('%'+ECari.Text+'%')+
   ' or nama_barang like '+quotedstr('%'+ECari.Text+'%')+
   ' or bidang_brg like '+quotedstr('%'+ECari.Text+'%')+
   ' or satuan like '+quotedstr('%'+ECari.Text+'%')+' ORDER BY bidang_brg,nama_barang';
  end
  else
  begin
   s:='select  * From  m_barang ORDER BY bidang_brg,nama_barang';
  end;
  Qbrowse.Close;
  Qbrowse.Connection:=DmModul.con1;
  Qbrowse.SQL.Text:=s;
  Qbrowse.Open;
  ds1.DataSet:=Qbrowse;
  crGrid.DataSource:=ds1;
 crGrid.Columns.Clear;
 DBGridAddColumn(crGrid,'kode_brg','KODE',90,1);
 DBGridAddColumn(crGrid,'nama_barang','NAMA BARANG',300,1);
 DBGridAddColumn(crGrid,'satuan','SATUAN',100,1);
 DBGridAddColumn(crGrid,'bidang_brg','Bidang',100,3);
 //DBGridAddColumn(crGrid,'HRGJUAL','HARGA JUAL',100,3);
 //DBGridAddColumn(crGrid,'DISKON','DISKON',100,3);

  //crGrid.AutoAdjustColumns;

end;

procedure TFrmTest.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//menguji penekanan keyboard fungsi
{
  case Key of
 //  VK_ESCAPE:   //keyboard ESC
    VK_F5 : Button1Click(Sender);  //key F5
  //  VK_F3: Tampil(Sender);      //key F3
  //  VK_F7:Hapus1Click(Sender);  //key F7
  //  VK_F2: BtnSaveClick(Sender);  //key F2
  //  VK_F8: SaveHold(Sender);  //key F2
  //  VK_F9: LoadHold(Sender);  //key F2
 end;
 }

 if key=VK_F5 then showmessage('tekan f5 untuk ambil data hold yang akan dihapus..!');

end;

procedure TFrmTest.Button1Click(Sender: TObject);
begin
showmessage('tekan f5 untuk ambil data hold yang akan dihapus..!');
end;

end.
 