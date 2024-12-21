unit UBayar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, StdCtrls, Buttons, ComCtrls, cxLabel, ExtCtrls,
  AdvShapeButton, DB, DBAccess, MyAccess, MemDS, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit,
  AdvUtil, Grids, AdvObj, BaseGrid, AdvGrid,StrUtils;

type
  TfrmBayar = class(TForm)
    PageControl1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    Panel1: TPanel;
    cxLabel3: TcxLabel;
    dtp1: TDateTimePicker;
    cxLabel8: TcxLabel;
    dtp2: TDateTimePicker;
    btcari: TBitBtn;
    Panel2: TPanel;
    btnsave: TSpeedButton;
    Label10: TLabel;
    edTotalBayar: TEdit;
    Label1: TLabel;
    EdNilaiFaktur: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edNoFaktur: TEdit;
    cxlbl10: TcxLabel;
    dtp_bayar: TDateTimePicker;
    cxlbl1: TcxLabel;
    Edkodetransaksi: TAdvShapeButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ds1: TMyDataSource;
    MyDataSource1: TMyDataSource;
    cxLabel1: TcxLabel;
    dtpJatuhTempo: TDateTimePicker;
    dtpFaktur: TDateTimePicker;
    PnOperasi: TPanel;
    btnBtnHapus: TSpeedButton;
    QCari: TMyQuery;
    cxLabel2: TcxLabel;
    cbbpetugas: TcxLookupComboBox;
    btncv: TcxButtonEdit;
    cxlblnamacv: TcxLabel;
    grid1: TAdvStringGrid;
    Grid2: TAdvStringGrid;
    Label7: TLabel;
    edTotalLunas: TEdit;
    Label9: TLabel;
    EdTotalblmbayar: TEdit;
    Label8: TLabel;
    tmr1: TTimer;
    EdTrans: TEdit;
    cxLabel4: TcxLabel;
    ds6: TMyDataSource;
    mmo1: TMemo;
    btnCariSudah: TBitBtn;
    lblstatus: TLabel;
    Ed_carisupplierbayar: TEdit;
    chkcrgid2: TCheckBox;
    chkgrid1: TCheckBox;
    EdCariSupplierbayar: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure btcariClick(Sender: TObject);
    procedure grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure EdNilaiFakturChange(Sender: TObject);
    procedure edTotalBayarChange(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure btnCariSudahClick(Sender: TObject);
    procedure Grid2GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Grid2GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure chkcrgid2Click(Sender: TObject);
    procedure Ed_carisupplierbayarChange(Sender: TObject);
    procedure chkgrid1Click(Sender: TObject);
    procedure EdCariSupplierbayarChange(Sender: TObject);
  private
    { Private declarations }
    Procedure KosongTex(Kunci:Boolean);
    Procedure TampilDatacaritgl;
    Procedure aturgrid1;
    Procedure aturgrid2;
    procedure Totalgrid1;
    Procedure TampilData_pembelian;
    Procedure Tampil_combo_Petugas;
    Procedure TampilDatacaritglSudah;
    procedure Totalgrid2;
    Procedure TampilData_konsi;
    Procedure TampilData_ubahBayar;
  public
    { Public declarations }
    Function GetNoBBK:string;
    Function Lastkasir(s:string):string;
  end;

var
  frmBayar: TfrmBayar;
  FCounter :integer;
  tambah: boolean;
  i1,i2,baris :Integer;
  i,counter,hapus_baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	sql,sql1,sql2,sql3,m1,m2,m3,m4,m5,ppn: String;
  qty,jml,harga,total_harga,disk,total2 : real ; // :integer;
  hrgd,n_t1d,ddisk,n_diskd,n_t2d,n_pajakd,JML_BRG,total_nilai :real;
  a1,a2,a3,a4,a5 ,a6 : real;
  cek_inputan:boolean;

implementation
uses uconfig,UnModul,UFunctions,UF_dbsql,UF_setting, UnCarisp,UnCarisp2, UnMenu;
{$R *.dfm}


Procedure TfrmBayar.KosongTex(Kunci:Boolean);
//var
//j:Integer;
Begin
  if Kunci=True then
  begin
  Edkodetransaksi.Text := '';
  EdTrans.Text := '';
  btncv.Text := '';
  cxlblnamacv.Caption := 'Suplier blm di pilih';
  Edkodetransaksi.Text:=GetNoBBK;
  edNoFaktur.Text := '';
  EdNilaiFaktur.Text := '0';
  edTotalBayar.Text := '0';
  dtp_bayar.date:= now;
  cbbpetugas.Text:= '';
  PnOperasi.Caption := 'Tambah Data';


//  dtp_buat.date:= now;
//
//
//
//  {
//  dtp_faktur.date:= now;
//  dtp_faktur.ShowCheckbox :=true;
//  dtp_faktur.Checked := false;
//  dtp_faktur.Color := clred;
//   }
//
//
//
//
//
//  cbo_satuan;
//  btnnoreg.Enabled:=False;
//  aturgrid1;
//  edkode.Text := '';
//  cx_nama_brg.Text := '';
//  cbb_satuan.Text := '';
//
//  edjml.Text := '0';
//  EdNilai.Text := '0';
//  edtotal.Text := '0';
//  ed_t1.Text := '0';
//  PnOperasi.Caption := 'Tambah Data';

  //TampilDatacari;
  //cbo_gudang.ItemIndex:=0;

 end;
end;

procedure TfrmBayar.FormCreate(Sender: TObject);
begin
  KosongTex(True);
  dtp1.date:= now;
  dtp2.date:= now;
  dtp_bayar.date:= now;
  Tampil_combo_Petugas;
  aturgrid1;
  aturgrid2;
//dtpFaktur
//  aturgrid2;
//  Aturgrid1;
end;

Function TfrmBayar.GetNoBBK:string;
var nomor,faktur:string;
NO:integer;
begin
// nomor:='';
 nomor:=lastKASIR('BY'+formatdatetime('yymmdd',now())+'%');
 if nomor='' then
 faktur:='BY'+formatdatetime('yymmdd',now())+'-0001'
 else
 begin
   nomor:=copy(nomor,10,4);
   no:=strtoint(nomor);
   nomor:='0000'+inttostr(no+1);
   nomor:=copy(nomor,length(nomor)-3,4);
   faktur:='BY'+formatdatetime('yymmdd',now())+'-'+nomor;
 end;
result:=faktur;
end;

procedure TfrmBayar.grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);
var cek_data : string;
begin
    //EdTrans.Text:=Grid1.Cells[1,AROW];
    cek_data := Grid1.Cells[1,AROW];

    lblstatus.Caption := LeftStr(Grid1.Cells[1,AROW],2);

    if LeftStr(cek_data,2) = 'BL' then
      begin
      EdTrans.Text:=Grid1.Cells[1,AROW];
      TampilData_pembelian;
      end
      else
      begin
      EdTrans.Text:=Grid1.Cells[1,AROW];
      TampilData_konsi;
      end;

    //cxlblnamacv.Caption:=Grid1.Cells[5,AROW];
    //btnnoreg.Style.Color:=clLtGray;
  //  if then


