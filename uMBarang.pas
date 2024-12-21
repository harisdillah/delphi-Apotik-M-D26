unit uMBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, CRGrid, ExtCtrls, DB,
  MemDS, DBAccess, MyAccess, jpeg,nuest, Menus, PBNumEdit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtonEdit,ShellAPI, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, WebData,
  OleCtrls, SHDocVw;

type
  TFrmBrg = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    MyQuery1: TMyQuery;
    MyDataSource1: TMyDataSource;
    lbkode: TLabel;
    PopupMenu1: TPopupMenu;
    Edit: TMenuItem;
    utup1: TMenuItem;
    lbstatus: TLabel;
    EKodeBrg: TEdit;
    ENamaBarang: TEdit;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    cxl_bidang: TcxLookupComboBox;
    cxLabel15: TcxLabel;
    dtp_ed: TDateTimePicker;
    cxLabel3: TcxLabel;
    EGudang: TEdit;
    ds2: TMyDataSource;
    Qcari: TMyQuery;
    crGrid: TCRDBGrid;
    cxLabel1: TcxLabel;
    Label3: TLabel;
    ds1: TMyDataSource;
    dsBarang: TMyDataSource;
    CRDBGrid1: TCRDBGrid;
    pcari: TPanel;
    Label8: TLabel;
    Edit5: TEdit;
    BitBtn3: TBitBtn;
    cxlbl1: TcxLabel;
    btcari: TBitBtn;
    lnamabrg: TLabel;
    Qcari2: TMyQuery;
    btn_satuan: TcxButtonEdit;
    crGridM: TCRDBGrid;
    dsMasuk: TMyDataSource;
    Qmasuk: TMyQuery;
    KartuBarang1: TMenuItem;
    Label4: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    iFile: TLabel;
    WebBrowser1: TWebBrowser;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    Panel1: TPanel;
    PnOperasi: TPanel;
    btEdit: TBitBtn;
    btsimpan: TBitBtn;
    btHapus: TBitBtn;
    BtnKartu: TBitBtn;
    Btn_label: TBitBtn;
    BitBtn7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btsimpanClick(Sender: TObject);
    procedure btHapusClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure EKodeBrgKeyDown(Sender: TObject; var Key: Word;
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
    procedure ENamaBarangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PBNumEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CRDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; State: TGridDrawState;
      StateEx: TGridDrawStateEx);
    procedure EGudangChange(Sender: TObject);
    procedure btn_ruanganPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure crGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnKartuClick(Sender: TObject);
    procedure KartuBarang1Click(Sender: TObject);
    procedure Btn_labelClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
    Procedure TampilData;
  public
    { Public declarations }
    //procedure combo_sat;
    procedure bidang_barang;
    procedure tampil_barang;
  end;

var
  FrmBrg: TFrmBrg;
  lebar:Boolean;
  s:string;
  i:integer;
implementation

uses unMenu, UnModul,UnCarisp,UAwalTahun,UBarangAktif,UUsulan,UImportMasterbarang;



{$R *.dfm}

procedure TFrmBrg.tampil_barang;
var qbarang : TMyQuery;

begin
 qbarang := TMyQuery.Create(nil);
  try

  s:='select * from  m_barang WHERE '+
         ' kode_brg = '+quotedstr(EKodeBrg.Text) +
         'ORDER BY nama_barang LIMIT 1';
  //      Qcari.Close;
  //      Qcari.Connection:=DmModul.con1;
  //      Qcari.SQL.Text:=s;
  //      Qcari.Open;


  qbarang.Connection := DmModul.con1;
  qbarang.Active := false;
  qbarang.SQL.Clear;
  qbarang.SQL.Text := s;
  qbarang.Open;
    if qbarang.RecordCount > 0 then
  begin
  lnamabrg.Caption:=qbarang.FieldByName('nama_barang').AsString

  end;

except
  ShowMessage('data Barang tidak ada');
  Qbarang.Close;
  qbarang.Free;
end;


end;


procedure TFrmBrg.bidang_barang;
var q_bid : TMyQuery;

begin
 q_bid := TMyQuery.Create(nil);
  try
  q_bid.Connection := DmModul.con1;
  q_bid.Active := false;
  q_bid.SQL.Clear;
  q_bid.SQL.Text := 'Select * from ref_bidang';
  q_bid.Open;
    if q_bid.RecordCount > 0 then
  begin
  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString

  ds1.DataSet := q_bid;
  cxl_bidang.Properties.ListSource := ds1;
  cxl_bidang.Properties.ListFieldNames := 'bid_nama';
  cxl_bidang.Properties.KeyFieldNames := 'kd_bidang';

  end;

