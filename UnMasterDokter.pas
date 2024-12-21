unit UnMasterDokter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, AdvSmoothPanel, Buttons, Grids, DBGrids, CRGrid,nuest,
  Menus, DB, MemDS, DBAccess, MyAccess;

type
  TFrmMasterDokter = class(TForm)
    AdvSmoothPanel2: TAdvSmoothPanel;
    Panel1: TPanel;
    CRDBGrid1: TCRDBGrid;
    btEdit: TBitBtn;
    btsimpan: TBitBtn;
    btHapus: TBitBtn;
    pm1: TPopupMenu;
    Edit: TMenuItem;
    btnhapus: TMenuItem;
    utup1: TMenuItem;
    pcari: TPanel;
    Label8: TLabel;
    edtEdCarinama: TEdit;
    BitBtn3: TBitBtn;
    Query1: TMyQuery;
    MyDS1: TMyDataSource;
    tmr1: TTimer;
    Label1: TLabel;
    edKode: TEdit;
    Label2: TLabel;
    edtENama: TEdit;
    Label3: TLabel;
    edalamat: TEdit;
    Label7: TLabel;
    edhp: TEdit;
    Label9: TLabel;
    edemail: TEdit;
    CheckBox1: TCheckBox;
    PnOperasi: TPanel;
    lbstatus: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure EditClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btsimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure btHapusClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure utup1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Procedure KosongTex(Kunci:Boolean);
  public
    { Public declarations }
  end;

var
  FrmMasterDokter: TFrmMasterDokter;

implementation

uses unMenu, UF_setting,UnModul,UF_dbsql,UnCarisp;

{$R *.dfm}

procedure TFrmMasterDokter.BitBtn3Click(Sender: TObject);
begin
cari(Query1,'select * from tbl_dokter WHERE nama_dokter like '+
QuotedStr('%'+edtEdCarinama.Text+'%')+
////' OR barcode like '+ QuotedStr('%'+edtEdCarinama.Text+'%')+
////' OR nobatch like '+ QuotedStr('%'+edtEdCarinama.Text+'%')+
' ORDER BY nama_dokter');

//cari(Query1,'select * from tbl_dokter ');

DBGridAddColumn(CRDBGrid1,'iddokter','Kode',60,1);
DBGridAddColumn(CRDBGrid1,'nama_dokter','Nama',200,1);
DBGridAddColumn(CRDBGrid1,'alamat_dokter','Alamat',160,1);
DBGridAddColumn(CRDBGrid1,'hp_dokter','No. HP',120,1);
DBGridAddColumn(CRDBGrid1,'email','Email',160,1);

end;


Procedure TFrmMasterDokter.KosongTex(Kunci:Boolean);
var
j:Integer;

Begin
  if Kunci=True then
  begin
  EdKode.Text := '';
  edtENama.Text := '';
  edalamat.Text := '';
  edhp.Text := '';
  edemail.Text := '';
//  cbb_satuan.Text := '';
//  eHrgjual.Text := '0';
//  eHrgBeli.Text := '0';

//  dtp_ed.ShowCheckbox :=true;
//  dtp_ed.Checked := false;
//  dtp_ed.Color := clred;
//  CheckBox1.Visible := True;

 end;
end;

procedure TFrmMasterDokter.tmr1Timer(Sender: TObject);
begin
PnOperasi.Font.Color := Trunc(clBLUE*random);
end;

procedure TFrmMasterDokter.utup1Click(Sender: TObject);
begin
close;
end;

procedure TFrmMasterDokter.btEditClick(Sender: TObject);
begin
  //CheckBox1.Visible := false;
  PnOperasi.Caption := 'Ubah Data';
if btEdit.Caption='Batal' then
    begin
    //btresetClick(Sender);
    KosongTex(True);
    EdKode.Enabled := true;
    pnoperasi.Caption := 'Tambah Data';
    btsimpan.Caption :='Simpan';
    btEdit.Caption :='Edit'
    end
    else
    begin

    if Query1.RecordCount<=0 then exit;
    EdKode.Enabled := False;
    CheckBox1.Visible := false;

    EdKode.Text:=Query1['iddokter'];
    edtENama.Text:=Query1['nama_dokter'];
    edalamat.Text:=Query1['alamat_dokter'];
    edhp.Text:=Query1['hp_dokter'];
    edemail.Text:=Query1['email'];

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

    btsimpan.Caption:='Update';
    btHapus.Enabled:=false;
    //btcari.Enabled:=false;
    btEdit.Caption:='Batal';
    edtENama.SetFocus;
    //CheckBox1.Visible := True;

    end
    // tambah tampil
end;