//    TampilData_pembelian;
    //PnOperasi.Caption := 'Ubah Data';
//    btnnoreg.Style.Color:=clcxLightGray;
//    cxNoBbk.SetFocus;
//    btnnoreg.Enabled:=False;
end;

procedure TfrmBayar.grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    1: HAlign := taCenter;
    2,3,5: HAlign := taLeftJustify;
    4: HAlign := taRightJustify;
  end;
end;

procedure TfrmBayar.grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
  var IsFloat: Boolean; var FloatFormat: string);
begin
isFloat := Acol in [4];
case ACol of
  4: Floatformat :='%.0n';

end;
end;

procedure TfrmBayar.Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
var cek_data2 : string;
begin
    cek_data2 := Grid2.Cells[1,AROW];
    EdTrans.Text:=Grid2.Cells[1,AROW];
    lblstatus.Caption := LeftStr(Grid2.Cells[1,AROW],2);

    dtpJatuhTempo.Visible := true;
    TampilData_ubahBayar;
    PnOperasi.Caption :='Ubah Data';
    {
    if LeftStr(cek_data2,2) = 'BL' then
      begin
      EdTrans.Text:=Grid1.Cells[1,AROW];
      TampilData_pembelian;
      end
      else
      begin
      EdTrans.Text:=Grid1.Cells[1,AROW];
      TampilData_konsi;
      end;
      }
end;

procedure TfrmBayar.Grid2GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    1: HAlign := taCenter;
    2,3,5: HAlign := taLeftJustify;
    4: HAlign := taRightJustify;
  end;
end;

procedure TfrmBayar.Grid2GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
  var IsFloat: Boolean; var FloatFormat: string);
