unit uMBarang24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, CRGrid, ExtCtrls, DB,
  MemDS, DBAccess, MyAccess, jpeg,nuest, Menus,  cxGraphics,
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
  OleCtrls, SHDocVw,uglobal, AdvSmoothPanel,AdvStyleIF, AdvPageControl;

type
  TFrmBrg24 = class(TForm)
    MyQuery1: TMyQuery;
    MyDataSource1: TMyDataSource;
    PopupMenu1: TPopupMenu;
    Edit: TMenuItem;
    utup1: TMenuItem;
    ds2: TMyDataSource;
    Qcari: TMyQuery;
    ds1: TMyDataSource;
    dsBarang: TMyDataSource;
    btcari: TBitBtn;
    Qcari2: TMyQuery;
    dsMasuk: TMyDataSource;
    Qmasuk: TMyQuery;
    KartuBarang1: TMenuItem;
    Label4: TMenuItem;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    cxlbl1: TcxLabel;
    btn_satuan: TcxButtonEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxl_bidang: TcxLookupComboBox;
    cxLabel15: TcxLabel;
    lbstatus: TLabel;
    tmr1: TTimer;
    btnhapus: TMenuItem;
    cetakKartuPDF1: TMenuItem;
    MyDS2: TMyDataSource;
    LihatStok1: TMenuItem;
    advpgcntrl1: TAdvPageControl;
    advtbsht1: TAdvTabSheet;
    advtbsht2: TAdvTabSheet;
    AdvSmoothPanel1: TAdvSmoothPanel;
    lbkode: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    iFile: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cxLabel1: TcxLabel;
    EKodeBrg: TEdit;
    CheckBox1: TCheckBox;
    ENamaBarang: TEdit;
    dtp_ed: TDateTimePicker;
    cxLabel3: TcxLabel;
    cbb_satuan: TComboBox;
    EBarcode: TEdit;
    ehrgbeli: TEdit;
    ehrgjual: TEdit;
    wb2: TWebBrowser;
    Panel1: TPanel;
    btEdit: TBitBtn;
    btsimpan: TBitBtn;
    btHapus: TBitBtn;
    BtnKartu: TBitBtn;
    Btn_label: TBitBtn;
    PnOperasi: TPanel;
    eNo_rak: TcxLookupComboBox;
    Ednobatch: TEdit;
    cb_aktif: TCheckBox;
    cboStatusJual: TComboBox;
    cbosatjual: TComboBox;
    cxLabel2: TcxLabel;
    edStokAwal: TEdit;
    cxLabel4: TcxLabel;
    dtpTglAwal: TDateTimePicker;
    AdvSmoothPanel2: TAdvSmoothPanel;
    pcari: TPanel;
    Label8: TLabel;
    EdCarinama: TEdit;
    BitBtn3: TBitBtn;
    btnlabarugi: TBitBtn;
    btncaribarang: TSpeedButton;
    dtptglbrgawal: TDateTimePicker;
    lbl1: TLabel;
    Edmargin: TEdit;
    cxLabel5: TcxLabel;
    mySPcari: TMyStoredProc;
    dscari: TMyDataSource;
    crdbgrd1: TCRDBGrid;
    lbl2: TLabel;
    Pn_Editbrg: TPanel;
    Label12: TLabel;
    cxUpdatestok: TcxTextEdit;
    lbl4: TLabel;
    cxNamaBarang: TcxTextEdit;
    btnsave: TSpeedButton;
    btn2: TSpeedButton;
    Label13: TLabel;
    cxKodeBarang: TcxTextEdit;
    cxStok: TcxLabel;
    memostok: TMemo;
    dtpTglStok: TDateTimePicker;
    cxstokSekarang: TcxTextEdit;
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
    procedure EdCarinamaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure EditClick(Sender: TObject);
    procedure utup1Click(Sender: TObject);
    procedure ptengahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCarinamaClick(Sender: TObject);
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
    procedure ehrgbeliChange(Sender: TObject);
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
    procedure ehrgjualChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb_satuanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtp_edKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EBarcodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNo_rakKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ehrgbeliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ehrgjualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tmr1Timer(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure cetakKartuPDF1Click(Sender: TObject);
    procedure LihatStok1Click(Sender: TObject);
    procedure btnlabarugiClick(Sender: TObject);
    procedure btncaribarangClick(Sender: TObject);
    procedure crdbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure crdbgrd1DblClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);

  private
    { Private declarations }
    Procedure TampilData;
    procedure bidang_barang;
    procedure tampil_barang;
    Procedure cbo_satuan;
    procedure KosongTex(Kunci: Boolean);
    Procedure Tampil_combo_Rak;
    Procedure cbo_satuanjual;
    procedure DisplaySettings;

  public
    { Public declarations }
    //procedure combo_sat;

  end;

var
  FrmBrg24: TFrmBrg24;
  lebar:Boolean;
  s:string;
  i:integer;
implementation

uses unMenu, UF_setting,UnModul,UnCarisp,UAwalTahun,UBarangAktif,UUsulan,UImportMasterbarang;



{$R *.dfm}

procedure TFrmBrg24.tampil_barang;
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
  //lnamabrg.Caption:=qbarang.FieldByName('nama_barang').AsString

  end;

except
  ShowMessage('data Barang tidak ada');
  Qbarang.Close;
  qbarang.Free;
end;


end;


procedure TFrmBrg24.tmr1Timer(Sender: TObject);
begin
PnOperasi.Font.Color := Trunc(clBLUE*random);
end;

procedure TFrmBrg24.bidang_barang;
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

procedure TFrmBrg24.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mySPcari.Close;
Action:=caFree;
FrmBrg24:=nil;
end;

procedure TFrmBrg24.FormShow(Sender: TObject);
   var Qsetting : TMyQuery;

begin
//TabSheet2.Show;
//tampilTab(PageControl1,False);
pkontrolClick(Sender);
EdCarinama.SetFocus;
PnOperasi.Caption := 'Tambah Data';
DisplaySettings;



end;







procedure TFrmBrg24.SpeedButton1Click(Sender: TObject);
begin
//TabSheet2.Show;
end;