except
  ShowMessage('data Bidang Barang tidak ada');
  q_bid.Close;
  q_bid.Free;
end;


end;

{
procedure TFrmBrg.combo_sat;
var q_sat : TMyQuery;

begin
  q_sat := TMyQuery.Create(nil);
try
    q_sat.Connection := DmModul.con1;
    q_sat.Close;
    q_sat.SQL.Text:=
      'select satuan from m_barang' +
      ' group by satuan '+
      ' order by satuan ';
    q_sat.Open;
    cbbsat.Items.Clear;
while not q_sat.Eof do
begin
cbbsat.Items.Add(q_sat.FieldByName('satuan').AsString);
q_sat.Next;
end;

finally
    q_sat.Close;
    q_sat.Free;
  end;

end;
  }

procedure TFrmBrg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
FrmBrg:=nil;
end;

procedure TFrmBrg.FormShow(Sender: TObject);
begin
TabSheet2.Show;
tampilTab(PageControl1,False);
pkontrolClick(Sender);
//ptengahClick(Sender);

end;

procedure TFrmBrg.SpeedButton1Click(Sender: TObject);
begin
TabSheet2.Show;
end;

procedure TFrmBrg.SpeedButton2Click(Sender: TObject);
begin
{TabSheet1.Show;
Edit1.SetFocus;
}end;

procedure TFrmBrg.btsimpanClick(Sender: TObject);
 var
cbobidang:string;
begin



if cekKosong(EKodeBrg,'Kode Barang belum di isi')=true then exit;
if cekKosong(ENamaBarang,'nama Barang belum di isi')=true then exit;
if cekKosong(btn_satuan.Text,'Satuan belum di isi')=true then exit;

if (Trim(cxl_bidang.Text)='')  then
        begin
        ShowMessage('nama Bidang Barang Kosong..??');
        cxl_bidang.SetFocus;
        Exit;
        end;
   // simpan bidang
   if cxl_bidang.Text = '' then
  cbobidang := ''
  else
  cbobidang := cxl_bidang.EditValue;
  
if btsimpan.Caption='Simpan' then

  begin
  //if ceksama(MyQuery1,'kode_brg',(EKodeBrg.Text,'Kode sudah ada','')=true then exit;
  proses('insert into m_barang(kode_brg,tgl_create,nama_barang,satuan,bidang_brg,gudang)values('+
  QuotedStr(EKodeBrg.Text)+','+
  QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
  QuotedStr(ENamaBarang.Text)+','+
  QuotedStr(btn_satuan.Text)+','+
  QuotedStr(cbobidang)+','+
  //QuotedStr(FloatToStr(PBNumEdit1.Value))+','+
  QuotedStr(EGudang.Text)+')');
  ShowMessage('Data Tambah berhasil : '+ENamaBarang.Text);
  BitBtn3Click(Sender);
  //CheckBox1.Visible := True;
  end
  else
  begin
  proses('update m_barang set kode_brg='+ QuotedStr(EKodeBrg.Text)+
    ',nama_barang='+QuotedStr(ENamaBarang.Text)+
    ',satuan='+QuotedStr(btn_satuan.Text)+
    ',gudang='+QuotedStr(EGudang.Text)+
    ',bidang_brg='+QuotedStr(cbobidang)+
	  ',tgl_ed='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_ed.Date))+
    ' where kode_brg='+QuotedStr(EKodeBrg.Text) );

    //', gaji_pokok='+QuotedStr(FloatToStr(PBNumEdit1.Value))+
    //',ket='+QuotedStr(Edit3.Text)+
  ShowMessage('Update berhasil : '+ENamaBarang.Text);
  BitBtn3Click(Sender);
  //CheckBox1.Visible := True;
  end;
btresetClick(Sender);
if lbstatus.Caption='Tambah' then Close;
CheckBox1.Visible := True;
//if fcarijabatan<>nil then
//refreshAdo(fcariJabatan.MyQuery);

end;                                                                                                          //

procedure TFrmBrg.btHapusClick(Sender: TObject);
begin
if MyQuery1.RecordCount<=0 then exit;

if cari('select * from detail_masuk where kode_brg='+
    QuotedStr(MyQuery1['kode_brg'])+'')>0 then
    begin
    ShowMessage('data barang pada Kode ini sebagian telah Proses Masuk'+#13+
    'untuk melakukan Edit data Masuk, Hapus dulu data masuk');
    exit;
    end;

