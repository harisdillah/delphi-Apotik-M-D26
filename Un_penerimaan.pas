unit Un_penerimaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, ToolWin, Buttons,DBTables, DBAccess, MyAccess,
  MemDS, ekbasereport, ekrtf, EXLReportExcelTLB, EXLReportBand, EXLReport,
  DB, Mask, Grids, BaseGrid,
  AdvGrid, frxClass, frxDBSet, frxExportPDF, frxExportXLS, frxDesgn;

type
  Tfrm_penerimaan = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PnOperasi: TLabel;
    BitBtn1: TBitBtn;
    TabSheet2: TTabSheet;
    CoolBar2: TCoolBar;
    Panel1: TPanel;
    Label4: TLabel;
    Panel3: TPanel;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    btnproses: TBitBtn;
    btnbatal: TBitBtn;
    btnhapus: TBitBtn;
    Label23: TLabel;
    Panel4: TPanel;
    Ed_no_cetak: TEdit;
    BitBtn3: TBitBtn;
    btn_cetakbri: TBitBtn;
    ekrtf2: TEkRTF;
    BTN_XLS: TBitBtn;
    EXLReport1: TEXLReport;
    GroupBox3: TGroupBox;
    BitBtn10: TBitBtn;
    BitBtn12: TBitBtn;
    grid1: TAdvStringGrid;
    Label6: TLabel;
    ed_disk: TEdit;
    ed_Tjml: TEdit;
    Label17: TLabel;
    BitBtn8: TBitBtn;
    frxdbdtst1: TfrxDBDataset;
    BitBtn9: TBitBtn;
    MyQuery1: TMyQuery;
    Label22: TLabel;
    Label25: TLabel;
    ed_t2: TEdit;
    btn_hitung: TBitBtn;
    Label26: TLabel;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    Ed_no: TEdit;
    BtnCari: TBitBtn;
    dtgl_buat: TDateTimePicker;
    Ed_nofaktur: TEdit;
    Label20: TLabel;
    Label18: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Ed_total: TEdit;
    con1: TMyConnection;
    Panel5: TPanel;
    frxReport1: TfrxReport;
    frxdsgnr1: TfrxDesigner;
    BitBtn6: TBitBtn;
    Label2: TLabel;
    Pg_Show: TPageControl;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    ListView4: TListView;
    EdPcari: TEdit;
    Button3: TButton;
    Label9: TLabel;
    cbo_cv: TComboBox;
    Label19: TLabel;
    Ed_t1: TEdit;
    Ed_pajak: TEdit;
    Label28: TLabel;
    dtgl_jth_tempo: TDateTimePicker;
    BitBtn7: TBitBtn;
    Ed_nmcv: TEdit;
    PnInput: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    Label31: TLabel;
    ed_nama: TEdit;
    ed_jml: TEdit;
    Ed_hrg: TEdit;
    cbo_sat: TEdit;
    Edit1: TEdit;
    ed_kode: TEdit;
    Label5: TLabel;
    dtgl_faktur: TDateTimePicker;
    chk_pajak: TCheckBox;
    ed_ddisk: TEdit;
    Ed_dndisk: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure BtnCariClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnprosesClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btn_cetakbriClick(Sender: TObject);
    procedure BTN_XLSClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn_TdetailClick(Sender: TObject);
    procedure btn_hgridClick(Sender: TObject);
    procedure grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure e(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure btn_hitungClick(Sender: TObject);
    procedure Ed_totalChange(Sender: TObject);
    procedure EdPcariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPcariChange(Sender: TObject);
    procedure ListView4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListView4KeyPress(Sender: TObject; var Key: Char);
    procedure ed_kodeChange(Sender: TObject);
    procedure ed_jmlKeyPress(Sender: TObject; var Key: Char);
    procedure grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Ed_kodeExit(Sender: TObject);
    procedure Ed_kodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure cbo_cvChange(Sender: TObject);
    procedure Ed_t1Change(Sender: TObject);
  private
    { Private declarations }
//  procedure combo1;
  procedure TampilData;
  procedure KosongTex(Kunci: Boolean);
  procedure buatno;
  procedure Total;
  procedure Aturgrid;
  procedure deleterow(mg:TStringGrid; ARow:integer);
  Procedure hitung_tran;
 //   procedure RightEdit(e:TEdit);
 //   procedure CenterEdit(e:TEdit);

  public
    { Public declarations }
    procedure caribarang(ktkunci:string);
  end;

var
  frm_penerimaan: Tfrm_penerimaan;
  sql,sql1,sql2 : string;
  tambah: boolean;
   FCounter :integer;
  //var detail/
  counter,hapus_baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	i: Extended;
	s,m1,m2,m3,m4,ppn: String;
  tmp1,tmp2,tmp3:integer;
  // jml,hrgd,n_t1d,ddisk,n_diskd
  // ,n_t2d,n_pajakd :real;
   a1,a2,a3,a4,a5,a6,a7 : real;
   qty,jml,harga,total_harga,disk,total2 : real ; // :integer;
implementation

uses UnCari,UnModul, UnCari_com,UF_setting,UF_terbilang,UF_dbsql, UnCari_all,
  Un_px_int, UnMenu;

{$R *.dfm}


procedure Tfrm_penerimaan.caribarang(ktkunci:string);
var
 dt:TListItem;
 QBarangDDL : TMyQuery;

begin

 try
    QBarangDDL:=TMyQuery.create(nil);
    QBarangDDL.Connection := DmModul.con1;

 with QBarangDDL do
 begin
  Close;
  SQL.Text:='SELECT kode,nama_barang,harga_jual FROM m_barang';
  SQL.Text:=SQL.Text+' WHERE nama_barang LIKE '+''''+'%'+
  EdPcari.Text+'%'+''''+' OR kode LIKE '+''''+'%'+
  EdPcari.Text+'%'+''''+' ORDER BY nama_barang ASC limit 100';
  Open;
  //ShowMessage(SQL.Text);
  ListView4.Clear;
  if not IsEmpty then
  begin
     while not Eof do
     begin
      dt:=ListView4.Items.Add;
      //dmmodul.dataRow(QBarangDDL.FieldByName('kode'),'-');
      dt.Caption:=(dmmodul.dataRow(QBarangDDL.FieldByName('kode'),'-'));
      dt.SubItems.Add(dmmodul.dataRow(QBarangDDL.FieldByName('nama_barang'),'-'));
      dt.SubItems.Add(dmmodul.dataRow(QBarangDDL.FieldByName('harga_jual'),'0'));
      //dt.SubItems.Add(dmmodul.dataRow(QBarangDDL.FieldByName('sisa'),'0'));
            Next;
     end;
     ListView4.Items.Item[0].Selected:=true;
  end;
 end;
 finally
  QBarangDDL.Close;
  QBarangDDL.Free;
 end;


end;


//validasi
Procedure Tfrm_penerimaan.hitung_tran;
begin

  if Ed_t1.Text = '' then Exit;
    a1 := StrToFloat(clearDot(ed_t1.Text));
    a2 := StrToFloat(clearDot(ed_disk.Text));
    a3 := StrToFloat(clearDot(ed_t2.Text));
    //a4 := StrToFloat(clearDot(Ed_pajak.Text));
    //a5 := StrToFloat(clearDot(Ed_total.Text);
    a5 := a1 - a2; //Total 2

    if chk_pajak.Checked = True then
        a6 := a5 * 0.10
    else
    a6 := 0;
    Ed_pajak.Text := FloatToStr(a6);
    a7 := a5 + a6;
    Ed_total.Text := FloatToStr(a7);
end;

//validasi
function Validasi:Boolean;
begin
  with frm_penerimaan do
  begin

     {
     if trim(ed_pembulatan.Text) ='' then
      begin
         ShowMessage('Nomor pembulatan Kosong');
         ed_pembulatan.SetFocus;
         Result:=False;
         exit
      end;
      }
      {
    if trim(cbo_k.Text) ='' then
      begin
         ShowMessage('Kunjungan Kosong');
         BitBtn1.SetFocus;
         Result:=False;
         exit
      end;

    if trim(cbo_jnsk.Text) ='' then
      begin
         ShowMessage('Jenis Kunjungan Kosong');
         BitBtn2.SetFocus;
         Result:=False;
         exit
      end;

    if trim(cbo_bayar.Text) ='' then
      begin
         ShowMessage('Cara Pembayaran Kosong');
         BitBtn3.SetFocus;
         Result:=False;
         exit
      end;

      if trim(cbo_poly.Text) ='' then
      begin
         ShowMessage('Poly Tujuan Kosong');
         BitBtn4.SetFocus;
         Result:=False;
         exit
      end;
       }
  end;
  Result:=True;
end;


Procedure Tfrm_penerimaan.buatno;
var
//tgl, urut : string;
  tgl,urut : string;
  i_no : integer;
  q_no: TMyQuery;
begin

tgl := FormatDateTime('yyMMdd', dtgl_buat.Date) + '-';
q_no := TMyQuery.Create(nil);

try
//tgl := FormatDateTime('yyMMdd', DtpTrans.Date) + '-';
      q_no.Connection := DmModul.con1;
      q_no.Active := false;
      q_no.SQL.Clear;
   //q_no.SQL.Text :=  'Select Max(right(novendor, 6)) from m_perusahaan';
   q_no.SQL.Add('Select Max(right(no_transaksi, 4)) from t_pembelian ' +
              'Where Mid(no_transaksi, 3,7) = ' + QuotedStr(tgl) + ';'); //JUMLAH NOMOR
      q_no.Active := true;

  if q_no.Fields[0].AsString = '' then
    urut := '0001'
  else
    urut := IntToStr(q_no.Fields[0].AsInteger + 1);
  if length(urut) < 4 then              //4
  begin
    for i_no := length(urut) to 3 do       // 4 = 3
      urut := '0' + urut;
  end;
  //nomor
  Ed_no.Text := 'p-' + tgl + urut;
  //Ed_no.Text := urut;
   finally
    q_no.Close;
    q_no.Free;
  end;
end;

 Procedure Tfrm_penerimaan.Aturgrid;
begin
  counter:=0;
  hapus_baris:=0;
  //StringGrid1.Cells[0,0]:='NO';
  Grid1.Cells[1,0]:='No.';
  Grid1.Cells[2,0]:='kode';
  Grid1.Cells[3,0]:='Nama';
  Grid1.Cells[4,0]:='Qty';
  Grid1.Cells[5,0]:='Satuan';
  Grid1.Cells[6,0]:='Harga';
  Grid1.Cells[7,0]:='total';
  Grid1.Cells[8,0]:='disk';
  Grid1.Cells[9,0]:='Total2';
  //StringGrid1.Cells[9,0]:='pajak';
  Grid1.ColWidths[0]:=20;
  Grid1.ColWidths[1]:=40;
  Grid1.ColWidths[2]:=60;
  Grid1.ColWidths[3]:=250;
  Grid1.ColWidths[4]:=50;
  Grid1.ColWidths[5]:=80;
  Grid1.ColWidths[6]:=90;
  Grid1.ColWidths[7]:=90;
  Grid1.ColWidths[8]:=90;
  Grid1.ColWidths[9]:=90;
    //clear grid
    Grid1.ClearRows(1, Grid1.RowCount - 1);
    Grid1.RowCount := 2;
end;

//grid hapus
//Hapus grid
procedure Tfrm_penerimaan.deleterow(mg:TStringGrid;ARow:integer);
var i,j,k:integer;
begin
        with mg do begin
                for i:=ARow to RowCount-2 do
                for j:=0 to ColCount-1 do
                Cells[j,i]:=Cells[j,i+1];

          RowCount:=RowCount-1;
          for k:=1 to RowCount-2 do
          Cells[0,k]:=IntToStr(k);
        end;
end;

//Total
procedure Tfrm_penerimaan.Total;
var i :integer;
//tot_jml,tot_t1,tot_disk,tot_t2,tot_pjk,tot_bayar:real;
tot_jml,tot_t1,tot_disk,tot_t2:real;

//tot_t1,tot_jml:real;
begin
tot_jml:=0;
tot_t1:=0;
tot_disk:=0;
tot_t2:=0;
//tot_pjk:=0;
//tot_bayar:=0;

if not (Grid1.RowCount=2) then begin
   for i:=1 to Grid1.RowCount-2 do begin
        tot_jml:=tot_jml+strtofloat(Grid1.Cells[4,i]);
        tot_t1:=tot_t1+strtofloat(Grid1.Cells[7,i]);
        tot_disk:=tot_disk+strtofloat(Grid1.Cells[8,i]);
        tot_t2:=tot_t2+strtofloat(Grid1.Cells[9,i]);
   //     tot_bayar:=tot_bayar+strtofloat(Grid1.Cells[6,i]);
   //     tot_t2:=tot_t2+strtofloat(Grid1.Cells[8,i]);
   end;
   ed_Tjml.Text:=floattostr(tot_jml);
   Ed_t1.Text:=floattostr(tot_t1);
   ed_disk.Text:=floattostr(tot_disk);
   ed_t2.Text:=floattostr(tot_t2);
   //ed_total.Text:=floattostr(tot_bayar);
   //Ed_t2.Text:=floattostr(tot_t2);
 end;
end;


//Procedure Tfrm_jualbebas.combo1;
//var
//  qc1 : TMyQuery;
 // dsc1 : TMyDataSource;
//begin
//  qc1 := TMyQuery.Create(nil);
//  dsc1 := TMyDataSource.Create(nil);
  {
  qc1.Connection := DmModul.con1;
  qc1.Active := false;
  qc1.Close;
  qc1.SQL.Clear;
  qc1.SQL.Text := 'Select jenis_kunjung,nama From ref_jenis_kunjung';
  qc1.Open;
   }
//  dsc1.DataSet := qc1;
//  wdbcmbx1.DataSource := dsc1;

{
wdbcmbx1.Items.Clear;
while not qc1.Eof do
begin
wdbcmbx1.Items.Add(qc1.FieldByName('jenis_kunjung').AsString);
qc1.Next;
end;
 }
// wwDBLookupCombo1.DataSource := dsc1;
// wwDBLookupCombo1.DataField := 'nama';

//end;



Procedure Tfrm_penerimaan.KosongTex(Kunci:Boolean);
Begin
  if Kunci=True then
  begin
  BtnCari.Enabled:=False;
  ed_no.Text:='';

  //Buat grid Tampil
  Aturgrid;
  //sama Kosong = 0
  //ed_pembulatan.Text:='0';
  Ed_t1.Text:='0';
  ed_disk.Text:='0';
  Ed_t2.Text:='0';
  ed_pajak.Text:='1';
  ed_total.Text:='0';


 {
  //tgl Lahir
dtgl_lahir.ShowCheckbox :=true;
dtgl_lahir.Checked := false;
dtgl_lahir.Color := clred;
  }
 end;
 end;

Procedure Tfrm_penerimaan.TampilData;
var
//  ds : TMyDataSource;
  barisk : Integer;
  qh : TMyQuery;
  qd : TMyQuery; //detail
  qc1 : TMyQuery; //pbf
  //qc2 : TMyQuery; //ruang
  // qc3 : TMyQuery; //pasien

  Begin
  //ds := TMyDataSource.Create(nil);
  qh := TMyQuery.Create(nil);
  qh.Connection := DmModul.con1;
  qh.Active := false;
  qh.SQL.Clear;
  qh.SQL.Text := 'Select * from t_pembelian where no_transaksi = '+QuotedStr(Ed_no.Text)+'';
  qh.Open;

if qh.RecordCount > 0 then
  begin

  Ed_no.Text:=qh.FieldByName('no_transaksi').AsString;
  dtgl_buat.date:=qh.FieldByName('tgl').AsDateTime;
  cbo_cv.Text:=qh.FieldByName('kd_pbf').AsString;
  Ed_nofaktur.Text:=qh.FieldByName('no_faktur').AsString;
  //dtgl_jth_tempo.date:=qh.FieldByName('tgl_jatuh_tempo').AsDateTime;

  //tanggal jatuh tempo
    if VarIsNull(qh['tgl_jatuh_tempo']) then
      begin
      dtgl_jth_tempo.ShowCheckbox :=true;
      dtgl_jth_tempo.Checked := false;
      dtgl_jth_tempo.Color := clred;
      end
    else
      begin
      dtgl_jth_tempo.Date:=qh.FieldByName('tgl_jatuh_tempo').AsDateTime;
    end;


    //tanggal faktur
    if VarIsNull(qh['tgl_faktur']) then
      begin
      dtgl_faktur.ShowCheckbox :=true;
      dtgl_faktur.Checked := false;
      dtgl_faktur.Color := clred;
      end
    else
      begin
      dtgl_faktur.Date:=qh.FieldByName('tgl_faktur').AsDateTime;
    end;


  qc1 := TMyQuery.Create(nil);
  qc1.Connection := DmModul.con1;
  qc1.Active := false;
  qc1.SQL.Clear;
  qc1.SQL.Text := 'Select * from supplier where kode_supplier = '+QuotedStr(cbo_cv.Text)+'';
  qc1.Open;
  Ed_nmcv.Text:=qc1.FieldByName('nama_supplier').AsString;

   //Detail data
  qd := TMyQuery.Create(nil);
  qd.Connection := DmModul.con1;
  qd.Active := false;
  qd.SQL.Clear;
  qd.SQL.Text := 'Select * from t_detail_pembelian where no_transaksi = '
  +QuotedStr(Ed_no.Text) +' order By no ' +'';
  qd.Open;

    //kosong grid

    for barisk:=1 to Grid1.RowCount-2 do begin
    Grid1.Cells[1,barisk]:='';
    Grid1.Cells[2,barisk]:='';
    Grid1.Cells[3,barisk]:='';
    Grid1.Cells[4,barisk]:='';
    Grid1.Cells[5,barisk]:='';
    Grid1.Cells[6,barisk]:='';
    Grid1.Cells[7,barisk]:='';
    Grid1.Cells[8,barisk]:='';
    Grid1.Cells[9,barisk]:='';
    end;

    //isi grid
    counter:=0;
    Grid1.RowCount:=2;
    while not qd.Eof do begin
          Inc(counter);
          Grid1.RowCount:=Grid1.RowCount+1;
          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=qd.FieldByName('no').AsString; //No.
          Grid1.Cells[2,counter]:=qd.FieldByName('kd_barang').AsString;
          Grid1.Cells[3,counter]:=qd.FieldByName('nama').AsString;
          Grid1.Cells[4,counter]:=qd.FieldByName('qty').AsString;
          Grid1.Cells[5,counter]:=qd.FieldByName('satuan_beli').AsString;
          Grid1.Cells[6,counter]:=qd.FieldByName('harga').AsString;
          Grid1.Cells[7,counter]:=qd.FieldByName('disk').AsString;
          Grid1.Cells[8,counter]:=qd.FieldByName('n_disk').AsString;
          Grid1.Cells[9,counter]:=qd.FieldByName('total_pemb').AsString;
               //hitung total harga

          jml:=StrToFloat(Grid1.Cells[4,counter]);
          harga:=StrToFloat(Grid1.Cells[6,counter]);
          total_harga:=jml*harga;
          Grid1.Cells[7,counter]:=FloatToStr(total_harga);
          
          //=====================
          qd.Next;
    end;
   Total;
   hitung_tran;
    //end grid


   {
    if VarIsNull(q2['Tgl_Lahir']) then
    begin
      dtgl_lahir.ShowCheckbox :=true;
      dtgl_lahir.Checked := false;
      dtgl_lahir.Color := clred;
    end
    else
    begin

    dtgl_lahir.Date:=q2.FieldByName('Tgl_Lahir').AsDateTime;
    dtgl_lahir.ShowCheckbox :=true;
    dtgl_lahir.Checked := true;
    dtgl_lahir.Color := clBlue;
    end;
    }

  //  ShowMessage('data Ada' );
     qh.Close;
    // qc1.Close;
    // qc2.Close;
     qd.Close;

  end

  else
    begin
    ShowMessage( 'data kosong / Tidak ADA : ' + Ed_no.Text );
    end;

end;

procedure Tfrm_penerimaan.FormClose(Sender: TObject; var Action: TCloseAction);
///var
 // I,n1,n2,n3,n4:integer;

begin
{
  n1:=0;
  n2:=0;
  n3:=Width;
  n4:=Height;
  for I:=0 to 100 do
  begin
    n1:=n1+1;
    n2:=n2+1;
    n3:=n3-1;
    n4:=n4-1;
    Application.ProcessMessages;
    Sleep(20);
    SetWindowRgn(Handle,
    CreateRectRgn(n1,n2,n3,n4),true);
  end;
 }
  frm_penerimaan:=nil;
  Action:=caFree;
end;

procedure Tfrm_penerimaan.Timer1Timer(Sender: TObject);
begin
  {
if LbPerhatian.Font.Color=clBlack then
  LbPerhatian.Font.Color:=clRed
else
  LbPerhatian.Font.Color:=clBlack;
  }
  end;

procedure Tfrm_penerimaan.BtnCariClick(Sender: TObject);
begin
FCari:=TFCari.Create(Application);
  LsvSetCol('no|Tgl.|petugas|total|',
  '100|70|200|80|',FCari.LsCari);
  FCari.LsField.Items.Clear;
  FCari.LsField.Items.Add('t_pembelian'); //Tabel / Query
  FCari.LsField.Items.Add('no_transaksi');
  FCari.LsField.Items.Add('tgl');
  FCari.LsField.Items.Add('id_user');
  FCari.LsField.Items.Add('tot_harga');
  FCari.CmbField.ItemIndex:=1;
  FCari.ShowModal;

    if nFieldCari[0]<>'' then
  begin
    Ed_no.Text:=nFieldCari[0];
//    KosongTex(False);
//    AktifControl(Self,PnInput,False);
    TampilData;
    //AktifControl(Self,PnInput,True);
    Ed_no.Enabled:=True;
    Ed_no.Color:=clSkyBlue;
    Ed_no.SetFocus;
  end;
end;

procedure Tfrm_penerimaan.BitBtn2Click(Sender: TObject);
begin
 BitBtn10Click(Sender);
end;

procedure Tfrm_penerimaan.FormCreate(Sender: TObject);
begin
// AktifControl(Self,PnInput, False);
// combo1;
// PnInput.Show;
  dtgl_buat.DateTime := Now;
  dtgl_faktur.DateTime := Now;

  dtgl_jth_tempo.ShowCheckbox :=true;
  dtgl_jth_tempo.Date :=date;
  dtgl_jth_tempo.Checked := false;

  dtgl_faktur.ShowCheckbox :=true;
  dtgl_faktur.Date :=date;
  dtgl_faktur.Checked := false;


 BtnCari.Enabled:=False;
 RightEdit(ed_total);
 //CenterEdit(Edit1);

 //rata kanan
//detail
RightEdit(ed_t1);
RightEdit(ed_disk);
RightEdit(ed_t2);
RightEdit(ed_pAjAk);
//RightEdit(ed_bayar);
{


 BtnHapus.Enabled := false;
 //tglakhir.Date:=Date;
 }

Aturgrid;

end;

procedure Tfrm_penerimaan.BitBtn4Click(Sender: TObject);
begin
 //AktifControl(Self,PnInput, True);
 PnOperasi.Caption:='Tambah Data';
 KosongTex(True);
 buatno;
 btncari.Enabled := false;
// tambah:=true; //tambah data
end;

procedure Tfrm_penerimaan.BitBtn5Click(Sender: TObject);
begin
//AktifControl(Self,PnInput, False);
PnOperasi.Caption:='Ubah Data';
KosongTex(True);
ed_no.Enabled:=True;
ed_no.Color:=clWhite;
BtnCari.Enabled:=True;
btncari.SetFocus;
//tambah:=false; //tdk

end;

procedure Tfrm_penerimaan.btnprosesClick(Sender: TObject);
var
  baris : Integer;
  q_cr : TMyQuery;
  tgljatuhtempo,tglfaktur:string;


 begin

   if dtgl_jth_tempo.Checked then
   tgljatuhtempo:=FormatDateTime('yyyy/mm/dd',dtgl_jth_tempo.Date)
   else
   tgljatuhtempo:='';

   if dtgl_faktur.Checked then
   tglfaktur:=FormatDateTime('yyyy/mm/dd',dtgl_faktur.Date)
   else
   tglfaktur:='';


{
if Validasi=False then exit;

if MessageDlg('Data dengan'+#13+#10+ed_no.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin

end;
}



  If PnOperasi.Caption='Tambah Data' then
   begin
      if Validasi=False then exit;
      q_cr := TMyQuery.Create(nil);
      q_cr.Connection := DmModul.con1;
      q_cr.Active := false;
      q_cr.SQL.Clear;
      q_cr.SQL.Text := 'Select no_transaksi from t_pembelian where no_transaksi='+
      QuotedStr(ed_no.Text)+'';
      q_cr.Open;
      if q_cr.RecordCount > 0 then
      begin
        MessageDlg('Data dengan'+#13+#10+ed_no.Text+#13+#10+
        'Sudah Ada ?',mtInformation,[mbok],0);
        ed_no.Enabled:= true;
        ed_no.SetFocus;
        q_cr.Close;
        q_cr.Free;
        exit;
      end;  //end cari

   //mulai simpan
      try
      // simpan
        SQL :=
        'insert into t_pembelian(no_transaksi,tgl,kd_pbf,'+
        'tgl_faktur,no_faktur,tgl_jatuh_tempo,'+
        'tot_harga) Values('+
        QuotedStr(ed_no.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtgl_buat.Date))+','+
        QuotedStr(cbo_cv.Text)+','+
        QuotedStr(tglfaktur)+','+
        QuotedStr(Ed_nofaktur.Text)+','+
        QuotedStr(tgljatuhtempo)+','+
        QuotedStr(ed_total.Text)+')';

        //QuotedStr(Edhr.Text)+')'; selesai

        ExecSQL1(sql); //simpan baru

        ShowMessage('Simpan ok :'+ Ed_No.Text);

        //urut grid
    for baris:=1 to Grid1.RowCount-2 do begin
    Grid1.Cells[0,baris]:=IntToStr(baris);
    Grid1.Cells[1,baris]:=IntToStr(baris);
    end;

     if not(grid1.RowCount=2) then begin
        for baris:=1 to grid1.RowCount-2 do begin

    sql1 := 'insert t_detail_pembelian (' +
      'no_transaksi,tgl_beli,no,kd_barang,nama,qty,'+
      'satuan_beli,harga,n_disk,total_pemb'+
      //'no_ijazah,tgl_masuk,hoby'+
      ') Values('+
    QuotedStr(Ed_no.Text)+','+
    QuotedStr(FormatDateTime('yyyy/mm/dd',dtgl_buat.Date))+','+
    QuotedStr(grid1.Cells[1,baris])+','+  //no
    QuotedStr(grid1.Cells[2,baris])+','+  //kd
    QuotedStr(grid1.Cells[3,baris])+','+  //nama
    QuotedStr(grid1.Cells[4,baris])+','+  //jml
    QuotedStr(grid1.Cells[5,baris])+','+  //sat
    QuotedStr(grid1.Cells[6,baris])+','+  //hrg
    QuotedStr(grid1.Cells[8,baris])+','+  //disk
    QuotedStr(grid1.Cells[9,baris])+')';  //total
    ExecSQL1(sql1);
        end;
       ShowMessage('Simpan Detail :'+ Ed_No.Text);
   end;

        KosongTex(True);
        //AktifControl(Self,PnInput,False);

         except
        ShowMessage('Simpan baru gagal :'+ Ed_No.Text);
        raise;
      end;
   end
   else if PnOperasi.Caption='Ubah Data' then
   begin
        if Validasi=False then exit;
        try
      // ubah
         SQL :=
        'Update t_pembelian set no_transaksi='+ QuotedStr(Ed_No.Text)+
        ',tgl='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtgl_buat.Date))+
        ',kd_pbf='+QuotedStr(cbo_cv.Text)+
        ',tgl_faktur='+QuotedStr(tglfaktur)+
        ',no_faktur='+QuotedStr(Ed_nofaktur.Text)+
        ',tgl_jatuh_tempo='+QuotedStr(tgljatuhtempo)+
        ',tot_harga='+QuotedStr(ed_total.Text)+
        ' where no_transaksi='+
        QuotedStr(ed_no.Text);

        ExecSQL1(sql); //simpan Edit

        ShowMessage('Simpan Perubahan ok :'+ Ed_No.Text);

         sql2 := 'delete from t_detail_pembelian'+
             ' where no_transaksi='+QuotedStr(Ed_no.Text);
        ExecSQL1(sql2);

   //urut grid
    for baris:=1 to Grid1.RowCount-2 do begin
    Grid1.Cells[0,baris]:=IntToStr(baris);
    Grid1.Cells[1,baris]:=IntToStr(baris);
    end;


     if not(grid1.RowCount=2) then begin
        for baris:=1 to grid1.RowCount-2 do begin

         sql1 := 'insert t_detail_pembelian (' +
          'no_transaksi,tgl_beli,no,kd_barang,nama,qty,'+
          'satuan_beli,harga,n_disk,total_pemb'+
          //'no_ijazah,tgl_masuk,hoby'+
          ') Values('+
          QuotedStr(Ed_no.Text)+','+
          QuotedStr(FormatDateTime('yyyy/mm/dd',dtgl_buat.Date))+','+
          QuotedStr(grid1.Cells[1,baris])+','+  //no
          QuotedStr(grid1.Cells[2,baris])+','+  //kd
          QuotedStr(grid1.Cells[3,baris])+','+  //nama
          QuotedStr(grid1.Cells[4,baris])+','+  //jml
          QuotedStr(grid1.Cells[5,baris])+','+  //sat
          QuotedStr(grid1.Cells[6,baris])+','+  //hrg
          QuotedStr(grid1.Cells[8,baris])+','+  //disk
          QuotedStr(grid1.Cells[9,baris])+')';  //total
          ExecSQL1(sql1);
        end;
        ShowMessage('Simpan Perubahan Detail :'+ Ed_No.Text);
     end;

        KosongTex(True);
       // AktifControl(Self,PnInput,False);
      except
        ShowMessage('Simpan Edit / ubah Gagal :'+ Ed_No.Text);
        raise;
      end;
   end
   else if PnOperasi.Caption='Hapus Data' then
   begin

      if MessageDlg('Data dengan'+#13+#10+Ed_No.Text+#13+#10+
        'akan di Hapus, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
        begin


      try
      // delete
      {
        DmModul.AdoCnGl.BeginTrans;
        ProsesData(
        'delete from ri where reg_ri='+
        QuotedStr(ednokwi.Text));
        DmModul.AdoCnGl.CommitTrans;
        AktifControl(Self,PnInput,False);
        Application.MessageBox('Pengahpusan selesai','kwi',MB_OK+MB_ICONINFORMATION);
        AktifControl(Self,PnInput,False);
       }
        Application.MessageBox('Hapus Sukses','LOKET',MB_OK+MB_ICONINFORMATION);
        KosongTex(True);
        //AktifControl(Self,PnInput,False);

      except
              Application.MessageBox('Penghapusan gagal','kwi',MB_OK+MB_ICONINFORMATION);
        raise;
      end;

        end;

   end; //selesai Proses


end;

procedure Tfrm_penerimaan.btnbatalClick(Sender: TObject);
//var
 //  q_ckwi1: TMyQuery;
begin

if MessageDlg('Data dengan'+#13+#10+Ed_no.Text+#13+#10+
        'akan di cetak, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin

 //   q_ckwi1 := TMyQuery.Create(nil);
    MyQuery1.Connection := DmModul.con1;
    MyQuery1.Active :=False;
    MyQuery1.Active :=True;
    MyQuery1.Close;
    MyQuery1.SQL.Clear;
    MyQuery1.SQL.Add('select * from v_cetak_bebas '+
      'Where no_transaksi = ' + QuotedStr(Ed_no.Text) + 'order by no;'); //JUMLAH NOMOR
    MyQuery1.Prepare;
    MyQuery1.Open;

       {
      If ZReport1 <> nil then
      begin
      ZReport1.DataSet := MyQuery1;
      //ZReport1.Preview;
      ZReport1.Print;
      end;
      }
 //	paper_type : zptContinuous
end;
end;




procedure Tfrm_penerimaan.btn_cetakbriClick(Sender: TObject);
begin


if MessageDlg('Data dengan'+#13+#10+Ed_no_cetak.Text+#13+#10+
        'akan di Cetak, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin
    Screen.cursor := crsqlWait;
    With ekrtf2 do Begin
   //format tanggal
   ClearVars;
   CreateVar('fullformat','dd mmmm yyyy');
   infile:=ExtractFilePath(Application.ExeName)+ '\rtf\'+'BRI_kawi_2014r.rtf';
   OutFile:= ExtractFilePath(Application.ExeName)+ '\report\'+Ed_no_cetak.Text+'-bri'+'.rtf';
   ExecuteOpen([],SW_SHOW);
   Screen.cursor := crDefault;
   End;
end;
end;

procedure Tfrm_penerimaan.BTN_XLSClick(Sender: TObject);
begin
if MessageDlg('Data dengan'+#13+#10+Ed_no_cetak.Text+#13+#10+
        'akan di Cetak eXCEL, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin

  //dsxls.Open;
  //if dsxls.Eof then exit;
  EXLReport1.template :=ExtractFilePath(Application.ExeName)
  + '\xls\'+'rekapitulasi_pendapatan_obat.xls';
  //EXLReport1.Dataset:=dsxls;
  //sheet yg dipilih
  EXLReport1.TemplSheet :='1';
  //EXLReport1.TemplSheet :='data1';
  EXLReport1.Show();
end;
 end;

procedure Tfrm_penerimaan.btn1Click(Sender: TObject);
begin
 FCari_com:=TFCari_com.Create(Application);
 FCari_com.Caption := 'pilih Agama';
  LsvSetCol('kode|nama|',
  '70|200|',FCari_com.LsCari);
  FCari_com.LsField.Items.Clear;
  FCari_com.LsField.Items.Add('ref_agama'); //Tabel / Query
  FCari_com.LsField.Items.Add('agama');
  FCari_com.LsField.Items.Add('nama');
  FCari_com.ShowModal;

    if nFieldCari[0]<>'' then
  begin
 //   Edit3.Text:=nFieldCari[0];
  end;

end;

procedure Tfrm_penerimaan.btn_TdetailClick(Sender: TObject);
 var harga,total_harga,jml : Real;
begin

if ed_jml.Text='' then begin
   ShowMessage('Masukan jumlah!');
   ed_jml.SetFocus;
   exit;
end;

inc(counter);
Grid1.RowCount:=Grid1.RowCount + 1;
Grid1.Cells[0,counter]:=IntToStr(counter);

//ed_no.Text := IntToStr(counter);
Grid1.Cells[1,counter]:= IntToStr(counter);
//Grid1.Cells[1,counter]:=Ed_no.Text;  //no
Grid1.Cells[2,counter]:=ed_nama.Text;//nama barang
Grid1.Cells[3,counter]:=ed_jml.Text; //jumlah
Grid1.Cells[4,counter]:=cbo_sat.Text; //satuan
Grid1.Cells[5,counter]:=ed_hrg.Text; // harga
//Grid1.Cells[6,counter]:=ed_t1d.Text; // t1
//Grid1.Cells[7,counter]:=ed_tdisk.Text; // disk
//Grid1.Cells[8,counter]:=ed_t2_d.Text; // t2
//StringGrid1.Cells[9,counter]:=ed_t2_d.Text; // t2
//StringGrid1.Cells[8,counter]:=ed_t2_d.Text; // t2

//hitung total harga
jml:=StrToFloat(Grid1.Cells[3,counter]);
harga:=StrToFloat(Grid1.Cells[5,counter]);
total_harga:=jml*harga;
Grid1.Cells[6,counter]:=FloattoStr(total_harga);
//=====================
Total; //jumlah total
//clear kotak
//ed_nama.Text := '';
//ed_jml.Text := '0';
//ed_satuan.Text := '';
//ed_hrg.Text := '0';
//Ed_disk_d.Text := '0';
//ed_Tdisk.Text := '0';
end;

procedure Tfrm_penerimaan.btn_hgridClick(Sender: TObject);
begin

if not(Grid1.RowCount=1) then begin
  if (cek_baris='') then begin
    ShowMessage('Silahkan pilih kode barang di hapus');
    exit;
  end else
      if MessageDlg('Hapus item kode: '+Grid1.Cells[2,hapus_baris]+' ?',mtConfirmation,mbOKCancel,0)=mrok then begin
         deleterow(Grid1,hapus_baris);
         Total;
         cek_baris:='';
         counter:=counter-1;
      end;
end else ShowMessage('Inputan Detail masih kosong');
end;

procedure Tfrm_penerimaan.grid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
  var input_box:string;

cek_inputan:boolean;

begin

hapus_baris:=ARow;
cek_baris:=Grid1.Cells[1,arow];
if not (Grid1.Cells[ACol,ARow]='') then begin

//No.
{
if ACol=1 then  begin
   if not (Grid1.RowCount=2) then begin
      input_box:=InputBox('No ','No. : '+Grid1.Cells[1,arow],Grid1.Cells[1,arow]);
                Grid1.Cells[ACol,ARow]:=input_box;
      end;
   end;
 }

if ACol=3 then  begin
   if not (Grid1.RowCount=2) then begin
      input_box:=InputBox('Nama ','Nama Barang : '+Grid1.Cells[1,arow],Grid1.Cells[3,arow]);
                Grid1.Cells[ACol,ARow]:=input_box;
      end;
   end;

 //jumlah brg
 if ACol=4 then  begin
   if not (Grid1.RowCount=2) then begin
      input_box:=InputBox('Jumlah','Masukan jumlah barang No : '+Grid1.Cells[1,arow],Grid1.Cells[4,arow]);
      if  (Length(Trim(input_box))=0) then exit else begin
        //cek_inputan:=StrToFloat(input_box,qty);
        //if cek_inputan=false then ShowMessage('Masukan angka!') else begin
                qty:=StrTofloat(input_box);
                Grid1.Cells[ACol,ARow]:=floatToStr(qty);
          //hitung total harga
          jml:=StrToFloat(Grid1.Cells[4,arow]);
          harga:=StrToFloat(Grid1.Cells[6,arow]);
          total_harga:=jml*harga;
          Grid1.Cells[7,arow]:=FloatToStr(total_harga);
          disk:=StrToFloat(Grid1.Cells[8,arow]);
          total2 := total_harga - disk;
          Grid1.Cells[9,arow]:=FloatToStr(total2);

          //=====================
          Total;
        //end;
      end;
   end;
 end;

 //Satuan
 if ACol=5 then  begin
   if not (Grid1.RowCount=2) then begin
      input_box:=InputBox('Satuan ','Satuan Barang : '+Grid1.Cells[1,arow],Grid1.Cells[5,arow]);
                Grid1.Cells[ACol,ARow]:=input_box;
      end;
   end;


 //harga Dasar
 if ACol=6 then  begin
   if not (Grid1.RowCount=2) then begin
     //ShowMessage('No Urut'+#13+#10+StringGrid1.Cells[1,arow]+#13+#10+StringGrid1.Cells[5,arow]);
      input_box:=InputBox('Harga Satuan :','Nilai Harga Satuan : '+Grid1.Cells[1,arow],Grid1.Cells[6,arow]);

      if  (Length(Trim(input_box))=0) then exit else begin
       // cek_inputan:=TryStrTofloat(input_box,qty);
       // if cek_inputan=false then ShowMessage('Masukan angka!') else begin
                qty:=StrTofloat(input_box);
                Grid1.Cells[ACol,ARow]:=floatToStr(qty);
          //hitung total harga
          jml:=StrToFloat(Grid1.Cells[4,arow]);
          harga:=StrToFloat(Grid1.Cells[6,arow]);
          total_harga:=jml*harga;
          Grid1.Cells[7,arow]:=FloatToStr(total_harga);
          disk:=StrToFloat(Grid1.Cells[8,arow]);
          total2 := total_harga - disk;
          Grid1.Cells[9,arow]:=FloatToStr(total2);

          //=====================
          Total;
        //end;
      end;
   end;
 end;

 //harga Dasar
 if ACol=8 then  begin
   if not (Grid1.RowCount=2) then begin
     //ShowMessage('No Urut'+#13+#10+StringGrid1.Cells[1,arow]+#13+#10+StringGrid1.Cells[5,arow]);
      input_box:=InputBox('diskon :','diskon : '+Grid1.Cells[1,arow],Grid1.Cells[8,arow]);

      if  (Length(Trim(input_box))=0) then exit else begin
       // cek_inputan:=TryStrTofloat(input_box,qty);
       // if cek_inputan=false then ShowMessage('Masukan angka!') else begin
                qty:=StrTofloat(input_box);
                Grid1.Cells[ACol,ARow]:=floatToStr(qty);
          //hitung total harga
          jml:=StrToFloat(Grid1.Cells[4,arow]);
          harga:=StrToFloat(Grid1.Cells[6,arow]);
          total_harga:=jml*harga;
          Grid1.Cells[7,arow]:=FloatToStr(total_harga);
          disk:=StrToFloat(Grid1.Cells[8,arow]);
          total2 := total_harga - disk;
          Grid1.Cells[9,arow]:=FloatToStr(total2);

          //=====================
          Total;
        //end;
      end;
   end;
 end;

end;
end;

procedure Tfrm_penerimaan.e(Sender: TObject);
begin
 if ed_total.text = '' then
 exit
 else

 tmp3:=StrToInt(clearDot(ed_total.Text));
 //lbl_total.Caption:=formatRp(IntToStr(tmp3));
 label22.Caption:=formatRp(IntToStr(tmp3));

 {
i := StrToFloat(ed_dtotal.Text);
s := Format('%.0n', [i]);
label22.Caption:=s;
}



end;

procedure Tfrm_penerimaan.BitBtn8Click(Sender: TObject);
var
   q_ckwi: TMyQuery;
begin
if MessageDlg('Data dengan'+#13+#10+Ed_no_cetak.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin

    q_ckwi := TMyQuery.Create(nil);
    q_ckwi.Connection := DmModul.con1;
    q_ckwi.Close;
    q_ckwi.SQL.Clear;
    q_ckwi.SQL.Add('select * from v_cetak_bebas '+
      'Where no_transaksi = ' + QuotedStr(Ed_no_cetak.Text) + 'order by no;'); //JUMLAH NOMOR
      q_ckwi.Open;

     if q_ckwi.RecordCount > 0 then
      begin

        frxdbdtst1.DataSet := q_ckwi;
        frxReport1.LoadFromFile(getReportPath + 'Penjualan_struk_bebas.fr3');
        frxReport1.ShowReport;

      //  report_dot.DataSet := q_ckwi;
      //  report_dot.LoadFromFile(getReportPath + 'penj_bebas_dot.fr3');
      //  report_dot.ShowReport;
      end
      else
      ShowMessage('data tidak ada / Blm Lengkap :'+Ed_no_cetak.Text);

end;
end;

procedure Tfrm_penerimaan.BitBtn3Click(Sender: TObject);
begin
FCari:=TFCari.Create(Application);
  LsvSetCol('no|Tgl.|petugas|total|',
  '100|70|200|80|',FCari.LsCari);
  FCari.LsField.Items.Clear;
  FCari.LsField.Items.Add('v_header_bebas'); //Tabel / Query
  FCari.LsField.Items.Add('no_transaksi');
  FCari.LsField.Items.Add('tgl');
  FCari.LsField.Items.Add('id_user');
  FCari.LsField.Items.Add('total');
  FCari.CmbField.ItemIndex:=1;
  FCari.ShowModal;

    if nFieldCari[0]<>'' then
  begin
    Ed_no_cetak.Text:=nFieldCari[0];
//    KosongTex(False);
//    AktifControl(Self,PnInput,False);
    //TampilData;
    //AktifControl(Self,PnInput,True);
    Ed_no_cetak.Enabled:=True;
    Ed_no_cetak.Color:=clSkyBlue;
    Ed_no_cetak.SetFocus;
  end;
end;

procedure Tfrm_penerimaan.BitBtn6Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(getReportPath + 'Penjualan_struk_bebas.fr3');
  frxReport1.DesignReport;
end;

procedure Tfrm_penerimaan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_RETURN) and (Shift = []) then
    Perform(WM_NEXTDLGCTL, 0, 0);


  if(Key=113) then  //F2 data_baru
    begin
     BitBtn4Click(Sender);
    end;


  if(Key=114) then  //F3
    begin
     BitBtn10Click(Sender);
    end;

  if(Key=115) then  //F4
    begin
     Pg_Show.Visible:=true;

     EdPcari.SetFocus;
    end;

    if (Key = 27)then //tombol END 35 , esc 27
    begin
    Pg_Show.Visible:=false;
    //pn_bayar.Visible:=false;
    end;

    {
 if(Key=115) then  //F4
    begin
     Pg_Show.Visible:=true;
     EdPcari.SetFocus;
    end;
    }

 if(Key=116) then  //F5
    begin
     //pn_bayar.Visible:=True;

     //lbl_total.Caption:=formatRp(IntToStr(ed_dtotal));
     //Ed_byrd.SetFocus;
    end;

 if(Key=117) then  //F6
    begin
     btnprosesClick(Sender);
    end;

end;

procedure Tfrm_penerimaan.BitBtn9Click(Sender: TObject);
var
   q_ckwi: TMyQuery;
begin
if MessageDlg('Data dengan'+#13+#10+Ed_no_cetak.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin
  {
   q_ckwi := TMyQuery.Create(nil);
   //try
      q_ckwi.Connection := DmModul.con1;
      //q_ckwi.Active := false;
      q_ckwi.Close;
      q_ckwi.SQL.Clear;
      q_ckwi.SQL.Add('select a.no_transaksi,a.tgl,a.no_resep '+
      ',a.namapx '+
      ',c.nama as nmpoly '+
      ',d.nama as nmdok '+
      ',a.total_tran as total '+
      ',a.terbilang as terbilang '+
      ',e.tgl_jual,e.no,e.nama,e.qty,e.harga,e.jasa '+
      'from h_penjualan a '+
      'inner join ref_poly c on a.kd_ruang = c.poly '+
      'inner join ref_dokter d on a.kd_dokter = d.nip '+
      'inner join t_detail_penjualan e on a.no_transaksi = e.no_transaksi '+
      'Where A.no_transaksi = ' + QuotedStr(Ed_no_cetak.Text) + ' order by e.no'+ ';'); //JUMLAH NOMOR
      //q_ckwi.Active := true;
      q_ckwi.Open;
       // frxdbdtst1.DataSource := '':  //dataset
  //finally
  //  q_ckwi.Close;
  //  q_ckwi.Free;
  //end;

     if q_ckwi.RecordCount > 0 then
      begin
        frxdbdtst2.DataSet := q_ckwi;
        frxrprt2.LoadFromFile(getReportPath + 'detail_jual.fr3');
        frxrprt2.ShowReport;
        //frxrprt2.PrepareReport(True);
        //frxpdfxprt1.FileName := ExtractFilePath(Application.ExeName)+ '\pdf\'+'xxx.xls';
        //frxrprt2.Export(frxpdfxprt1);
      end
      else
      ShowMessage('data tidak ada / Blm Lengkap :'+Ed_no_cetak.Text);
 // ShowMessage('Cetak Kwiitansi !');
}
end;

end;


procedure Tfrm_penerimaan.BitBtn13Click(Sender: TObject);
begin
if  frm_px_int=nil then
    frm_px_int:=Tfrm_px_int.Create(Application);
    frm_px_int.BringToFront;
end;

procedure Tfrm_penerimaan.BitBtn10Click(Sender: TObject);
var harga,total_harga,tdisk,t2,jml : Integer;
begin

if ed_jml.Text='' then begin
   ShowMessage('Masukan jumlah!');
   ed_jml.SetFocus;
   exit;
end;

inc(counter);
Grid1.RowCount:=Grid1.RowCount + 1;
Grid1.Cells[0,counter]:=IntToStr(counter);

//ed_no.Text := IntToStr(counter);
Grid1.Cells[1,counter]:= IntToStr(counter);
//Grid1.Cells[1,counter]:=Ed_no.Text; //no
Grid1.Cells[2,counter]:=ed_kode.Text; //kode brg
Grid1.Cells[3,counter]:=ed_nama.Text; //nama
Grid1.Cells[4,counter]:=ed_jml.Text;  //jumlah
Grid1.Cells[5,counter]:=cbo_sat.Text; //satuan
Grid1.Cells[6,counter]:=ed_hrg.Text;  // harga
//Grid1.Cells[7,counter]:=ed_t1d.Text; // t1
Grid1.Cells[8,counter]:=Ed_dndisk.Text; // disk
//Grid1.Cells[8,counter]:=ed_t2_d.Text; // t2
//StringGrid1.Cells[9,counter]:=ed_t2_d.Text; // t2
//StringGrid1.Cells[8,counter]:=ed_t2_d.Text; // t2

//hitung total harga
jml:=StrToInt(Grid1.Cells[4,counter]);
harga:=StrToInt(Grid1.Cells[6,counter]);
total_harga:=jml*harga;
Grid1.Cells[7,counter]:=IntToStr(total_harga);
tdisk:=StrToInt(Grid1.Cells[8,counter]);
t2:= total_harga - tdisk;
Grid1.Cells[9,counter]:=IntToStr(t2);

//=====================
Total; //jumlah total
hitung_tran;

//clear kotak
//ed_nama.Text := '';
//ed_jml.Text := '0';
//ed_satuan.Text := '';
//ed_hrg.Text := '0';
//Ed_disk_d.Text := '0';
//ed_Tdisk.Text := '0';
end;

procedure Tfrm_penerimaan.BitBtn12Click(Sender: TObject);
begin
if not(Grid1.RowCount=1) then begin
  if (cek_baris='') then begin
    ShowMessage('Silahkan pilih kode barang di hapus');
    exit;
  end else
      if MessageDlg('Hapus item kode: '+Grid1.Cells[2,hapus_baris]+' ?',mtConfirmation,mbOKCancel,0)=mrok then begin
         deleterow(Grid1,hapus_baris);
         Total;
         cek_baris:='';
         counter:=counter-1;
      end;
end else ShowMessage('Inputan Detail masih kosong');

end;

procedure Tfrm_penerimaan.btn_hitungClick(Sender: TObject);
begin
hitung_tran;
end;

procedure Tfrm_penerimaan.Ed_totalChange(Sender: TObject);
begin
//Label22.Caption := Ed_total.Text;
 if ed_total.text = '' then
 exit
 else
 tmp3:=StrToInt(clearDot(ed_total.Text));
 label22.Caption:=formatRp(IntToStr(tmp3));
end;

procedure Tfrm_penerimaan.EdPcariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key=40)then
    ListView4.SetFocus;
 if (Key=13)then
    ListView4.SetFocus;
 {
 if (Key = 35)then //tombol END
    Pg_Show.Visible:=false;
    }
end;

procedure Tfrm_penerimaan.EdPcariChange(Sender: TObject);
begin
if(EdPcari.Text<>'')then
   caribarang(EdPcari.Text)
 else
   ListView4.Clear;
end;

procedure Tfrm_penerimaan.ListView4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=40)then  // panah bawah
    ListView4.SetFocus;
 if (Key=13)then  //enter
    ListView4.SetFocus;

 if (Key = 27)then //tombol END 35 , esc 27
   begin
    Pg_Show.Visible:=false;
    ed_jml.SetFocus;
    end;
end;

procedure Tfrm_penerimaan.ListView4KeyPress(Sender: TObject;
  var Key: Char);
begin
 try
		if(Key=#13)then
	begin
     ed_kode.Text:=ListView4.Selected.Caption;
     ed_jml.SetFocus;
     Pg_Show.Visible:=false;
	end;
		except
	end;
end;

procedure Tfrm_penerimaan.ed_kodeChange(Sender: TObject);
var
  q_brg : TMyQuery;
begin
    try
      q_brg := TMyQuery.Create(nil);
      q_brg.Connection := DmModul.con1;
      q_brg.Active := false;
      q_brg.SQL.Clear;
      q_brg.SQL.Text := 'Select * from m_barang where kode='+
      QuotedStr(ed_kode.Text)+'';
      q_brg.Open;

      {
      if q_brg.RecordCount > 0 then
      begin
        MessageDlg('Data dengan'+#13+#10+ed_kode.Text+#13+#10+
        'Tidak Ada ?',mtInformation,[mbok],0);
        ed_kode.Enabled:= true;
        ed_kode.SetFocus;
        q_brg.Close;
        q_brg.Free;
        exit;
      end;
      }

      ed_nama.Text:=q_brg.FieldByName('nama_barang').AsString;
      cbo_sat.Text:=q_brg.FieldByName('satuan_beli').AsString;
      ed_hrg.Text:=q_brg.FieldByName('harga_beli').AsString;

    finally
      q_brg.Close;
      q_brg.Free;
    end;

    end;
procedure Tfrm_penerimaan.ed_jmlKeyPress(Sender: TObject; var Key: Char);
begin
try
		if(Key=#13)then
	begin
    BitBtn10Click(Sender);
 	end;
		except
	end;
end;

procedure Tfrm_penerimaan.grid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    1: HAlign := taCenter;
    2,3: HAlign := taLeftJustify;
    4,6,7,8,9: HAlign := taRightJustify;
  end;

end;

procedure Tfrm_penerimaan.grid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
if ((ACol = 4) and (ARow > 0)) then
  begin
    ABrush.Color := clYellow;
    AFont.Color := clRed;
    //Font.Style := [fsBold];
  end;

  if ((ACol = 6) and (ARow > 0)) then
  begin
    ABrush.Color := clAqua;
    AFont.Color := clBlue;
    //AFont.Style := [fsBold];
  end;

  if ((ACol = 7) and (ARow > 0)) then
  begin
    ABrush.Color := clAqua;
    AFont.Color := clBlue;
    //AFont.Style := [fsBold];
  end;

  if ((ACol = 8) and (ARow > 0)) then
  begin
    ABrush.Color := clYellow;
    AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

  if ((ACol = 9) and (ARow > 0)) then
  begin
    ABrush.Color := clAqua;
    AFont.Color := clBlue;
    //AFont.Style := [fsBold];
  end;

end;

procedure Tfrm_penerimaan.Ed_kodeExit(Sender: TObject);
var
 data:integer;
begin
 //data:=StrToIntDef(clearDot(Ed_byrD.Text),0);
 //lbl_kembali.Caption:=IntToStr(StrToIntDef(ed_dtotal.Text,0)-data);
end;

procedure Tfrm_penerimaan.Ed_kodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(Key = VK_RETURN) and (Shift = []) then
    Perform(WM_NEXTDLGCTL, 0, 0);
  if (Key=13)then
    begin
    btnprosesClick(Sender);
    //pn_bayar.Visible:=false;
  end;
end;

procedure Tfrm_penerimaan.BitBtn7Click(Sender: TObject);
begin
FCari:=TFCari.Create(Application);
  LsvSetCol('kode|nama pbf|',
  '70|200|',FCari.LsCari);
  FCari.LsField.Items.Clear;
  FCari.LsField.Items.Add('supplier'); //Tabel / Query
  FCari.LsField.Items.Add('kode_supplier');
  FCari.LsField.Items.Add('nama_supplier');
  FCari.CmbField.ItemIndex:=1;
  FCari.ShowModal;

    if nFieldCari[0]<>'' then
  begin
    cbo_cv.Text:=nFieldCari[0];
    Ed_nmcv.Text:=nFieldCari[1];
//    KosongTex(False);
//    AktifControl(Self,PnInput,False);
    //TampilData;
    //AktifControl(Self,PnInput,True);
    //Ed_no.Enabled:=True;
    cbo_cv.Color:=clSkyBlue;
    cbo_cv.SetFocus;
  end;
end;

procedure Tfrm_penerimaan.cbo_cvChange(Sender: TObject);
var
  qcv : TMyQuery;
begin
  try
  qcv := TMyQuery.Create(nil);
  qcv.Connection := DmModul.con1;
  qcv.Active := false;
  qcv.SQL.Clear;
  qcv.SQL.Text := 'Select * from supplier where kode_supplier = '+QuotedStr(cbo_cv.Text)+'';
  qcv.Open;
  Ed_nmcv.Text:=qcv.FieldByName('nama_supplier').AsString;
  finally
     qcv.Close;
     qcv.Free;
  end;


end;

procedure Tfrm_penerimaan.Ed_t1Change(Sender: TObject);
begin
//hitung_tran;
end;

end.