begin
isFloat := Acol in [4];
case ACol of
  4: Floatformat :='%.0n';

end;
end;

Function TfrmBayar.Lastkasir(s:string):string;
begin
QCari.Close;
QCari.Connection:=DmModul.con1;
   QCari.SQL.text:='SELECT MAX(no_tran_bayar) AS NOTA'+
       ' FROM tbl_bayarfaktur'+
       ' WHERE no_tran_bayar LIKE '+quotedstr(s);
     QCari.Open;
if not QCari.IsEmpty then
result:=QCari.fieldbyname('NOTA').AsString
else
result:='';
end;


Procedure TfrmBayar.aturgrid1;
//var counter,hapus_baris : Integer;
begin
  counter:=0;
  hapus_baris:=0;
  Grid1.ColCount:=7;
  Grid1.RowCount:=1;
  Grid1.FixedRowAlways := True;
  Grid1.Cells[0,0]:='No';
  Grid1.Cells[1,0]:='Trans';
  Grid1.Cells[2,0]:='No. Faktur';
  Grid1.Cells[3,0]:='tgl';
  Grid1.Cells[4,0]:='Total';
  Grid1.Cells[5,0]:='Nama Supp';
  Grid1.Cells[6,0]:='Jatuh Tempo';
  //Grid1.Cells[6,0]:='permintaan';
  //Grid1.Cells[7,0]:='stok';
  Grid1.ColWidths[0]:=30;
  Grid1.ColWidths[1]:=100;
  Grid1.ColWidths[2]:=160;
  Grid1.ColWidths[3]:=70;
  Grid1.ColWidths[4]:=90;
  Grid1.ColWidths[5]:=230;
  Grid1.ColWidths[6]:=70;
  //Grid1.ColWidths[7]:=50;
  //clear grid
  //StringGrid1.ClearRows(1, StringGrid1.RowCount - 1);
  //rata kanan
  //RightEdit(ed_dtotal);



end;


Procedure TfrmBayar.aturgrid2;
//var counter,hapus_baris : Integer;
begin
  counter:=0;
  hapus_baris:=0;
  Grid2.ColCount:=7;
  Grid2.RowCount:=1;
  Grid2.FixedRowAlways := True;
  Grid2.Cells[0,0]:='No';
  Grid2.Cells[1,0]:='Trans';
  Grid2.Cells[2,0]:='No. Faktur';
  Grid2.Cells[3,0]:='tgl Faktur';
  Grid2.Cells[4,0]:='Total';
  Grid2.Cells[5,0]:='Nama Supp';
  Grid2.Cells[6,0]:='Tgl. Lunas';
  //Grid1.Cells[6,0]:='permintaan';
  //Grid1.Cells[7,0]:='stok';
  Grid2.ColWidths[0]:=40;
  Grid2.ColWidths[1]:=110;
  Grid2.ColWidths[2]:=160;
  Grid2.ColWidths[3]:=90;
  Grid2.ColWidths[4]:=90;
  Grid2.ColWidths[5]:=190;
  Grid2.ColWidths[6]:=90;
  //Grid1.ColWidths[7]:=50;
  //clear grid
  //StringGrid1.ClearRows(1, StringGrid1.RowCount - 1);
  //rata kanan
  //RightEdit(ed_dtotal);



end;

procedure TfrmBayar.btcariClick(Sender: TObject);
begin
TampilDatacaritgl;
PageControl1.ActivePageIndex := 0;
end;

procedure TfrmBayar.btnCariSudahClick(Sender: TObject);
begin
TampilDatacaritglSudah;
PageControl1.ActivePageIndex := 1;
end;

procedure TfrmBayar.btnsaveClick(Sender: TObject);
var
  qv : TMyQuery;
  cbopetugas:string;