if cari('select * from detail_keluar where kode_brg='+
    QuotedStr(MyQuery1['kode_brg'])+'')>0 then
    begin
    ShowMessage('data barang pada Kode ini sebagian telah Proses kELUAR'+#13+
    'untuk melakukan Edit data kELUAR, Hapus dulu data KELUAR');
    exit;
    end;

hapus('m_barang','kode_brg',MyQuery1['kode_brg'],'Yakin akan menghapus data dengan nama : "'+MyQuery1['nama_barang']+'" ?');
ShowMessage('data barang pada Kode ini '+#13+
    'Sudah Di hapus : '+ENamaBarang.Text);
    BitBtn3Click(Sender);
//refreshAdo(MyQuery1);
//BitBtn31Click(Sender);
end;

procedure TFrmBrg.btEditClick(Sender: TObject);

var
    Stream: TStream;
    JPG: TJpegImage;
    link : String;

begin
  //CheckBox1.Visible := false;
if btEdit.Caption='Batal' then
    begin
    btresetClick(Sender);
    end
    else
    begin

    if MyQuery1.RecordCount<=0 then exit;
    EKodeBrg.Enabled := False;
    CheckBox1.Visible := True;

    EKodeBrg.Text:=MyQuery1['kode_brg'];
    ENamaBarang.Text:=MyQuery1['nama_barang'];


    if VarIsNull(MyQuery1['foto']) then
        begin
   //exit;
        ShowMessage('Gambar Tidak ada Silakan Upload ')
        end
    else
    begin
    link := 'http://192.168.30.7:88/sicantig/images/'+MyQuery1['foto'];
    //iFile.Caption :=MyQuery1['foto'];
    iFile.Caption := link;
    WebBrowser1.Navigate(link);


end;

    //iFile.Caption :=MyQuery1['foto'];
    // image1.Picture.LoadFromFile(MyQuery1['foto']);
    //image1.Picture:=nil;

    //
    //cxl_bidang.EditValue:=MyQuery1['bidang_brg'];
    cxl_bidang.EditValue:=MyQuery1.FieldByName('bidang_brg').AsString;
    btn_satuan.Text:=MyQuery1['satuan'];
    EGudang.Text:=MyQuery1['gudang'];
    //tanggal SPK
    if VarIsNull(MyQuery1['tgl_ed']) then
      begin
    dtp_ed.ShowCheckbox :=true;
    dtp_ed.Checked := false;
    dtp_ed.Color := clred;
    end
   else
      begin
      dtp_ed.Date:=MyQuery1.FieldByName('tgl_ed').AsDateTime;
      dtp_ed.Color := clMenu;
    end;

    // data gambar
    {
    JPG := TJpegImage.Create;
    try
      //Stream := MyQuery1.CreateBlobStream(MyQuery1.FieldByName('foto'), bmRead);
      try
          //Image1.Picture.LoadFromStream(Stream);
          //Image1.Picture.LoadFromFile(MyQuery1.FieldByName('foto'));
      finally
          Stream.Free; // edited
      end;
    finally
      JPG.Free;
    end;
    // End data gambar
     }


     s:='SELECT a.tgl_keluar,a.kode_brg,a.nama,a.jumlah,a.satuan,b.no_bbk,b.gudang,b.ket'+
     ' from detail_keluar a '+
     ' INNER JOIN h_keluar b ON a.no_keluar = b.no_trans_k '+
     ' WHERE a.kode_brg = '+quotedstr(EKodeBrg.Text) +
     ' ORDER BY a.tgl_keluar desc';

     //TampilData;
     //  s:='select * from  detail_keluar WHERE '+
     //    ' kode_brg = '+quotedstr(EKodeBrg.Text) +
     //    'ORDER BY tgl_keluar desc';
        Qcari.Close;
        Qcari.Connection:=DmModul.con1;
        Qcari.SQL.Text:=s;
        Qcari.Open;
       ds2.DataSet:=Qcari;
       crGrid.DataSource:=ds2;
       crGrid.Columns.Clear;
       DBGridAddColumn(crGrid,'tgl_keluar','tgl',70,1);
       DBGridAddColumn(crGrid,'kode_brg','KODE',70,1);
       DBGridAddColumn(crGrid,'nama','NAMA BARANG',270,1);
       DBGridAddColumn(crGrid,'jumlah','Qty',30,3);
       DBGridAddColumn(crGrid,'no_bbk','BBK',50,3);
       DBGridAddColumn(crGrid,'ket','Ruangan',140,1);

       //TampilData;
      // s:='select * from  detail_masuk WHERE '+
      //   ' kode_brg = '+quotedstr(EKodeBrg.Text) +
      //   'ORDER BY tgl_masuk desc';

        s:='SELECT a.tgl_masuk,a.kode_brg,a.nama,a.jumlah,a.satuan,b.no_jalan,b.gudang,c.NamaPerusahaan'+
        ' FROM detail_masuk a '+
        ' INNER JOIN h_masuk b ON a.no_masuk = b.no_trans_m '+
        ' INNER JOIN db_peng23.m_perusahaan c ON c.NoVendor = b.cv '+
        ' WHERE a.kode_brg = '+quotedstr(EKodeBrg.Text) +
        ' ORDER BY a.tgl_masuk desc';

        Qmasuk.Close;
        Qmasuk.Connection:=DmModul.con1;
        Qmasuk.SQL.Text:=s;
        Qmasuk.Open;
       dsMasuk.DataSet:=Qmasuk;
       crGridM.DataSource:=dsMasuk;
       crGridM.Columns.Clear;
       DBGridAddColumn(crGridM,'tgl_masuk','tgl',70,1);
       DBGridAddColumn(crGridM,'kode_brg','KODE',70,1);
       DBGridAddColumn(crGridM,'nama','NAMA BARANG',270,1);
       DBGridAddColumn(crGridM,'jumlah','Qty',30,3);
       DBGridAddColumn(crGridM,'no_jalan','nO. JALAN',50,3);
       DBGridAddColumn(crGridM,'NamaPerusahaan','CV/PBF',140,1);



    btsimpan.Caption:='Update';

    btHapus.Enabled:=false;
    btcari.Enabled:=false;
    btEdit.Caption:='Batal';
    ENamaBarang.SetFocus;
    //CheckBox1.Visible := True;

    end
    // tambah tampil
    