procedure TFrmBrg24.SpeedButton2Click(Sender: TObject);
begin
{TabSheet1.Show;
Edit1.SetFocus;
}end;

procedure TFrmBrg24.btsimpanClick(Sender: TObject);
 var
sql,tgljatuhtempo,tgled,tglawal:string;
aktif: string;
cborak:string;
hrgbeli,hrgjual:real;
qv : TMyQuery;
begin

  if MessageDlg('Data dengan'+#13+#10+EKodeBrg.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin

//hrgbeli :=strtofloat (clearDot(ehrgbeli.Text));
//hrgjual :=strtofloat (clearDot(ehrgjual.Text));

if dtp_ed.Checked then
   tgled:=FormatDateTime('yyyy/mm/dd',dtp_ed.Date)
   else
   tgled:='';

if dtpTglAwal.Checked then
   tglawal:=FormatDateTime('yyyy/mm/dd',dtpTglAwal.Date)
   else
   tglawal:='';


//   simpan petugas
   if eNo_rak.Text = '' then
      cborak := ''
  else
  cborak :=  eNo_rak.EditValue;

  if cb_aktif.Checked = True then
      aktif := '1'
    else
      aktif := '0';

	if (Trim(eNo_rak.Text)='')  then
        begin
        ShowMessage('Nomor Rak Kosong..??');
        eNo_rak.SetFocus;
        Exit;
        end;


if cekKosong(EKodeBrg,'Kode Barang belum di isi')=true then exit;
if cekKosong(ENamaBarang,'nama Barang belum di isi')=true then exit;
if cekKosong(cbb_satuan.Text,'Satuan Beli belum di isi')=true then exit;
if cekKosong(eBarcode.Text,'Barcode belum di isi')=true then exit;
if cekKosong(eNo_rak.Text,'Nomor Rak belum di isi')=true then exit;
if cekKosong(eHrgjual.Text,'@harga jual belum di isi')=true then exit;
if cekKosong(eHrgBeli.Text,'@harga beli belum di isi')=true then exit;
if cekKosong(cbosatjual.Text,'Satuan jual belum di isi')=true then exit;
if cekKosong(Edmargin.Text,'Margin belum di isi')=true then exit;

//if (Trim(cxl_bidang.Text)='')  then
//        begin
//        ShowMessage('nama Bidang Barang Kosong..??');
//        cxl_bidang.SetFocus;
//        Exit;
//        end;
//   // simpan bidang
//   if cxl_bidang.Text = '' then
//  cbobidang := ''
//  else
//  cbobidang := cxl_bidang.EditValue;
  
if btsimpan.Caption='Simpan' then




  begin
  //if ceksama(MyQuery1,'kd_obat',(EKodeBrg,'Kode sudah ada','')=true then exit;
  qv := TMyQuery.Create(nil);
  qv.Connection := DmModul.con1;
    qv.SQL.Clear;
    qv.SQL.Text := 'Select * from tbl_dataobat where kd_obat = '+QuotedStr(EKodeBrg.Text)+'';
    qv.Open;
    if qv.RecordCount > 0 then
      begin

        if MessageDlg('Kode Sudah ada'+#13+#10+EKodeBrg.Text+#13+#10+
        'Buat Nomor Baru (kode baru), ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
       //EKodeBrg.Text:=GetNoBBK;
       CheckBox1.Checked:=true;
       end;
        exit;
      end;


  proses('insert into tbl_dataobat(kd_obat,aktif,status_jual,nobatch,barcode,idrak,tgl_create,nm_obat,sat_obat,sat_jual,margin,hrg_obat,exp_obat,hrgbeli_obat)values('+
  QuotedStr(EKodeBrg.Text)+','+
  QuotedStr(aktif)+','+
  QuotedStr(cboStatusJual.Text)+','+
  QuotedStr(Ednobatch.Text)+','+
  QuotedStr(ebarcode.Text)+','+
  QuotedStr(cborak)+','+
  QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
  QuotedStr(ENamaBarang.Text)+','+
  QuotedStr(cbb_satuan.Text)+','+
  QuotedStr(cbosatjual.Text)+','+
  QuotedStr(Edmargin.Text)+','+
  QuotedStr(clearDot(ehrgjual.Text))+','+
  //QuotedStr(FloatToStr(PBNumEdit1.Value))+','+
  QuotedStr(tgled)+','+
  QuotedStr(clearDot(ehrgbeli.Text))+')');


  proses('INSERT INTO detail_awal (tgl_awal,tgl_create,kode_brg,nobatch,nama,jumlah,satuan)'+
             ' Values('+
             QuotedStr(tglawal)+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
             QuotedStr(EKodeBrg.Text)+','+
             QuotedStr(Ednobatch.Text)+','+
             QuotedStr(eNamaBarang.Text)+','+
             QuotedStr(edStokAwal.Text)+','+
             //QuotedStr(RealFormat(StrToFloat(Grid1.Cells[4,i1])))+','+// jumlah 0,00
             QuotedStr(btn_satuan.Text)+')');
// Tambah detail opname Harian
  proses('INSERT INTO detail_opname_harian (tgl_opname_hr,tgl_create,kode_brg,nama,jml_opname_hr,satuan)'+
             ' Values('+
             QuotedStr(tglawal)+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
             QuotedStr(EKodeBrg.Text)+','+
             QuotedStr(eNamaBarang.Text)+','+
             QuotedStr('0')+','+
             QuotedStr(btn_satuan.Text)+')');


  ShowMessage('Data Tambah berhasil : '+ENamaBarang.Text);
  KosongTex(True);
  BitBtn3Click(Sender);
  //CheckBox1.Visible := True;
  end
  else
  begin
  proses('update tbl_dataobat set '+
    'nm_obat='+QuotedStr(ENamaBarang.Text)+
    ',barcode='+QuotedStr(ebarcode.Text)+
    ',idrak='+QuotedStr(cborak)+
    ',sat_obat='+QuotedStr(cbb_satuan.Text)+
    ',sat_jual='+QuotedStr(cbosatjual.Text)+
    ',hrg_obat='+QuotedStr(clearDot(ehrgjual.Text))+
    ',hrgbeli_obat='+QuotedStr(clearDot(ehrgbeli.Text))+
	  ',exp_obat='+QuotedStr(tgled)+
    ',margin='+QuotedStr(Edmargin.text)+
    ',aktif='+QuotedStr(aktif)+
    ',status_jual='+QuotedStr(cboStatusJual.Text)+
    ',nobatch='+QuotedStr(Ednobatch.Text)+
    ' where kd_obat='+QuotedStr(EKodeBrg.Text) );

    //', gaji_pokok='+QuotedStr(FloatToStr(PBNumEdit1.Value))+
    //',ket='+QuotedStr(Edit3.Text)+
  ShowMessage('Update berhasil : '+ENamaBarang.Text);
  BitBtn3Click(Sender);
  KosongTex(True);
  pnoperasi.Caption := 'Tambah Data';
  btsimpan.Caption :='Simpan';
  EKodeBrg.Enabled := true;
  //CheckBox1.Visible := True;
  end;
btresetClick(Sender);
if lbstatus.Caption='Tambah' then Close;
CheckBox1.Visible := True;
//if fcarijabatan<>nil then
//refreshAdo(fcariJabatan.MyQuery);
 end; //end tanya
end;                                                                                                          //

procedure TFrmBrg24.btHapusClick(Sender: TObject);
begin
if mySPcari.RecordCount<=0 then exit;

if cari('select * from detail_pembelian where kode_brg='+
    QuotedStr(mySPcari['kd_obat'])+'')>0 then
    begin
    ShowMessage('data barang pada Kode ini sebagian telah Proses Masuk'+#13+
    'untuk melakukan Edit data detail_pembelian, Hapus dulu detail_pembelian');
    exit;
    end;

if cari('select * from detail_penjualan where kode_brg='+
    QuotedStr(mySPcari['kd_obat'])+'')>0 then
    begin
    ShowMessage('data barang pada Kode ini sebagian telah Proses detail_penjualan'+#13+
    'untuk melakukan Edit detail_penjualan, Hapus dulu data detail_penjualan');
    exit;
    end;

if cari('select * from detail_awal where kode_brg='+
    QuotedStr(mySPcari['kd_obat'])+'')>0 then
    begin
    ShowMessage('data barang pada Kode ini sebagian telah Proses detail_Awal'+#13+
    'untuk melakukan Edit detail_awal, Hapus dulu data detail_Awal');
    exit;
    end;

hapus('tbl_dataobat','kd_obat',mySPcari['kd_obat'],'Yakin akan menghapus data dengan nama : "'+MyQuery1['nm_obat']+'" ?');
ShowMessage('data barang pada Kode ini '+#13+
    'Sudah Di hapus : '+ENamaBarang.Text);
    BitBtn3Click(Sender);
//refreshAdo(MyQuery1);
//BitBtn31Click(Sender);
end;

procedure TFrmBrg24.btn2Click(Sender: TObject);
begin
Pn_Editbrg.Visible:=False;
end;

procedure TFrmBrg24.btncaribarangClick(Sender: TObject);
var
  tgl1,ht2:string;
begin

tgl1 := FormatDateTime('yyyy/mm/dd',dtptglbrgawal.Date);
//if MyQuery1.RecordCount<=0 then exit;
//  kodecari1 := MyQuery1['kd_obat'];


  ht2:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/medika_native/stok/index.php?tgl='+tgl1;
  //FrmBrowserLink.Show;
  //FrmBrowserLink.TampilBrowser(ht2);

end;

procedure TFrmBrg24.btnhapusClick(Sender: TObject);
begin
btHapusClick(Sender);
end;

procedure TFrmBrg24.btEditClick(Sender: TObject);

var
    Stream: TStream;
    JPG: TJpegImage;
    link : String;

begin
  //CheckBox1.Visible := false;
  PnOperasi.Caption := 'Ubah Data';
if btEdit.Caption='Batal' then
    begin
    //btresetClick(Sender);
    KosongTex(True);
    EKodeBrg.Enabled := true;
    pnoperasi.Caption := 'Tambah Data';
    btsimpan.Caption :='Simpan';
    btEdit.Caption :='Edit'
    end
    else
    begin

    if mySPcari.RecordCount<=0 then exit;
    EKodeBrg.Enabled := False;
    CheckBox1.Visible := false;
    EKodeBrg.Text:=mySPcari['kd_obat'];
    tampildata;
//    ENamaBarang.Text:=MyQuery1['nm_obat'];
//    cboStatusJual.Text:=MyQuery1['status_jual'];
//    Ednobatch.Text:=MyQuery1['nobatch'];
//    //aktif
//    if VarIsNull(MyQuery1['aktif']) then
//      begin
//        cb_aktif.Checked := True;
//        cb_aktif.Color := clMoneyGreen;
//      end
//      else
//      begin
//        cb_aktif.Checked := false;
//        cb_aktif.Color := clred;
//      end;

    {
    if VarIsNull(MyQuery1['foto']) then
        begin
   //exit;
        ShowMessage('Gambar Tidak ada Silakan Upload ')
        end
    else
    begin
    link := 'http://localhost/medika/images/'+MyQuery1['foto'];
    //iFile.Caption :=MyQuery1['foto'];
    iFile.Caption := link;
    Wb2.Navigate(link);


end;
}
//    cbb_satuan.Text:=MyQuery1['sat_obat'];
//    eBarcode.Text:=MyQuery1['barcode'];
//    eNo_rak.EditValue:=MyQuery1['idrak'];
//    eHrgJual.Text:=MyQuery1['hrg_obat'];
//    eHrgBeli.Text:=MyQuery1['hrgbeli_obat'];


//tanggal jatuh tempo
//    if VarIsNull(MyQuery1['exp_obat']) then
//      begin
//    dtp_ed.ShowCheckbox :=true;
//    dtp_ed.Checked := false;
//    dtp_ed.Color := clred;
//    end
//   else
//      begin
//      dtp_ed.Date:=MyQuery1.FieldByName('exp_obat').AsDateTime;
//    end;

    //iFile.Caption :=MyQuery1['foto'];
    // image1.Picture.LoadFromFile(MyQuery1['foto']);
    //image1.Picture:=nil;

    //
    //cxl_bidang.EditValue:=MyQuery1['bidang_brg'];
    //cxl_bidang.EditValue:=MyQuery1.FieldByName('bidang_brg').AsString;


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


//     s:='SELECT a.tgl_keluar,a.kode_brg,a.nama,a.jumlah,a.satuan,b.no_bbk,b.gudang,b.ket'+
//     ' from detail_keluar a '+
//     ' INNER JOIN h_keluar b ON a.no_keluar = b.no_trans_k '+
//     ' WHERE a.kode_brg = '+quotedstr(EKodeBrg.Text) +
//     ' ORDER BY a.tgl_keluar desc';
//
//     //TampilData;
//     //  s:='select * from  detail_keluar WHERE '+
//     //    ' kode_brg = '+quotedstr(EKodeBrg.Text) +
//     //    'ORDER BY tgl_keluar desc';
//        Qcari.Close;
//        Qcari.Connection:=DmModul.con1;
//        Qcari.SQL.Text:=s;
//        Qcari.Open;
//       ds2.DataSet:=Qcari;
//       crGrid.DataSource:=ds2;
//       crGrid.Columns.Clear;
//       DBGridAddColumn(crGrid,'tgl_keluar','tgl',70,1);
//       DBGridAddColumn(crGrid,'kode_brg','KODE',70,1);
//       DBGridAddColumn(crGrid,'nama','NAMA BARANG',270,1);
//       DBGridAddColumn(crGrid,'jumlah','Qty',30,3);
//       DBGridAddColumn(crGrid,'no_bbk','BBK',50,3);
//       DBGridAddColumn(crGrid,'ket','Ruangan',140,1);

       //TampilData;
      // s:='select * from  detail_masuk WHERE '+
      //   ' kode_brg = '+quotedstr(EKodeBrg.Text) +
      //   'ORDER BY tgl_masuk desc';

//        s:='SELECT a.tgl_masuk,a.kode_brg,a.nama,a.jumlah,a.satuan,b.no_jalan,b.gudang,c.NamaPerusahaan'+
//        ' FROM detail_masuk a '+
//        ' INNER JOIN h_masuk b ON a.no_masuk = b.no_trans_m '+
//        ' INNER JOIN db_peng23.m_perusahaan c ON c.NoVendor = b.cv '+
//        ' WHERE a.kode_brg = '+quotedstr(EKodeBrg.Text) +
//        ' ORDER BY a.tgl_masuk desc';
//
//        Qmasuk.Close;
//        Qmasuk.Connection:=DmModul.con1;
//        Qmasuk.SQL.Text:=s;
//        Qmasuk.Open;
//       dsMasuk.DataSet:=Qmasuk;
//       crGridM.DataSource:=dsMasuk;
//       crGridM.Columns.Clear;
//       DBGridAddColumn(crGridM,'tgl_masuk','tgl',70,1);
//       DBGridAddColumn(crGridM,'kode_brg','KODE',70,1);
//       DBGridAddColumn(crGridM,'nama','NAMA BARANG',270,1);
//       DBGridAddColumn(crGridM,'jumlah','Qty',30,3);
//       DBGridAddColumn(crGridM,'no_jalan','nO. JALAN',50,3);
//       DBGridAddColumn(crGridM,'NamaPerusahaan','CV/PBF',140,1);
    //tampildata;
    btsimpan.Caption:='Update';
    btHapus.Enabled:=false;
    btcari.Enabled:=false;
    btEdit.Caption:='Batal';
    ENamaBarang.SetFocus;
    //CheckBox1.Visible := True;

    end
    // tambah tampil

end;

procedure TFrmBrg24.EKodeBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    ENamaBarang.SetFocus;
    end;
end;

procedure TFrmBrg24.Edit4KeyDown(Sender: TObject; var Key: Word;
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
procedure TFrmBrg24.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#13,#8,'+']) then key:=#0;
end;

procedure TFrmBrg24.btcariClick(Sender: TObject);
begin
if pcari.Visible=true then
    begin
    pcari.Visible:=false;
    end
    else
    begin
    pcari.Visible:=true;
    EdCarinama.SetFocus;
    end;
end;

procedure TFrmBrg24.pkontrolClick(Sender: TObject);
begin
//ptengah.Left:=round(pkontrol.Width/2-ptengah.Width/2);
//pbawah.Left:=round(pkontrol.Width/2-pbawah.Width/2);
//ptengah.Height:=round(TabSheet1.Height-pkontrol.Height-ptengah.Top)
end;

procedure TFrmBrg24.FormResize(Sender: TObject);
begin
pkontrolClick(Sender);
end;

procedure TFrmBrg24.BitBtn1Click(Sender: TObject);
//var
//  htgz,kodecari:string;
begin
//if MyQuery1.RecordCount<=0 then exit;
//  kodecari := MyQuery1['kode_brg'];
//  htgz:='http://192.168./gudang22/modul/laporan/lap_bulanan/kartu_barang_pdf_delphi_gizi.php?cari='+kodecari;
//  ShellExecute(Handle,'open',PChar(htgz),'','',SW_NORMAL);

end;

procedure TFrmBrg24.BitBtn2Click(Sender: TObject);
//var
//  htUNIT,kodecariunit:string;
begin
//if MyQuery1.RecordCount<=0 then exit;
//  kodecariunit := MyQuery1['kode_brg'];
//  //htUNIT:='http://192.168./gudang22/modul/laporan/lap_bulanan/kartu_barang_pdf_delphi_gizi.php?cari='+kodecari;
//  htUNIT:='http://192.168./bidang23/tampil_barang_unit.php?cari='+kodecariunit;
//  ShellExecute(Handle,'open',PChar(htUNIT),'','',SW_NORMAL);

end;

procedure TFrmBrg24.BitBtn3Click(Sender: TObject);
begin
//cari(MyQuery1,'select * from tbl_dataobat WHERE nm_obat like '+
//QuotedStr('%'+EdCarinama.Text+'%')+
//' OR barcode like '+ QuotedStr('%'+EdCarinama.Text+'%')+
//' OR nobatch like '+ QuotedStr('%'+EdCarinama.Text+'%')+
//' ORDER BY nm_obat');

try
  // Step 1: Assign connection and prepare the stored procedure
  mySPcari.Connection := DmModul.con1;
  mySPcari.Close;
  mySPcari.StoredProcName := 'SP_AmbilBarangStokTGL';
  mySPcari.PrepareSQL;

  // Step 2: Set parameters for the stored procedure
  mySPcari.ParamByName('dtgl1').AsDate := dtpTglStok.Date; // Passing the start date
  //mySPcari.ParamByName('tgl2').AsDate := dtp_akhir.Date; // Passing the end date

  // Check if parameters are not empty before assigning
//  if EGudang.Text <> '' then
//    mySPcari.ParamByName('cari2').AsString := EGudang.Text;
//
  //if EdCarinama.Text <> '' then
    mySPcari.ParamByName('cari').AsString := EdCarinama.Text;

  // Step 3: Execute the stored procedure
  mySPcari.ExecProc;

  // Step 4: Check if data was returned
  if mySPcari.RecordCount = 0 then
    ShowMessage('Tgl Stok tidak ada .')
  else
  begin
    // Step 5: Set the DataSource to the dataset returned by the stored procedure
    dscari.Dataset := mySPcari;  // dsBarang is the DataSource linked to mySPcari

    // Step 6: Bind the DataSource to CRDBGrid1 to display the data
    crdbgrd1.DataSource := dscari;

    // Step 7: Clear previous columns and set new ones dynamically
    crdbgrd1.Columns.Clear;
    DBGridAddColumn(crdbgrd1,'kd_obat','Kode',120,1);
    DBGridAddColumn(crdbgrd1,'nm_obat','Nama',280,1);
    DBGridAddColumn(crdbgrd1,'idrak','rak',30,1);
    DBGridAddColumn(crdbgrd1,'sat_obat','satuan',80,1);
    DBGridAddColumn(crdbgrd1,'exp_obat','Tgl. ED',80,2);
    DBGridAddColumn(crdbgrd1,'hrgbeli_obat','@Hrg Beli',70,3);
    DBGridAddColumn(crdbgrd1,'hrg_obat','@Hrg Jual',70,3);
    DBGridAddColumn(crdbgrd1, 'Stok', 'Stok', 70, 3);
//    DBGridAddColumn(CRDBGrid1,'kd_obat','Kode',120,1);
//    DBGridAddColumn(CRDBGrid1,'nm_obat','Nama',280,1);
//    DBGridAddColumn(CRDBGrid1,'idrak','rak',30,1);
//    DBGridAddColumn(CRDBGrid1,'sat_obat','satuan',80,1);
//    DBGridAddColumn(CRDBGrid1,'exp_obat','Tgl. ED',80,2);
//    DBGridAddColumn(CRDBGrid1,'hrgbeli_obat','@Hrg Beli',80,3);
//    DBGridAddColumn(CRDBGrid1,'hrg_obat','@Hrg Jual',80,3);
//    DBGridAddColumn(CRDBGrid1, 'Stok', 'Stok', 70, 3);
//    DBGridAddColumn(CRDBGrid1, 'kode_brg', 'Kode', 100, 1);
//    DBGridAddColumn(CRDBGrid1, 'nama_barang', 'Nama', 280, 1);
//    DBGridAddColumn(CRDBGrid1, 'satuan', 'Satuan', 70, 1);
//    DBGridAddColumn(CRDBGrid1, 'bidang_brg', 'Bidang', 70, 2);
//    DBGridAddColumn(CRDBGrid1, 'gudang', 'Gudang', 70, 2);
//    DBGridAddColumn(CRDBGrid1, 'stok', 'Stok', 70, 3);
  end;

  // Step 8: Close the stored procedure after execution
  //mySPcari.Close;

except
  on E: Exception do
  begin
    ShowMessage('Error occurred: ' + E.Message);
  end;
end;
//CRDBGrid1.Columns.Clear;
//DBGridAddColumn(CRDBGrid1,'kd_obat','Kode',120,1);
//DBGridAddColumn(CRDBGrid1,'nm_obat','Nama',280,1);
//DBGridAddColumn(CRDBGrid1,'idrak','rak',30,1);
//DBGridAddColumn(CRDBGrid1,'sat_obat','satuan',80,1);
//DBGridAddColumn(CRDBGrid1,'exp_obat','Tgl. ED',80,2);
//DBGridAddColumn(CRDBGrid1,'hrgbeli_obat','@Hrg Beli',80,3);
//DBGridAddColumn(CRDBGrid1,'hrg_obat','@Hrg Jual',80,3);

end;

procedure TFrmBrg24.BitBtn4Click(Sender: TObject);
begin
if FrmAwal=nil then
     FrmAwal:=TFrmAwal.Create(Application);
     FrmAwal.Show;
     //FrmAwal.BringToFront;
end;

procedure TFrmBrg24.BitBtn5Click(Sender: TObject);
begin
//FrmUsulan
if FrmUsulan=nil then
     FrmUsulan:=TFrmUsulan.Create(Application);
     FrmUsulan.Show;
end;

procedure TFrmBrg24.BitBtn6Click(Sender: TObject);
begin
//FrmAktif
if FrmAktif=nil then
     FrmAktif:=TFrmAktif.Create(Application);
     FrmAktif.Show;
end;

procedure TFrmBrg24.BitBtn7Click(Sender: TObject);
begin
//FrmUsulan
if FrmImportMasterBrg=nil then
     FrmImportMasterBrg:=TFrmImportMasterBrg.Create(Application);
     FrmImportMasterBrg.Show;
end;

procedure TFrmBrg24.EdCarinamaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    BitBtn3Click(Sender);
    end;
end;



procedure TFrmBrg24.EditClick(Sender: TObject);
begin
btEditClick(Sender);
end;

procedure TFrmBrg24.utup1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmBrg24.ptengahClick(Sender: TObject);
begin
//Left:=round(futama.Width/2-Width/2);
end;

procedure TFrmBrg24.FormCreate(Sender: TObject);

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
  //bidang_barang;
  cbo_satuan;
  cbo_satuanjual;
  dtp_ed.date:= now;
  dtp_ed.ShowCheckbox :=true;
  dtp_ed.Checked := false;
  dtp_ed.Color := clred;
  BitBtn3Click(Sender);
  Tampil_combo_Rak;
  { dtpTglAwal }
  dtpTglAwal.date:= now;
  dtpTglAwal.ShowCheckbox :=true;
  dtpTglAwal.Checked := false;
  dtpTglAwal.Color := clred;
  dtptglbrgawal.date:= now;
  //dtpTglStok.date:= now;


  AdvSmoothPanel1.SetComponentStyle(tsWindows8);

  

end;

procedure TFrmBrg24.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//case Key of
//VK_LEFT : ShowMessage('Key Left');
//VK_RIGHT: ShowMessage('Key Right');
//VK_UP : ShowMessage('Key Up');
//VK_DOWN : ShowMessage('Key Down');
//VK_F1 : ShowMessage('Key F1');
////...
//end;
end;

procedure TFrmBrg24.EBarcodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    eNo_rak.SetFocus;
    end;
end;

procedure TFrmBrg24.EdCarinamaClick(Sender: TObject);
begin
//EdCarinama.Text:='';
end;

procedure TFrmBrg24.CRDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z'] then
    begin
    pcari.Visible:=true;
    EKodeBrg.SetFocus;
    EKodeBrg.Text:=key;
    end;
end;

procedure TFrmBrg24.CRDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_delete then
    begin
    btHapusClick(Sender);
    end;
end;

procedure TFrmBrg24.btresetClick(Sender: TObject);
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

procedure TFrmBrg24.MyQuery1AfterOpen(DataSet: TDataSet);
begin
//TFloatField(MyQuery1.FieldByName('gaji_pokok')).DisplayFormat:='#,#0;(#,#0);#,#0';
end;

procedure TFrmBrg24.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=true then
    begin

      if btsimpan.Caption = 'Update' then
      begin
       ShowMessage( 'tidak dapat Nomor Baru ini data Edit: ' + EKodeBrg.Text );
       CheckBox1.Visible := False;
      exit;
      end;

    EKodeBrg.Text:=TampilOto(DmModul.addscari,'kd_obat','select * from tbl_dataobat','BR',6);
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

procedure TFrmBrg24.crdbgrd1DblClick(Sender: TObject);
//var
//  Fisik, Masuk, Retur: TStringList;
begin
  // Make sure the form component is visible
  Pn_Editbrg.Visible := True;

  // Create instances of TStringList for storing data
//  Fisik := TStringList.Create;
//  Masuk := TStringList.Create;
//  Retur := TStringList.Create;

  // Exit if the dataset does not contain records
  if mySPcari.RecordCount <= 0 then
    exit;

//  // Retrieve data from dataset and populate controls
  cxKodeBarang.Text := mySPcari['kd_obat'];
  cxNamaBarang.Text := mySPcari['nm_obat'];
  cxStok.Caption := mySPcari['Stok'];
  cxstokSekarang.Text := mySPcari['Stok'];

memostok.Clear;
memostok.Lines.Add('Opname :' + mySPcari.FieldByName('jml_fisik').AsString);
//memostok.Lines.Add('');
memostok.Lines.Add('Masuk :' + mySPcari.FieldByName('jml_tambah').AsString);
//memostok.Lines.Add('');
memostok.Lines.Add('Penjualan :' + mySPcari.FieldByName('jml_keluar').AsString);
//memostok.Lines.Add('');
memostok.Lines.Add('Retur Beli :' + mySPcari.FieldByName('jml_rbl').AsString);
//memostok.Lines.Add('');
memostok.Lines.Add('Retur Jual :' + mySPcari.FieldByName('jml_rjual').AsString);
//  // Add the relevant information to the TStringList objects
//  Fisik.Add('Opname ' + mySPcari['jml_fisik']);
//  Masuk.Add('Masuk ' + mySPcari['jml_tambah']);
//  //Retur.Add('Retur beli: ' + mySPcari['jml_rbl'] + ' Retur Jual: ' + mySPcari['jml_rjual']);

//memostok.Clear;
//
//memostok.Lines.Add('Data Fisik:');
//if not mySPcari.FieldByName('jml_fisik').IsNull then
//  memostok.Lines.Add(mySPcari.FieldByName('jml_fisik').AsString)  // Accessing the value as string
//else
//  memostok.Lines.Add('Data not available');  // Handle NULL or empty field
//
//memostok.Lines.Add('');
//
//memostok.Lines.Add('Data Masuk:');
//if not mySPcari.FieldByName('jml_tambah').IsNull then
//  memostok.Lines.Add(mySPcari.FieldByName('jml_tambah').AsString)  // Accessing the value as string
//else
//  memostok.Lines.Add('Data not available');  // Handle NULL or empty field
//
//memostok.Lines.Add('');

//  // Free the TStringList objects after use to prevent memory leaks
//  Fisik.Free;
//  Masuk.Free;
//  Retur.Free;

    //tampildata;
    cxUpdatestok.SetFocus;

    // Menghapus objek setelah selesai digunakan
//  Fisik.Free;
//  Masuk.Free;
//  Retur.Free;

end;


procedure TFrmBrg24.crdbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  stokValue: Integer;
begin
  // Ambil nilai stok dari dataset
  stokValue := crdbgrd1.DataSource.DataSet.FieldByName('stok').AsInteger;

  // Atur warna berdasarkan nilai stok
  if stokValue < 0 then
  begin
    crdbgrd1.Canvas.Brush.Color := clWebRed; // Warna latar belakang merah
    crdbgrd1.Canvas.Font.Color := clWhite; // Warna teks putih
  end
  else if stokValue = 0 then
  begin
    crdbgrd1.Canvas.Brush.Color := clWebLightCoral; // Warna latar kuning
    crdbgrd1.Canvas.Font.Color := clBlack; // Warna teks hitam
  end
  else if stokValue > 0 then
  begin
    crdbgrd1.Canvas.Brush.Color := clMoneyGreen; // Warna latar hijau
    crdbgrd1.Canvas.Font.Color := clBlack; // Warna teks hitam
  end;

  // Gambar ulang sel dengan warna yang ditentukan
  crdbgrd1.Canvas.FillRect(Rect);
  crdbgrd1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TFrmBrg24.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    btsimpan.Click;
    end;
end;

procedure TFrmBrg24.ENamaBarangKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    cbb_satuan.SetFocus;
    end;
end;

procedure TFrmBrg24.eNo_rakKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    ehrgbeli.SetFocus;
    end;
end;

procedure TFrmBrg24.PBNumEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    //Edit3.SetFocus;
    end;
end;

procedure TFrmBrg24.CRDBGrid1GetCellParams(Sender: TObject; Field: TField;
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


Procedure TFrmBrg24.TampilData;
  var
    q2 : TMyQuery;
  Begin
   q2 := TMyQuery.Create(nil);
  try
  q2.Connection := DmModul.con1;
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text :='select * from tbl_dataobat where kd_obat='+QuotedStr(EKodeBrg.Text)+'';
  q2.Open;

  if q2.RecordCount > 0 then
  begin

  if PnOperasi.Caption='Ubah Data' then
   begin
    //    AktifControl(Self,PnInput,True);
    //    AktifControl(Self,Pn_list,True);
    //BtnProses.Enabled:=True;
    end;

    //aktif
    if q2.FieldByName('aktif').AsString = '1' then
      begin
        cb_aktif.Checked := True;
        cb_aktif.Color := clMoneyGreen;
      end
      else
      begin
        cb_aktif.Checked := false;
        cb_aktif.Color := clred;
      end;

    EKodeBrg.Text:=q2.FieldByName('kd_obat').AsString;
    ENamaBarang.Text:=q2.FieldByName('nm_obat').AsString;
    cboStatusJual.Text:=q2.FieldByName('status_jual').AsString;
    Ednobatch.Text:=q2.FieldByName('nobatch').AsString;
    cbb_satuan.Text:=q2.FieldByName('sat_obat').AsString;
    cbosatjual.Text:=q2.FieldByName('sat_jual').AsString;
    eBarcode.Text:=q2.FieldByName('barcode').AsString;
    Edmargin.Text:=q2.FieldByName('margin').AsString;
    eNo_rak.EditValue:=q2.FieldByName('idrak').AsString;
    eHrgJual.Text:=q2.FieldByName('hrg_obat').AsString;
    eHrgBeli.Text:=q2.FieldByName('hrgbeli_obat').AsString;

    //dtp_buat.date:=q2.FieldByName('tgl_masuk').AsDateTime;

    //tanggal SPK
    if VarIsNull(q2['exp_obat']) then
      begin
    dtp_ed.ShowCheckbox :=true;
    dtp_ed.Checked := false;
    dtp_ed.Color := clred;
    end
   else
      begin
      dtp_ed.Date:=q2.FieldByName('exp_obat').AsDateTime;
      dtp_ed.Color := clMenu;
    end;
    //cxl_bidang.EditValue:=q2.FieldByName('bidang_brg').AsString;

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


procedure TFrmBrg24.ehrgbeliChange(Sender: TObject);
begin
 //EGudang.Text := FMenu.dxStatusBar1.Panels[2].Text;
 formatrupiah(eHrgBeli);
end;

procedure TFrmBrg24.ehrgbeliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    ehrgjual.SetFocus;
    end;
end;

procedure TFrmBrg24.ehrgjualChange(Sender: TObject);
begin
formatrupiah(eHrgJual);
end;

procedure TFrmBrg24.ehrgjualKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    btsimpanClick(Sender);
    end;
end;

procedure TFrmBrg24.btn_ruanganPropertiesButtonClick(Sender: TObject;
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

procedure TFrmBrg24.crGridDrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure TFrmBrg24.dtp_edKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    ebarcode.SetFocus;
    end;
end;

procedure TFrmBrg24.BtnKartuClick(Sender: TObject);
var
  ht,kodecari:string;
begin
if mySPcari.RecordCount<=0 then exit;
  kodecari := mySPcari['kd_obat'];
  ht:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/kartu_barang_proses.php?cari='+kodecari;
  //FrmBrowserLink.Show;
  //FrmBrowserLink.TampilBrowser(ht);

  //ShellExecute(Handle,'open',PChar(ht),'','',SW_NORMAL);

end;

procedure TFrmBrg24.btnlabarugiClick(Sender: TObject);
var
  ht2,kodecari1:string;
begin
if mySPcari.RecordCount<=0 then exit;
  kodecari1 := mySPcari['kd_obat'];
  //ht1:='http://192.168./gudang22/modul/laporan/lap_bulanan/kartu_barang_pdf_delphi.php?cari='+kodecari1;
  ht2:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/medika_native/cetak/cetak_labarugi.php?cari='+kodecari1;
  ShellExecute(Handle,'open',PChar(ht2),'','',SW_NORMAL);
  //FrmBrowserLink.Show;
  //FrmBrowserLink.TampilBrowser(ht2);

end;

procedure TFrmBrg24.btnsaveClick(Sender: TObject);
begin

if MessageDlg('Update Stok Opname Harian'+#13+#10+cxNamaBarang.Text+#13+#10+
        'akan di edit Stok, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin
  //if cekKosong(cxUpdatestok,'Update Stok Blm di isi ')=true then exit;

  proses('update detail_opname_harian set '+
    'jml_opname_hr='+QuotedStr(cxUpdatestok.Text)+','+
    'tgl_opname_hr = '+ QuotedStr(FormatDateTime('yyyy/mm/dd',now))+
    'where kode_brg='+QuotedStr(cxKodeBarang.Text) );
  Pn_Editbrg.Visible:=False;
  ShowMessage('Update Stok Harian berhasil : '+cxNamaBarang.Text);
  //BitBtn3Click(Sender);

end;
end;
procedure TFrmBrg24.Btn_labelClick(Sender: TObject);
var
  ht1,kodecari1:string;
begin
if mySPcari.RecordCount<=0 then exit;
  kodecari1 := mySPcari['kd_obat'];
  //ht1:='http://192.168./gudang22/modul/laporan/lap_bulanan/kartu_barang_pdf_delphi.php?cari='+kodecari1;
  ht1:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/medika_native/cetak/label_barang_cari.php?cari='+kodecari1;
  //FrmBrowserLink.Show;
  //FrmBrowserLink.TampilBrowser(ht1);

  //ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);

end;

procedure TFrmBrg24.KartuBarang1Click(Sender: TObject);
begin
BtnKartuClick(Sender);
end;

procedure TFrmBrg24.Label4Click(Sender: TObject);
begin
Btn_labelClick(Sender);
end;

procedure TFrmBrg24.LihatStok1Click(Sender: TObject);
var
  ht2,kodecari2:string;
begin
if mySPcari.RecordCount<=0 then exit;
  kodecari2 := mySPcari['kd_obat'];
  ht2:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/databarang.php?kode='+kodecari2;
  ShellExecute(Handle,'open',PChar(ht2),'','',SW_NORMAL);


end;

procedure TFrmBrg24.cbb_satuanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    dtp_ed.SetFocus;
    end;
end;

Procedure TFrmBrg24.cbo_satuan;
var
    qcom1 : TMyQuery;
begin
    try
      qcom1 := TMyQuery.Create(nil);
      qcom1.Connection := DmModul.con1;
      qcom1.Close;
      qcom1.SQL.Text:=
      'SELECT sat_obat FROM	tbl_dataobat GROUP BY sat_obat ORDER BY sat_obat';
      qcom1.Open;
      cbb_satuan.Items.Clear;
while not qcom1.Eof do
begin
cbb_satuan.Items.Add(qcom1.FieldByName('sat_obat').AsString);
qcom1.Next;
end;

finally
qcom1.Close;
qcom1.Free;
end;
end;


Procedure TFrmBrg24.cbo_satuanjual;
var
    qcom11 : TMyQuery;
begin
    try
      qcom11 := TMyQuery.Create(nil);
      qcom11.Connection := DmModul.con1;
      qcom11.Close;
      qcom11.SQL.Text:=
      'SELECT sat_jual FROM	tbl_dataobat GROUP BY sat_jual ORDER BY sat_jual';
      qcom11.Open;
      cbosatjual.Items.Clear;
while not qcom11.Eof do
begin
cbosatjual.Items.Add(qcom11.FieldByName('sat_jual').AsString);
qcom11.Next;
end;

finally
qcom11.Close;
qcom11.Free;
end;
end;

procedure TFrmBrg24.cetakKartuPDF1Click(Sender: TObject);
var
  ht3,kodecari:string;
begin
if MyQuery1.RecordCount<=0 then exit;
  kodecari := MyQuery1['kd_obat'];
  ht3:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/kartu_barang_pdf24.php?cari='+kodecari;
  ShellExecute(Handle,'open',PChar(ht3),'','',SW_NORMAL);

end;

Procedure TFrmBrg24.KosongTex(Kunci:Boolean);
var
j:Integer;

Begin
  if Kunci=True then
  begin
  EKodeBrg.Text := '';
  EBarcode.Text := '';
  eNo_rak.Text := '';
  ENamaBarang.Text := '';
  cbb_satuan.Text := '';
  cbosatjual.Text := '';
  eHrgjual.Text := '0';
  eHrgBeli.Text := '0';
  edStokAwal.Text := '0';

  dtp_ed.ShowCheckbox :=true;
  dtp_ed.Checked := false;
  dtp_ed.Color := clred;
  CheckBox1.Visible := True;
  cb_aktif.Checked := false;
  //ednokwi.Text:='';

  //tambahan Bayar

//  tgl_bayar.ShowCheckbox :=true;
//  tgl_bayar.Checked := false;
//  tgl_bayar.Color := clred;
//  chk2.Checked := False;
//  aturgrid;
 end;
end;

Procedure TFrmBrg24.Tampil_combo_Rak;
 var
 q6 : TMyQuery;

begin

  q6 := TMyQuery.Create(nil);
  try
  q6.Connection := DmModul.con1;
  q6.Active := false;
  q6.SQL.Clear;
  q6.SQL.Text := 'Select * FROM ref_rak order by rak_nama asc';
  //+
   //' where gudang = ' + QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
   //' AND aktif =1 order by NM_p';

  //q2.SQL.Text := 'Select nip, CONCAT(gol, " , ", nm_gol) as nm  from r_gol';
  q6.Open;
    if q6.RecordCount > 0 then
  begin
  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString
  MyDS2.DataSet := q6;
  eNo_rak.Properties.ListSource := MyDS2;
  eNo_rak.Properties.ListOptions.ShowHeader := False;
  eNo_rak.Properties.ListFieldNames := 'rak_nama';
  eNo_rak.Properties.KeyFieldNames := 'kd_rak';
  end;
   finally
  //  q2.Close;
  //  q2.Free;
  end;
  end;

  procedure TFrmBrg24.DisplaySettings;
var
  Qsetting: TMyQuery;
begin
  Qsetting := TMyQuery.Create(nil);
  try
    Qsetting.Connection := DmModul.con1;
    Qsetting.Active := False;
    Qsetting.SQL.Clear;
    Qsetting.SQL.Text := 'SELECT * FROM setting_tanggal WHERE aktif = 1';
    Qsetting.Open;

    if not Qsetting.Eof then
    //dxStatusBar1.Panels[6].Text:=formatdatetime('yyyy-mm-dd',Qsetting.FieldByName('tgl_awal').AsDateTime);
    dtpTglStok.Date := Qsetting.FieldByName('tgl_awal').AsDateTime;
  finally
    Qsetting.Close;
    Qsetting.Free;
  end;
end;



end.