begin
if MessageDlg('Proses bayar'+#13+#10+Edkodetransaksi.Text+#13+#10+
        'akan di Pembayaran Lunas, Tanggal : '+FormatDateTime('dd-mm-YY-HH:mm:SS',now),
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
      begin

      qv := TMyQuery.Create(nil);

       //simpan petugas
   if cbbpetugas.Text = '' then
      cbopetugas := ''
  else
  cbopetugas :=  cbbpetugas.EditValue;

  if (Trim(cbbpetugas.Text)='')  then
  //or (Trim(edt2.Text)='') or (Trim(edt3.Text)='') or (Trim(edt4.Text)='') or (Trim(edt5.Text)=”) then
        begin
        ShowMessage('nama Petugas Kosong..??');
        cbbpetugas.SetFocus;
        Exit;
        end;

      If PnOperasi.Caption='Tambah Data' then
   begin
	    //validasi
      //if Validasi=False then exit;

    qv.Connection := DmModul.con1;
    qv.SQL.Clear;
    qv.SQL.Text := 'Select * from tbl_bayarfaktur where no_tran_bayar = '+QuotedStr(Edkodetransaksi.Text)+'';
    qv.Open;
    if qv.RecordCount > 0 then
      begin

        if MessageDlg('Kode Sudah ada'+#13+#10+Edkodetransaksi.Text+#13+#10+
        'Buat Nomor Baru (Register), ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
       Edkodetransaksi.Text:=GetNoBBK;

       end;
        exit;
      end;
      try
           { Pilih jenis BL / KO }
           if lblstatus.Caption = 'BL' then
      begin
        sql := 'insert into tbl_bayarfaktur (no_tran_bayar,tgl_bayar,total_bayar,'+
        'id_peg,no_jual,tglcreate,id_supplier,tgl_faktur,no_faktur,'+
        'status,nilaibeli) Values('+
        QuotedStr(Edkodetransaksi.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_bayar.Date))+','+
        QuotedStr(clearDot(edTotalBayar.Text))+','+
        QuotedStr(cbopetugas)+','+
        QuotedStr(EdTrans.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
        QuotedStr(btncv.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtpFaktur.Date))+','+
        QuotedStr(edNoFaktur.Text)+','+
        QuotedStr(lblstatus.Caption)+','+
        QuotedStr(clearDot(EdNilaiFaktur.Text))+')';

 //       mmo1.Clear;
 //       mmo1.text := sql;

        ExecSQL1(sql);

        sql3 :='Update tbl_pembelian set ' +
             ' status_byr='+QuotedStr('LUNAS')+
             ' ,tgl_lunas='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_bayar.Date))+
             ' where no_tranxp='+QuotedStr(EdTrans.Text);
        ExecSQL1(sql3);
        ShowMessage('Simpan Bayar Pembelian / status :'+ Edkodetransaksi.Text);

      end
      else
      begin

      { Konsi}
              sql := 'insert into tbl_bayarfaktur (no_tran_bayar,tgl_bayar,total_bayar,'+
        'id_peg,no_jual,tglcreate,id_supplier,tgl_faktur,no_faktur,'+
        'status,nilaibeli) Values('+
        QuotedStr(Edkodetransaksi.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_bayar.Date))+','+
        QuotedStr(clearDot(edTotalBayar.Text))+','+
        QuotedStr(cbopetugas)+','+
        QuotedStr(EdTrans.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
        QuotedStr(btncv.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtpFaktur.Date))+','+
        QuotedStr(edNoFaktur.Text)+','+
        QuotedStr(lblstatus.Caption)+','+
        QuotedStr(clearDot(EdNilaiFaktur.Text))+')';

 //       mmo1.Clear;
 //       mmo1.text := sql;

        ExecSQL1(sql);

        sql3 :='Update tbl_konsinasi set ' +
             ' status_byr='+QuotedStr('LUNAS')+
             ' ,tgl_lunas='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_bayar.Date))+
             ' where no_tranxkonsi='+QuotedStr(EdTrans.Text);
        ExecSQL1(sql3);
        ShowMessage('Simpan Bayar Konsiyansi / status :'+ Edkodetransaksi.Text);
      end;







       KosongTex(True);
       TampilDatacaritgl;
       //AktifControl(Self,PnInput,False);
         except
        ShowMessage('Simpan Bayar gagal :'+ Edkodetransaksi.Text);
        raise;
      end;





   end    //end tambah
     else if PnOperasi.Caption='Ubah Data' then
   begin
        try

        if lblstatus.Caption = 'BL' then
      begin

        sql :='Update tbl_bayarfaktur set ' +
             //' status_byr='+QuotedStr('LUNAS')+
             ' ,nilaibayar='+QuotedStr(clearDot(edTotalBayar.Text))+
             ' ,tgl_bayar='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_bayar.Date))+
             ' where no_jual='+QuotedStr(EdTrans.Text);
        ExecSQL1(sql);


        sql3 :='Update tbl_pembelian set ' +
             //' status_byr='+QuotedStr('LUNAS')+

             ' ,tgl_lunas='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_bayar.Date))+
             ' where no_tranxp='+QuotedStr(EdTrans.Text);
        ExecSQL1(sql3);
        ShowMessage('Simpan Edit Bayar Pembelian / status :'+ Edkodetransaksi.Text);

      end
      else
      begin
        sql :='Update tbl_bayarfaktur set ' +
             //' status_byr='+QuotedStr('LUNAS')+
             ' ,nilaibayar='+QuotedStr(clearDot(edTotalBayar.Text))+
             ' ,tgl_bayar='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_bayar.Date))+
             ' where no_jual='+QuotedStr(EdTrans.Text);
        ExecSQL1(sql);

        sql3 :='Update tbl_konsinasi set ' +
             //' status_byr='+QuotedStr('LUNAS')+
             ' ,tgl_lunas='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_bayar.Date))+
             ' where no_tranxkonsi='+QuotedStr(EdTrans.Text);
        ExecSQL1(sql3);
        ShowMessage('Simpan Edit Bayar Konsiyansi / status :'+ Edkodetransaksi.Text);

      end;



      // ubah
     {
      sql1 :='Update tbl_penjualan set tgl_jual='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_buat.Date))+
        ',total_jual='+QuotedStr(clearDot(edGrandTotal.Text))+
        ',bayar='+QuotedStr(clearDot(EdBayar.Text))+
        ',kembali='+QuotedStr(clearDot(EdKembali.Text))+
        ',status_bayar='+QuotedStr(cbostatusbayar)+
        ',tranfers='+QuotedStr(cekTtanfer)+
        ',pelanggan='+QuotedStr(cxPelanggan.Text)+
        ',total_transfer='+QuotedStr(clearDot(cxNilaiTranfer.Text))+
        ',tgl_jatuh_tempo='+QuotedStr(tgljatuhtempo)+
      //',tglcreate='+QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+
      ',id_peg='+QuotedStr(cbopetugas)+
      ' where no_tran_jual='+QuotedStr(Edkodetransaksi.Text);

      ExecSQL1(sql1);
      }
      ShowMessage('Simpan Edit / ubah Gagal :'+ Edkodetransaksi.Text);
      except
        ShowMessage('Simpan Edit / ubah Gagal :'+ Edkodetransaksi.Text);
        raise;
      end;


       //redt_Struk.Print('Struk-' + FormatDateTime('YYYYMMDD-HHmmSS',now));
       //redt_Struk.Lines.Clear;
        end