end;

procedure TFrmBrg.EKodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    ENamaBarang.SetFocus;
    end;
end;

procedure TFrmBrg.Edit4KeyDown(Sender: TObject; var Key: Word;
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
procedure TFrmBrg.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#13,#8,'+']) then key:=#0;
end;

procedure TFrmBrg.btcariClick(Sender: TObject);
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

procedure TFrmBrg.pkontrolClick(Sender: TObject);
begin
//ptengah.Left:=round(pkontrol.Width/2-ptengah.Width/2);
//pbawah.Left:=round(pkontrol.Width/2-pbawah.Width/2);
//ptengah.Height:=round(TabSheet1.Height-pkontrol.Height-ptengah.Top)
end;

procedure TFrmBrg.FormResize(Sender: TObject);
begin
pkontrolClick(Sender);
end;

procedure TFrmBrg.BitBtn1Click(Sender: TObject);
var
  htgz,kodecari:string;
begin
if MyQuery1.RecordCount<=0 then exit;
  kodecari := MyQuery1['kode_brg'];
  htgz:='http://192.168.30.7/gudang22/modul/laporan/lap_bulanan/kartu_barang_pdf_delphi_gizi.php?cari='+kodecari;
  ShellExecute(Handle,'open',PChar(htgz),'','',SW_NORMAL);

end;

procedure TFrmBrg.BitBtn2Click(Sender: TObject);
var
  htUNIT,kodecariunit:string;
begin
if MyQuery1.RecordCount<=0 then exit;
  kodecariunit := MyQuery1['kode_brg'];
  //htUNIT:='http://192.168.30.7/gudang22/modul/laporan/lap_bulanan/kartu_barang_pdf_delphi_gizi.php?cari='+kodecari;
  htUNIT:='http://192.168.30.7/bidang23/tampil_barang_unit.php?cari='+kodecariunit;
  ShellExecute(Handle,'open',PChar(htUNIT),'','',SW_NORMAL);

end;

procedure TFrmBrg.BitBtn3Click(Sender: TObject);
begin

cari(MyQuery1,'select * from m_barang WHERE gudang = '+
QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
' AND nama_barang like '+ QuotedStr('%'+Edit5.Text+'%')+
' OR  kode_brg like '+ QuotedStr('%'+Edit5.Text+'%' + ' ORDER BY nama_barang'));

CRDBGrid1.Columns.Clear;
DBGridAddColumn(CRDBGrid1,'kode_brg','Kode',100,1);
DBGridAddColumn(CRDBGrid1,'nama_barang','Nama',280,1);
DBGridAddColumn(CRDBGrid1,'satuan','satuan',70,1);
DBGridAddColumn(CRDBGrid1,'bidang_brg','bidang',70,2);
DBGridAddColumn(CRDBGrid1,'gudang','gudang',70,2);


end;

procedure TFrmBrg.BitBtn4Click(Sender: TObject);
begin
if FrmAwal=nil then
     FrmAwal:=TFrmAwal.Create(Application);
     FrmAwal.Show;
     //FrmAwal.BringToFront;
end;

procedure TFrmBrg.BitBtn5Click(Sender: TObject);
begin
//FrmUsulan
if FrmUsulan=nil then
     FrmUsulan:=TFrmUsulan.Create(Application);
     FrmUsulan.Show;
end;

procedure TFrmBrg.BitBtn6Click(Sender: TObject);
begin
//FrmAktif
if FrmAktif=nil then
     FrmAktif:=TFrmAktif.Create(Application);
     FrmAktif.Show;
end;

procedure TFrmBrg.BitBtn7Click(Sender: TObject);
begin
//FrmUsulan
if FrmImportMasterBrg=nil then
     FrmImportMasterBrg:=TFrmImportMasterBrg.Create(Application);
     FrmImportMasterBrg.Show;
end;

procedure TFrmBrg.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    BitBtn3Click(Sender);
    end;
end;

procedure TFrmBrg.CRDBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFrmBrg.EditClick(Sender: TObject);
begin
btEditClick(Sender);
end;

procedure TFrmBrg.utup1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmBrg.ptengahClick(Sender: TObject);
begin
//Left:=round(futama.Width/2-Width/2);
end;

procedure TFrmBrg.FormCreate(Sender: TObject);

begin


{
Tampilikon(btsimpan,'\BG\simpan-16.bmp') ;
Tampilikon(btEdit,'BG\edit-16.bmp');
Tampilikon(btHapus,'BG\delete-16.bmp');
Tampilikon(btcari,'BG\find3.bmp');
Tampilikon(BitBtn3,'BG\find3.bmp');
Tampilikon(btreset,'BG\refresh.bmp');
}
//BitBtn3Click(Sender);
//btresetClick(Sender);
//combo_sat;
  bidang_barang;
  dtp_ed.date:= now;
  dtp_ed.ShowCheckbox :=true;
  dtp_ed.Checked := false;
  dtp_ed.Color := clred;
  EGudang.Text:=FMenu.dxStatusBar1.Panels[2].Text;

end;

procedure TFrmBrg.Edit5Click(Sender: TObject);
begin
edit5.Text:='';
end;

procedure TFrmBrg.CRDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then
    begin
    pcari.Visible:=true;
    EKodeBrg.SetFocus;
    EKodeBrg.Text:=key;
    end;
end;

procedure TFrmBrg.CRDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_delete then
    begin
    btHapusClick(Sender);
    end;
end;

procedure TFrmBrg.btresetClick(Sender: TObject);
begin
  btEdit.Caption:='Edit';
    btsimpan.Caption:='Simpan';
    btHapus.Enabled:=true;
    btcari.Enabled:=True;
    EKodeBrg.Text:='';
    ENamaBarang.Text:='';
    //Edit3.Text:='';
    //Edit5.Text:='';
    //PBNumEdit1.Value:=0;
    //refreshAdo(MyQuery1);
    btsimpan.Caption:='Simpan';
    CheckBox1Click(Sender);
end;

procedure TFrmBrg.MyQuery1AfterOpen(DataSet: TDataSet);
begin
//TFloatField(MyQuery1.FieldByName('gaji_pokok')).DisplayFormat:='#,#0;(#,#0);#,#0';
end;

procedure TFrmBrg.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=true then
    begin

      if btsimpan.Caption = 'Update' then
      begin
       ShowMessage( 'tidak dapat Nomor Baru ini data Edit: ' + EKodeBrg.Text );
       CheckBox1.Visible := False;
      exit;
      end;

    EKodeBrg.Text:=TampilOto(DmModul.addscari,'kode_brg','select * from m_barang','BR',3);
    EKodeBrg.ParentColor:=true;
    //ActiveControl:=Edit2;
    end
    else
    begin
    EKodeBrg.Text:='';
    //ActiveControl:=Edit1;
    //Edit1.ParentColor
    EKodeBrg.ParentColor:=false;
    EKodeBrg.Color:=clWindow;
    end;
end;

procedure TFrmBrg.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    btsimpan.Click;
    end;
end;

procedure TFrmBrg.ENamaBarangKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    ENamaBarang.SetFocus;
    end;
end;

procedure TFrmBrg.PBNumEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    //Edit3.SetFocus;
    end;
end;

procedure TFrmBrg.CRDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; State: TGridDrawState;
  StateEx: TGridDrawStateEx);
