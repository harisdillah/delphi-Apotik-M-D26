unit unJabatan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, CRGrid, ExtCtrls, DB,
  MemDS, DBAccess, MyAccess, jpeg,nuest, Menus;

type
  Tfjabatan = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    pkontrol: TPanel;
    CRDBGrid1: TCRDBGrid;
    MyQuery1: TMyQuery;
    MyDataSource1: TMyDataSource;
    lbkode: TLabel;
    ptengah: TPanel;
    btcari: TBitBtn;
    btHapus: TBitBtn;
    btEdit: TBitBtn;
    pcari: TPanel;
    Label8: TLabel;
    Edit5: TEdit;
    BitBtn3: TBitBtn;
    PopupMenu1: TPopupMenu;
    Edit: TMenuItem;
    utup1: TMenuItem;
    btreset: TSpeedButton;
    lbstatus: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    btsimpan: TBitBtn;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btsimpanClick(Sender: TObject);
    procedure btHapusClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure btcariClick(Sender: TObject);
    procedure pkontrolClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CRDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EditClick(Sender: TObject);
    procedure utup1Click(Sender: TObject);
    procedure ptengahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit5Click(Sender: TObject);
    procedure CRDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure CRDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btresetClick(Sender: TObject);
    procedure MyQuery1AfterOpen(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PBNumEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fjabatan: Tfjabatan;
  lebar:Boolean;

implementation

uses unMenu, unCariJabatan, UnModul;



{$R *.dfm}

procedure Tfjabatan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
fjabatan:=nil;
end;

procedure Tfjabatan.FormShow(Sender: TObject);
begin
TabSheet2.Show;
tampilTab(PageControl1,False);
pkontrolClick(Sender);
//ptengahClick(Sender);

end;

procedure Tfjabatan.SpeedButton1Click(Sender: TObject);
begin
TabSheet2.Show;
end;

procedure Tfjabatan.SpeedButton2Click(Sender: TObject);
begin
{TabSheet1.Show;
Edit1.SetFocus;
}end;

procedure Tfjabatan.btsimpanClick(Sender: TObject);
var i:integer;
begin

if cekKosong(Edit1,'Kode belum di isi')=true then exit;
if cekKosong(Edit2,'nama belum di isi')=true then exit;

if btsimpan.Caption='Simpan' then
  begin
  if ceksama(MyQuery1,'kd_jabatan',Edit1.Text,'Kode sudah ada','')=true then exit;
  proses('insert into jabatan(kd_jabatan,nm_jabatan,gaji_pokok,ket)values('+
  QuotedStr(Edit1.Text)+','+
  QuotedStr(Edit2.Text)+','+
  //QuotedStr(FloatToStr(PBNumEdit1.Value))+','+
  QuotedStr(Edit3.Text)+')');
  ShowMessage('Penyimpanan berhasil');
  end
  else
  begin
  proses('update jabatan set kd_jabatan='+ QuotedStr(Edit1.Text)+
  ',nm_jabatan='+QuotedStr(Edit2.Text)+
  //', gaji_pokok='+QuotedStr(FloatToStr(PBNumEdit1.Value))+
  ',ket='+QuotedStr(Edit3.Text)+
  ' where kd_jabatan='+QuotedStr(lbkode.Caption) );



  ShowMessage('Update berhasil');
  end;
btresetClick(Sender);
if lbstatus.Caption='Tambah' then Close;
if fcarijabatan<>nil then
//refreshAdo(fcariJabatan.MyQuery);

end;

procedure Tfjabatan.btHapusClick(Sender: TObject);
begin
if MyQuery1.RecordCount<=0 then exit;
hapus('jabatan','kd_jabatan',MyQuery1['kd_jabatan'],'Yakin akan menghapus data dengan nama : "'+MyQuery1['nm_jabatan']+'" ?');
//refreshAdo(MyQuery1);
CheckBox1Click(Sender);
end;

procedure Tfjabatan.btEditClick(Sender: TObject);
begin
if btEdit.Caption='Batal' then
    begin
    btresetClick(Sender);
    end
    else
    begin
    if MyQuery1.RecordCount<=0 then exit;
    lbkode.Caption:=MyQuery1['kd_jabatan'];
    Edit1.Text:=MyQuery1['kd_jabatan'];
    Edit2.Text:=MyQuery1['nm_jabatan'];
    //PBNumEdit1.Value:=MyQuery1['gaji_pokok'];
    Edit3.Text:=MyQuery1['ket'];
    btsimpan.Caption:='Update';
    btHapus.Enabled:=false;
    btcari.Enabled:=false;
    btEdit.Caption:='Batal';
    Edit1.SetFocus;
    end

end;

procedure Tfjabatan.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    Edit2.SetFocus;
    end;
end;

procedure Tfjabatan.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    btsimpan.Click;
    end;
end;


{
procedure Tfjabatan.LMDPanelFill1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbLeft then
  begin
    ReleaseCapture;
    Perform(WM_SYSCOMMAND,$F012,0);
  end;
end;
 }
procedure Tfjabatan.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#13,#8,'+']) then key:=#0;
end;

procedure Tfjabatan.btcariClick(Sender: TObject);
begin
if pcari.Visible=true then
    begin
    pcari.Visible:=false;
    end
    else
    begin
    pcari.Visible:=true;
    Edit5.SetFocus;
    end;
end;

procedure Tfjabatan.pkontrolClick(Sender: TObject);
begin
ptengah.Left:=round(pkontrol.Width/2-ptengah.Width/2);
//pbawah.Left:=round(pkontrol.Width/2-pbawah.Width/2);
//ptengah.Height:=round(TabSheet1.Height-pkontrol.Height-ptengah.Top)
end;

procedure Tfjabatan.FormResize(Sender: TObject);
begin
pkontrolClick(Sender);
end;

procedure Tfjabatan.BitBtn3Click(Sender: TObject);
begin
cari(MyQuery1,'select * from jabatan where kd_jabatan like '+
QuotedStr('%'+Edit5.Text+'%')+' or nm_jabatan like '+
QuotedStr('%'+Edit5.Text+'%'));
end;

procedure Tfjabatan.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    BitBtn3Click(Sender);
    end;
end;

procedure Tfjabatan.CRDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (MyQuery1.RecNo mod 2)=0 then
    begin
     CRDBGrid1.Canvas.Brush.Color:=cl3DLight;
     CRDBGrid1.Canvas.Font.Color:=clBlack;
    end
    else
    begin

    CRDBGrid1.Canvas.Font.Color:=clBlue;
    CRDBGrid1.Canvas.Brush.Color:=clMoneyGreen;

    end;
CRDBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure Tfjabatan.EditClick(Sender: TObject);
begin
btEditClick(Sender);
end;

procedure Tfjabatan.utup1Click(Sender: TObject);
begin
Close;
end;

procedure Tfjabatan.ptengahClick(Sender: TObject);
begin
//Left:=round(futama.Width/2-Width/2);
end;

procedure Tfjabatan.FormCreate(Sender: TObject);

begin
Tampilikon(btsimpan,'\BG\simpan.bmp') ;
Tampilikon(btEdit,'BG\edit.bmp');
Tampilikon(btHapus,'BG\hapus.bmp');
Tampilikon(btcari,'BG\cari.bmp');
Tampilikon(BitBtn3,'BG\cari.bmp');
Tampilikon(btreset,'BG\refresh.bmp');
//btresetClick(Sender);

end;

procedure Tfjabatan.Edit5Click(Sender: TObject);
begin
edit5.Text:='';
end;

procedure Tfjabatan.CRDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then
    begin
    pcari.Visible:=true;
    Edit5.SetFocus;
    Edit5.Text:=key;
    end;
end;

procedure Tfjabatan.CRDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_delete then
    begin
    btHapusClick(Sender);
    end;
end;

procedure Tfjabatan.btresetClick(Sender: TObject);
begin
  btEdit.Caption:='Edit';
    btsimpan.Caption:='Simpan';
    btHapus.Enabled:=true;
    btcari.Enabled:=True;
    Edit1.Text:='';
    Edit2.Text:='';
    Edit3.Text:='';
    Edit5.Text:='';
    //PBNumEdit1.Value:=0;
    //refreshAdo(MyQuery1);
    btsimpan.Caption:='Simpan';
    CheckBox1Click(Sender);
end;

procedure Tfjabatan.MyQuery1AfterOpen(DataSet: TDataSet);
begin
TFloatField(MyQuery1.FieldByName('gaji_pokok')).DisplayFormat:='#,#0;(#,#0);#,#0';
end;

procedure Tfjabatan.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=true then
    begin
    Edit1.Text:=TampilOto(DmModul.addscari,'kd_jabatan','select * from jabatan','JB',3);
    Edit1.ParentColor:=true;
    //ActiveControl:=Edit2;
    end
    else
    begin
    Edit1.Text:='';
    //ActiveControl:=Edit1;
    //Edit1.ParentColor
    Edit1.ParentColor:=false;
    Edit1.Color:=clWindow;
    end;
end;

procedure Tfjabatan.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    btsimpan.Click;
    end;
end;

procedure Tfjabatan.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    //PBNumEdit1.SetFocus;
    end;
end;

procedure Tfjabatan.PBNumEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    Edit3.SetFocus;
    end;
end;

end.