end;
end;

procedure TfrmBayar.chkcrgid2Click(Sender: TObject);
begin
if chkcrgid2.Checked   THEN
      BEGIN
      Ed_carisupplierbayar.Visible := True;
      END
    else
    BEGIN
     Ed_carisupplierbayar.Visible := False;
  end;
end;

procedure TfrmBayar.chkgrid1Click(Sender: TObject);
begin
//EdCariSupplierbayar
if chkgrid1.Checked   THEN
      BEGIN
      EdCariSupplierbayar.Visible := True;
      END
    else
    BEGIN
     EdCariSupplierbayar.Visible := False;
  end;
end;

procedure TfrmBayar.EdCariSupplierbayarChange(Sender: TObject);
begin
if chkgrid1.checked then
begin
  Grid1.NarrowDown(EdCariSupplierbayar.Text,5);

    Totalgrid1;
end

  else
  begin
  Grid1.NarrowDown(EdCariSupplierbayar.Text);
  end;

end;

procedure TfrmBayar.EdNilaiFakturChange(Sender: TObject);
begin
if EdNilaiFaktur.text = '' then Exit;
formatRupiah(EdNilaiFaktur);
end;

procedure TfrmBayar.edTotalBayarChange(Sender: TObject);
begin
if edTotalBayar.text = '' then Exit;
formatRupiah(edTotalBayar);
end;

procedure TfrmBayar.Ed_carisupplierbayarChange(Sender: TObject);
begin

if chkcrgid2.checked then
begin
  Grid2.NarrowDown(Ed_carisupplierbayar.Text,5);

    Totalgrid2;
end

  else
  begin
  Grid2.NarrowDown(Ed_carisupplierbayar.Text);
  end;

end;