begin
 {
  if (MyQuery1.RecNo mod 2)=0 then
    begin
          CRDBGrid1.Canvas.Font.Color:=;
    end
  }
{
if (MyQuery1.Fields.FieldByName('kode_brg').Value>1) then
    begin
     //Background := $004080FF;
     CRDBGrid1.Canvas.Font.Color:=clBlack;
    end
}
 end;


Procedure TFrmBrg.TampilData;
  var
    q2 : TMyQuery;
  Begin
    q2 := TMyQuery.Create(nil);
  try
  q2.Connection := DmModul.con1;
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text :='select * from m_barang where kode_brg='+QuotedStr(EKodeBrg.Text)+'';
  q2.Open;

  if q2.RecordCount > 0 then
  begin

  if PnOperasi.Caption='Ubah Data' then
   begin
    //    AktifControl(Self,PnInput,True);
    //    AktifControl(Self,Pn_list,True);
    //BtnProses.Enabled:=True;
    end;

    EKodeBrg.Text:=q2.FieldByName('kode_brg').AsString;
    ENamaBarang.Text:=q2.FieldByName('nama_barang').AsString;
    EGudang.Text:=q2.FieldByName('gudang').AsString;
    //dtp_buat.date:=q2.FieldByName('tgl_masuk').AsDateTime;

    //tanggal SPK
    if VarIsNull(q2['tgl_ed']) then
      begin
    dtp_ed.ShowCheckbox :=true;
    dtp_ed.Checked := false;
    dtp_ed.Color := clred;
    end
   else
      begin
      dtp_ed.Date:=q2.FieldByName('tgl_ed').AsDateTime;
      dtp_ed.Color := clMenu;
    end;
    cxl_bidang.EditValue:=q2.FieldByName('bidang_brg').AsString;

  end
  else
    begin
    ShowMessage( 'data Tidak ADA : ' + EKodeBrg.Text );
    end;

  finally
    q2.Close;
    q2.Free;
  end;

  end;