procedure TFrmMasterDokter.btHapusClick(Sender: TObject);
var  sql:string;
begin
if Query1.RecordCount<=0 then exit;
//  if MessageDlg('Data dengan'+#13+#10+Edkode.Text+#13+#10+
//          'akan di Hapus, hati-hati?',
//          mtWarning, [mbOK, mbCancel], 0) = mrOK then
//  begin

  if cari('select * from detail_penjualan where kode_brg='+
    QuotedStr(Query1['iddokter'])+'')>0 then
    begin
    ShowMessage('data barang pada Kode ini sebagian telah Proses Masuk'+#13+
    'untuk melakukan Edit data Masuk, Hapus dulu data masuk');
    exit;
    end;

    hapus('tbl_dokter','iddokter',Query1['iddokter'],'Yakin akan menghapus data dengan nama : "'+Query1['nama_dokter']+'" ?');
    ShowMessage('data Dokter pada Kode ini '+#13+
    'Sudah Di hapus : '+Query1['nama_dokter']);
     BitBtn3Click(Sender);
 // sql := 'delete from tbl_dokter where iddokter='+QuotedStr(Edkode.Text);

 {
 if MessageDlg('Data dengan tetap hapus'+#13+#10+Edkode.Text+#13+#10+
        'akan di Hapus ???, hati-hati?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
 begin
 ExecSQL1(sql); //simpan 1
 //ExecSQL1(sql1); //simpan 1
 lbstatus.Caption := 'hapus data' + Edkode.Text;
 end;
  }
//end;
end;

procedure TFrmMasterDokter.btnhapusClick(Sender: TObject);
begin
btHapusClick(Sender);
end;

procedure TFrmMasterDokter.btsimpanClick(Sender: TObject);
var
sql,tgljatuhtempo,tgled:string;
cborak:string;
hrgbeli,hrgjual:real;
qv : TMyQuery;
begin

  if MessageDlg('Data dengan'+#13+#10+EdKode.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin

if cekKosong(EdKode,'Kode belum di isi')=true then exit;
if cekKosong(edtENama,'nama Dokter belum di isi')=true then exit;
if cekKosong(edhp,'No HP belum di isi')=true then exit;



if btsimpan.Caption='Simpan' then




  begin
  //if ceksama(MyQuery1,'kd_obat',(EKodeBrg,'Kode sudah ada','')=true then exit;
  qv := TMyQuery.Create(nil);
  qv.Connection := DmModul.con1;
    qv.SQL.Clear;
    qv.SQL.Text := 'Select * from tbl_dataobat where kd_obat = '+QuotedStr(EdKode.Text)+'';
    qv.Open;
    if qv.RecordCount > 0 then
      begin

        if MessageDlg('Kode Sudah ada'+#13+#10+EdKode.Text+#13+#10+
        'Buat Nomor Baru (kode baru), ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
       //EKodeBrg.Text:=GetNoBBK;
       CheckBox1.Checked:=true;
       end;
        exit;
      end;


  proses('insert into tbl_dokter(iddokter,nama_dokter,alamat_dokter,hp_dokter,email,tgl_create)values('+
  QuotedStr(EdKode.Text)+','+
  QuotedStr(edtENama.Text)+','+
  QuotedStr(edalamat.Text)+','+
  QuotedStr(edhp.Text)+','+
  QuotedStr(edemail.Text)+','+
  QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+')');

  //QuotedStr(clearDot(ehrgbeli.Text))+')');
  ShowMessage('Data Tambah berhasil : '+edtENama.Text);
  KosongTex(True);
  BitBtn3Click(Sender);
  //CheckBox1.Visible := True;
  end
  else
  begin
  proses('update tbl_dokter set '+
    'nama_dokter='+QuotedStr(edtENama.Text)+
    ',alamat_dokter='+QuotedStr(edalamat.Text)+
    ',hp_dokter='+QuotedStr(edhp.Text)+
    ',email='+QuotedStr(edemail.Text)+
   ' where iddokter='+QuotedStr(EdKode.Text) );

    //', gaji_pokok='+QuotedStr(FloatToStr(PBNumEdit1.Value))+
    //',ket='+QuotedStr(Edit3.Text)+
  ShowMessage('Update berhasil : '+edtENama.Text);
  BitBtn3Click(Sender);
  KosongTex(True);
  pnoperasi.Caption := 'Tambah Data';
  btsimpan.Caption :='Simpan';
  EdKode.Enabled := true;
  //CheckBox1.Visible := True;
  end;
//btresetClick(Sender);
if lbstatus.Caption='Tambah' then Close;
CheckBox1.Visible := True;
//if fcarijabatan<>nil then
//refreshAdo(fcariJabatan.MyQuery);
 end; //end tanya

end;

procedure TFrmMasterDokter.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=true then
    begin

      if btsimpan.Caption = 'Update' then
      begin
       ShowMessage( 'tidak dapat Nomor Baru ini data Edit: ' + EdKode.Text );
       CheckBox1.Visible := False;
      exit;
      end;

    EdKode.Text:=TampilOto(DmModul.addscari,'iddokter','select * from tbl_dokter','DR',4);
    EdKode.ParentColor:=true;
    //ActiveControl:=Edit2;
    end
    else
    begin
    EdKode.Text:='';
    //ActiveControl:=Edit1;
    //Edit1.ParentColor
    EdKode.ParentColor:=false;
    EdKode.Color:=clWindow;
    EdKode.Enabled:=false;
    end;
end;

procedure TFrmMasterDokter.EditClick(Sender: TObject);
begin
btEditClick(Sender);
end;

procedure TFrmMasterDokter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
FrmMasterDokter:=nil;
end;

procedure TFrmMasterDokter.FormShow(Sender: TObject);
begin
edtENama.SetFocus;
PnOperasi.Caption := 'Tambah Data';
BitBtn3Click(sender);
end;

end.