Procedure TfrmBayar.TampilDatacaritgl;
  var
  spdatablmbayar : TMyStoredProc;
  i : integer;
  begin
   aturgrid1;
   spdatablmbayar:= TMyStoredProc.Create(nil);
   spdatablmbayar.Connection := DmModul.con1;
  try
    spdatablmbayar.Close;
    spdatablmbayar.StoredProcName := 'sp_GETBelumBayar';
    spdatablmbayar.PrepareSQL;
    spdatablmbayar.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp1.date); //key ba
    spdatablmbayar.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key ba
    //spdata.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    //spdata.ParamByName('cari').AsString := cxcariKeluar.text;
    spdatablmbayar.Open;

    //cxLabel11.Caption := inttostr(spdata.RecordCount) +' record ';


    if spdatablmbayar.Eof then
    begin
    ShowMessage('data Tanggal YANG DICARI tidak ada :'+ FormatDateTime('yyyy-mm-dd',dtp1.date)+' s/d '+FormatDateTime('yyyy-mm-dd',dtp2.date) );
    //ShowMessage('data YANG DICARI tidak ada :'+ edcarinomor.Text);
    exit;
    end;


     for i:=1 to Grid1.RowCount-1 do begin
        Grid1.Cells[0,i]:='';
        Grid1.Cells[1,i]:='';
        Grid1.Cells[2,i]:='';
        Grid1.Cells[3,i]:='';
        Grid1.Cells[4,i]:='';
        Grid1.Cells[5,i]:='';
        Grid1.Cells[6,i]:='';
    end;


    //isi grid

    counter:=0;
      if  spdatablmbayar.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= spdatablmbayar.RecordCount+1;


    while not spdatablmbayar.Eof do begin
          Inc(counter);   //IntToStr(counter);
          Grid1.Cells[0,counter]:=IntToStr(counter); //No.
          Grid1.Cells[1,counter]:=spdatablmbayar.FieldByName('no_tranxp').AsString;
          Grid1.Cells[2,counter]:=spdatablmbayar.FieldByName('no_faktur').AsString;
          Grid1.Cells[3,counter]:=spdatablmbayar.FieldByName('tgl_pembelian').AsString;
          Grid1.Cells[4,counter]:=spdatablmbayar.FieldByName('total_pembelian').AsString;
          Grid1.Cells[5,counter]:=spdatablmbayar.FieldByName('nama_supp').AsString;
          Grid1.Cells[6,counter]:=spdatablmbayar.FieldByName('jth_tempo').AsString;
          //Grid2.Cells[5,counter]:=spdata.FieldByName('gudang').AsString;
          {
          grid2.ShowSelection := True;
          for i := 1 to grid2.RowCount - 1 do
          grid2.AddCheckBox(4, i, false, false);
           }
          spdatablmbayar.Next;
    end;
    Totalgrid1;
    finally
    spdatablmbayar.Close;
    //PageControl1.Pages.TabIndex :=0;
    end;
  end;

Procedure TfrmBayar.TampilDatacaritglSudah;
  var
  spdatablmbayar : TMyStoredProc;
  i : integer;
  begin
   aturgrid2;
   spdatablmbayar:= TMyStoredProc.Create(nil);
   spdatablmbayar.Connection := DmModul.con1;
  try
    spdatablmbayar.Close;
    spdatablmbayar.StoredProcName := 'sp_GETLunas';
    spdatablmbayar.PrepareSQL;
    spdatablmbayar.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp1.date); //key ba
    spdatablmbayar.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key ba
    //spdata.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    //spdata.ParamByName('cari').AsString := cxcariKeluar.text;
    spdatablmbayar.Open;

    //cxLabel11.Caption := inttostr(spdata.RecordCount) +' record ';


    if spdatablmbayar.Eof then
    begin
    ShowMessage('data LUNAS Tanggal YANG DICARI tidak ada :'+ FormatDateTime('yyyy-mm-dd',dtp1.date)+' s/d '+FormatDateTime('yyyy-mm-dd',dtp2.date) );
    //ShowMessage('data YANG DICARI tidak ada :'+ edcarinomor.Text);
    exit;
    end;


     for i:=1 to Grid2.RowCount-1 do begin
        Grid2.Cells[0,i]:='';
        Grid2.Cells[1,i]:='';
        Grid2.Cells[2,i]:='';
        Grid2.Cells[3,i]:='';
        Grid2.Cells[4,i]:='';
        Grid2.Cells[5,i]:='';
        Grid2.Cells[6,i]:='';
    end;


    //isi grid

    counter:=0;
      if  spdatablmbayar.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= spdatablmbayar.RecordCount+1;


    while not spdatablmbayar.Eof do begin
          Inc(counter);   //IntToStr(counter);
          Grid2.Cells[0,counter]:=IntToStr(counter); //No.
          Grid2.Cells[1,counter]:=spdatablmbayar.FieldByName('no_tranxp').AsString;
          Grid2.Cells[2,counter]:=spdatablmbayar.FieldByName('no_faktur').AsString;
          Grid2.Cells[3,counter]:=spdatablmbayar.FieldByName('tgl_pembelian').AsString;
          Grid2.Cells[4,counter]:=spdatablmbayar.FieldByName('total_pembelian').AsString;
          Grid2.Cells[5,counter]:=spdatablmbayar.FieldByName('nama_supp').AsString;
          Grid2.Cells[6,counter]:=spdatablmbayar.FieldByName('tgl_lunas').AsString;
          //Grid2.Cells[5,counter]:=spdata.FieldByName('gudang').AsString;
          {
          grid2.ShowSelection := True;
          for i := 1 to grid2.RowCount - 1 do
          grid2.AddCheckBox(4, i, false, false);
           }
          spdatablmbayar.Next;
    end;
    Totalgrid2;
    finally
    spdatablmbayar.Close;
    //PageControl1.Pages.TabIndex :=0;
    end;
  end;