procedure TFrmBrg.EGudangChange(Sender: TObject);
begin
 EGudang.Text := FMenu.dxStatusBar1.Panels[2].Text;
end;

procedure TFrmBrg.btn_ruanganPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='SP_Carisatuan';
  LsvSetCol('Nama Satuan|',
  '270|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  //FCarisp.LsField.Items.Add('NIP');
  FCarisp.LsField.Items.Add('satuan');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    btn_satuan.Text:=nFieldCari[0];
    btn_satuan.Style.Color:=clMoneyGreen;
    //cxButton.SetFocus;
  end;
end;

procedure TFrmBrg.crGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{
if (Qcari.RecNo mod 2)=0 then
    begin
     crGrid.Canvas.Brush.Color:=clCream;
     crGrid.Canvas.Font.Color:=clBlack;
    end
    else
    begin

    crGrid.Canvas.Font.Color:=clBlue;
    crGrid.Canvas.Brush.Color:=clMoneyGreen;
    end;
    }
end;

procedure TFrmBrg.BtnKartuClick(Sender: TObject);
var
  ht,kodecari:string;
begin
if MyQuery1.RecordCount<=0 then exit;
  kodecari := MyQuery1['kode_brg'];
  ht:='http://192.168.30.7:88/cetak_delphi/cetak/kartu_barang_pdf_delphi.php?cari='+kodecari;
  ShellExecute(Handle,'open',PChar(ht),'','',SW_NORMAL);

end;

procedure TFrmBrg.Btn_labelClick(Sender: TObject);
var
  ht1,kodecari1:string;
begin
if MyQuery1.RecordCount<=0 then exit;
  kodecari1 := MyQuery1['kode_brg'];
  //ht1:='http://192.168.30.7/gudang22/modul/laporan/lap_bulanan/kartu_barang_pdf_delphi.php?cari='+kodecari1;
  ht1:='http://192.168.30.7/bidang23/label_barang.php?cari='+kodecari1;
  ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);

end;

procedure TFrmBrg.KartuBarang1Click(Sender: TObject);
begin
BtnKartuClick(Sender);
end;

procedure TFrmBrg.Label4Click(Sender: TObject);
begin
Btn_labelClick(Sender);
end;

end.