procedure TfrmBayar.tmr1Timer(Sender: TObject);
begin
//cxlbljam.caption:=TimeToStr(Now);
Edkodetransaksi.Font.Color := Trunc(clBLUE*random);
PnOperasi.Font.Color := Trunc(clBLUE*random);
end;


procedure TfrmBayar.Totalgrid1;
begin
//JML_BRG:=0;
total_nilai:=0;
   for i:=1 to Grid1.RowCount-1 do begin
        //JML_BRG:=JML_BRG+strtofloat(Grid1.Cells[4,i]);
        total_nilai:=total_nilai+strtofloat(Grid1.Cells[4,i]);
   end;
  // edt_jml_barang.Text:=floattostr(JML_BRG);
   EdTotalblmbayar.Text:=floattostr(total_nilai);
   formatRupiah(EdTotalblmbayar);
end;


procedure TfrmBayar.Totalgrid2;
begin
//JML_BRG:=0;
total_nilai:=0;
   for i:=1 to Grid2.RowCount-1 do begin
        //JML_BRG:=JML_BRG+strtofloat(Grid1.Cells[4,i]);
        total_nilai:=total_nilai+strtofloat(Grid2.Cells[4,i]);
   end;
  // edt_jml_barang.Text:=floattostr(JML_BRG);
   edTotalLunas.Text:=floattostr(total_nilai);
   formatRupiah(edTotalLunas);
end;


Procedure TfrmBayar.TampilData_pembelian;
  var
    q2 : TMyQuery;
  Begin
    q2 := TMyQuery.Create(nil);
    q2.Connection := DmModul.con1;
  try
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text :='select * from tbl_pembelian inner join tbl_supplier ON tbl_pembelian.no_supplier =  tbl_supplier.no_supp  where no_tranxp='+QuotedStr(EdTrans.Text)+'';
  q2.Open;

  if q2.RecordCount > 0 then
  begin

    KosongTex(True);
    //ambil Pembelian;
    edNoFaktur.Text:=q2.FieldByName('no_faktur').AsString;
    EdTrans.Text:=q2.FieldByName('no_tranxp').AsString;
    dtpFaktur.date:=q2.FieldByName('tgl_pembelian').AsDateTime;
    dtpJatuhTempo.date:=q2.FieldByName('jth_tempo').AsDateTime;
    EdNilaiFaktur.Text:=q2.FieldByName('total_pembelian').AsString;
    btncv.Text:=q2.FieldByName('no_supplier').AsString;
    cxlblnamacv.Caption :=q2.FieldByName('nama_supp').AsString;
    cbbpetugas.EditValue:=q2.FieldByName('id_peg').AsString;
    edTotalBayar.Text:=q2.FieldByName('total_pembelian').AsString;
  end
  else
    begin
    ShowMessage( 'data kosong Faktur / Tidak ADA : ' + EdTrans.Text );
    end;

  finally
    q2.Close;
    q2.Free;
  end;


  end;


  Procedure TfrmBayar.TampilData_ubahBayar;
  var
    q3 : TMyQuery;
  Begin
    q3 := TMyQuery.Create(nil);
    q3.Connection := DmModul.con1;
  try
  q3.Active := false;
  q3.SQL.Clear;
  q3.SQL.Text :='select * from tbl_bayarfaktur inner join tbl_supplier ON tbl_bayarfaktur.id_supplier =  tbl_supplier.no_supp  where no_jual='+QuotedStr(EdTrans.Text)+'';
  q3.Open;

  if q3.RecordCount > 0 then
  begin

    KosongTex(True);
    //ambil Pembelian;
    edNoFaktur.Text:=q3.FieldByName('no_faktur').AsString;
    EdTrans.Text:=q3.FieldByName('no_jual').AsString;
    dtpFaktur.date:=q3.FieldByName('tgl_faktur').AsDateTime;
    //dtpJatuhTempo.date:=q2.FieldByName('jth_tempo').AsDateTime;
    EdNilaiFaktur.Text:=q3.FieldByName('nilaibeli').AsString;
    btncv.Text:=q3.FieldByName('id_supplier').AsString;
    cxlblnamacv.Caption :=q3.FieldByName('nama_supp').AsString;
    cbbpetugas.EditValue:=q3.FieldByName('id_peg').AsString;
    edTotalBayar.Text:=q3.FieldByName('total_bayar').AsString;
  end
  else
    begin
    ShowMessage( 'data kosong EDit Lunas / Tidak ADA : ' + EdTrans.Text );
    end;

  finally
    q3.Close;
    q3.Free;
  end;


  end;


  Procedure TfrmBayar.TampilData_konsi;
  var
    q3 : TMyQuery;
  Begin
    q3 := TMyQuery.Create(nil);
    q3.Connection := DmModul.con1;
  try
  q3.Active := false;
  q3.SQL.Clear;
  q3.SQL.Text :='select * from tbl_konsinasi inner join tbl_supplier ON tbl_konsinasi.no_supplier =  tbl_supplier.no_supp  where no_tranxkonsi='+QuotedStr(EdTrans.Text)+'';
  q3.Open;

  if q3.RecordCount > 0 then
  begin

    KosongTex(True);
    //ambil Pembelian;
    edNoFaktur.Text:=q3.FieldByName('no_konsi').AsString;
    EdTrans.Text:=q3.FieldByName('no_tranxkonsi').AsString;
    dtpFaktur.date:=q3.FieldByName('tgl_konsinasi').AsDateTime;
    dtpJatuhTempo.date:=q3.FieldByName('jth_tempo').AsDateTime;
    EdNilaiFaktur.Text:=q3.FieldByName('total_konsinasi').AsString;
    btncv.Text:=q3.FieldByName('no_supplier').AsString;
    cxlblnamacv.Caption :=q3.FieldByName('nama_supp').AsString;
    cbbpetugas.EditValue:=q3.FieldByName('id_peg').AsString;
    edTotalBayar.Text:=q3.FieldByName('total_konsinasi').AsString;
  end
  else
    begin
    ShowMessage( 'data kosong Konsiyansi / Tidak ADA : ' + EdTrans.Text );
    end;

  finally
    q3.Close;
    q3.Free;
  end;


  end;



Procedure TfrmBayar.Tampil_combo_Petugas;
 var
 q6,q7,q8,q9 : TMyQuery;

begin

  q6 := TMyQuery.Create(nil);
  try
  q6.Connection := DmModul.con1;
  q6.Active := false;
  q6.SQL.Clear;
  //q6.SQL.Text := 'Select nip,NM_p from m_petugas order by nip';
  q6.SQL.Text := 'Select * FROM tbl_pegawai order by nama_peg';
  //+
   //' where gudang = ' + QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
   //' AND aktif =1 order by NM_p';

  //q2.SQL.Text := 'Select nip, CONCAT(gol, " , ", nm_gol) as nm  from r_gol';
  q6.Open;
    if q6.RecordCount > 0 then
  begin
  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString
    ds6.DataSet := q6;
  cbbpetugas.Properties.ListSource := ds6;
  cbbpetugas.Properties.ListOptions.ShowHeader := False;
  cbbpetugas.Properties.ListFieldNames := 'nama_peg';
  cbbpetugas.Properties.KeyFieldNames := 'idpegawai';

//    Advcbo.ListSource := ds6;
//    Advcbo.DataField := q6.FieldByName('nama_peg').AsString;
//    advcbo.KeyField := q6.FieldByName('idpegawai').AsString;
   //advcbo.ItemIndex

  end;

//          while not qcom1.Eof do
//        begin
//        cbb_satuan.Items.Add(qcom1.FieldByName('sat_obat').AsString);
//        qcom1.Next;
//        end;

   finally
  //  q2.Close;
  //  q2.Free;
  end;
  end;


procedure TfrmBayar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmBayar:=nil;
  Action:=caFree;
end;

end.
