unit Un_master_brg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLabel, cxTextEdit, Grids, BaseGrid, AdvGrid,
  ExtCtrls, Buttons, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, DB, MemDS, DBAccess, MyAccess,
  EXLReportExcelTLB, EXLReportBand, EXLReport, StdCtrls, cxMemo,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ComCtrls,
  cxCurrencyEdit, AdvObj;

type
  Tfrm_m_brg = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    grid1: TAdvStringGrid;
    pnl4: TPanel;
    cxkode: TcxTextEdit;
    cxlbl1: TcxLabel;
    cxLabel1: TcxLabel;
    edcxstok: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    edcxhrgbeli: TcxTextEdit;
    cxLabel5: TcxLabel;
    edcxhrgjual: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edcxmerk: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    edcxformula: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    edcxnmdagang: TcxTextEdit;
    cxLabel13: TcxLabel;
    cbbcxcbodistri: TcxComboBox;
    cxLabel14: TcxLabel;
    edcxstokmin: TcxTextEdit;
    cxLabel15: TcxLabel;
    pnl5: TPanel;
    cxLabel16: TcxLabel;
    btnBtnBaru: TSpeedButton;
    btnBtnUbah1: TSpeedButton;
    btnBtnHapus: TSpeedButton;
    btnsave: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dlgOpen1: TOpenDialog;
    cxlbl2: TcxLabel;
    ednobatch: TcxTextEdit;
    mystrdprc1: TMyStoredProc;
    lbl1: TLabel;
    PnOperasi1: TSpeedButton;
    ed1: TcxTextEdit;
    ed_nama: TcxMemo;
    cxlblcxisi: TcxLabel;
    ed_isi: TcxTextEdit;
    ed_nmgenerik: TcxMemo;
    cxlbl3: TcxLabel;
    cbbsat: TComboBox;
    cbb_pbf: TComboBox;
    ds1: TMyDataSource;
    cxl_bidang: TcxLookupComboBox;
    cxl1: TcxLookupComboBox;
    dtp_ed: TDateTimePicker;
    PnOperas1: TPanel;
    PnOperasi2: TSpeedButton;
    PnOperasi3: TSpeedButton;
    PnOperasi4: TSpeedButton;
    PnOperasi5: TSpeedButton;
    PnOperas2: TPanel;
    btnnobaru: TSpeedButton;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    Pnket: TPanel;
    ds2: TMyDataSource;
    edcxfaktor: TcxTextEdit;
    cxlbl4: TcxLabel;
    cxlbl5: TcxLabel;
    exlrprt1: TEXLReport;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: String);
    procedure PnOperasi1Click(Sender: TObject);
    procedure grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnnobaruClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure PnOperasi2Click(Sender: TObject);
    procedure PnOperasi3Click(Sender: TObject);
    procedure PnOperasi4Click(Sender: TObject);
    procedure PnOperasi5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Procedure loaddata;
  Procedure Aturgrid;
  procedure combo_sat;
  procedure combo_penyedia;

  procedure bidang_barang;
  procedure jenis_barang;
  procedure tampil_form;

  end;

var
  frm_m_brg: Tfrm_m_brg;
  hapus_baris,counter:Integer;
  sql : string;

implementation

uses UnModul,UnCarisp,UFunctions,UF_dbsql,UF_setting,uDBXls;
{$R *.dfm}

procedure Tfrm_m_brg.tampil_form;
var
  qbrg : TMyQuery;
begin

  qbrg := TMyQuery.Create(nil);
  qbrg.Connection := DmModul.con1;

  try
  qbrg.Active := false;
  qbrg.SQL.Clear;
  qbrg.SQL.Text := 'select * from m_barang where kode_brg = '
  +QuotedStr(cxkode.Text)+'';
  qbrg.Open;

    if qbrg.RecordCount > 0 then
  begin
   Ed_nama.Text:=qbrg.FieldByName('nama_barang').AsString;
   cbbsat.Text:=qbrg.FieldByName('satuan_masuk').AsString;
   //Ed_no.Text:=qbrg.FieldByName('satuan_jual').AsString;
   edcxhrgbeli.Text:=qbrg.FieldByName('harga_beli').AsString;
   edcxhrgjual.Text:=qbrg.FieldByName('harga_jual').AsString;
   edcxmerk.Text:=qbrg.FieldByName('merk').AsString;
  // cbb_pbf.Text:=qbrg.FieldByName('pbf').AsString;
  // cxl1.EditValue:=qbrg.FieldByName('jns_barang').AsString;
   edcxformula.Text:=qbrg.FieldByName('formulasi').AsString;
   edcxfaktor.Text :=qbrg.FieldByName('faktor').AsString;
   edcxnmdagang.Text:=qbrg.FieldByName('nm_dagang').AsString;
   //Ed_no.Text:=qbrg.FieldByName('j_c').AsString;
   ed_nmgenerik.Text:=qbrg.FieldByName('nm_generik').AsString;
   cxl_bidang.EditValue:=qbrg.FieldByName('kd_bidang').AsString;
   //dtp_ed.date:=qbrg.FieldByName('tgl_ed').AsDateTime;
   ednobatch.Text:=qbrg.FieldByName('no_batch').AsString;
   edcxstokmin.Text:=qbrg.FieldByName('stok_min').AsString;
   ed_isi.Text:=qbrg.FieldByName('isi').AsString;




    if VarIsNull(qbrg['tgl_ed']) then
        begin
       dtp_ed.ShowCheckbox :=true;
       dtp_ed.Checked := false;
       dtp_ed.Color := clRed;
      end
        else
      begin
        dtp_ed.date:=qbrg.FieldByName('tgl_ed').AsDateTime;
        dtp_ed.Color := clYellow;
      end;

  end
  else
    begin
    ShowMessage( 'Data Belum Ada : ' + cxkode.Text );
    end;

  finally
    qbrg.Close;
    qbrg.Free;
  end;
  end;

procedure Tfrm_m_brg.bidang_barang;
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

  ds2.DataSet := q_bid;
  cxl_bidang.Properties.ListSource := ds2;
  cxl_bidang.Properties.ListFieldNames := 'bid_nama';
  cxl_bidang.Properties.KeyFieldNames := 'kd_bidang';

  end;

except
  ShowMessage('data Bidang Barang tidak ada');
  q_bid.Close;
  q_bid.Free;
end;


end;


procedure Tfrm_m_brg.jenis_barang;
var q_jns : TMyQuery;

begin
 q_jns := TMyQuery.Create(nil);
  try
  q_jns.Connection := DmModul.con1;
  q_jns.Active := false;
  q_jns.SQL.Clear;
  q_jns.SQL.Text := 'Select * from ref_jenis';
  q_jns.Open;
    if q_jns.RecordCount > 0 then
  begin
  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString
  ds1.DataSet := q_jns;
  cxl1.Properties.ListSource := ds1;
  cxl1.Properties.ListFieldNames := 'jns_nama';
  cxl1.Properties.KeyFieldNames := 'kd_jns';
  end;

except
  ShowMessage('data Jenis tidak ada');
  q_jns.Close;
  q_jns.Free;
end;


end;



procedure Tfrm_m_brg.combo_sat;
var q_sat : TMyQuery;

begin
  q_sat := TMyQuery.Create(nil);
try
    q_sat.Connection := DmModul.con1;
    q_sat.Close;
    q_sat.SQL.Text:=
      'select satuan_masuk from m_barang' +
      ' group by satuan_masuk '+
      ' order by satuan_masuk ';
    q_sat.Open;
    cbbsat.Items.Clear;
while not q_sat.Eof do
begin
cbbsat.Items.Add(q_sat.FieldByName('satuan_masuk').AsString);
q_sat.Next;
end;

finally
    q_sat.Close;
    q_sat.Free;
  end;

end;

procedure Tfrm_m_brg.combo_penyedia;
var q_peny : TMyQuery;

begin
  q_peny := TMyQuery.Create(nil);
try
    q_peny.Connection := DmModul.con1;
    q_peny.Close;
    q_peny.SQL.Text:=
      'select a.pbf from m_barang a ' +
      ' group by a.pbf '+
      ' order by a.pbf ';
    q_peny.Open;
    cbb_pbf.Items.Clear;
while not q_peny.Eof do
begin
cbb_pbf.Items.Add(q_peny.FieldByName('pbf').AsString);
q_peny.Next;
end;

finally
    q_peny.Close;
    q_peny.Free;
  end;

end;

procedure Tfrm_m_brg.SpeedButton1Click(Sender: TObject);
var
Fields,Types: TStringList;
datafile : string;
begin

if messagedlg('Database Sudah dibackup'+#13#10+
'Barangkali hasil Import tidak sesuai dengan yang diharapkan'+
#13#10+'dilanjutkan?', mtConfirmation, [mbyes, mbNo], 0) = mryes then
begin

dlgOpen1.Title := 'Import data Excel';
//dlgOpen1.InitialDir:= apDirxls;
dlgOpen1.Filter := 'MS Excel 2003|*.xls*|ms Excel 2007|*.xlsx';
if dlgOpen1.Execute then
  begin
    datafile:=dlgOpen1.FileName;
    Fields:=TStringList.Create;

  Fields.Text:=
  'Kode'+#10+ // 0
  'nama_barang'+#10+ //0
  'satuan_beli'+#10+ //0
  'satuan_jual'+#10+ //0
  'harga_beli'+#10+ // 1
  'harga_jual'+#10+// 1
  'tgl_update'+#10+ // 2
  'no_batch'+#10+ // 0
  'stok_min'+#10+ // 1
  'isi'; // 1
//  'n_t2';  //akhir Fields //9
  Types:=TStringList.Create;
  //Types.Text:='1'+#10+'0'+#10+'0'+#10+'2'+#10+'1';

  Types.Text:=
  '0'+#10+
  '0'+#10+
  '0'+#10+
  '0'+#10+
  '1'+#10+
  '1'+#10+
  '0'+#10+
  '0'+#10+
  '0'+#10+
  '0'+#10+
  '1'+#10+
  '0'+#10+
  '1'+#10+
  '0'+#10+
  '0'+#10+
  '2'+#10+
  '0'+#10+
  '1'+#10+
  '1';

  //'1'; //akhir type data : 0 -> string , 1 -> nilai, 2 -> date

  //nama_sheet, table nama
    Screen.cursor := crsqlWait;
//  if uDBXls.Importbarang(datafile, 'import_brg', 'm_barang', Fields, Types) then
//    showmessage('Sukses Import')
//  else showmessage('Gagal Import');
   Screen.cursor := crDefault;

  end;
end;

end;

procedure Tfrm_m_brg.SpeedButton2Click(Sender: TObject);
var
 spxls : TMyStoredProc;
begin
   spxls := TMyStoredProc.Create(nil);
    try
      spxls.Connection := DmModul.con1;
      spxls.Close;
      spxls.StoredProcName := 'sp_exportbrg';
      spxls.PrepareSQL;
      //spxls.ParamByName('cari').AsString := cb1.text; //key ba
      //spDs.ParamByName('cari2').AsString := Edit2.text; //key ba
	    spxls.Execute;
      exlrprt1.template :=GetCurrentDir + '\xls\'+'expbrg20.xls';
      //exlrprt1.template :=apdirxls+'import_brg15.xls';
      exlrprt1.Dataset:=spxls;
      exlrprt1.TemplSheet :='brg';
      exlrprt1.Show();
      finally
      spxls.Close;
      end;
end;

Procedure Tfrm_m_brg.loaddata;
var
  spdata : TMyStoredProc;
  i,counter : integer;
begin
   spdata:= TMyStoredProc.Create(nil);
   spdata.Connection := DmModul.con1;
  try
    spdata.Close;
    spdata.StoredProcName := 'sp_barang_load';
    spdata.PrepareSQL;
    //spdata.ParamByName('tgl1').AsString := tgl1;
    //spdata.ParamByName('tgl2').AsString := tgl2;
    //spdata.ParamByName('cari').AsString := EdNokwi.text;
    spdata.Execute;

    lbl1.Caption := inttostr(spdata.RecordCount) +' record ';


    if spdata.Eof then
    begin
    ShowMessage('data tidak ada/ blm Lengkap');
    exit;
    end;

     for i:=1 to Grid1.RowCount-1 do begin
        Grid1.Cells[0,i]:='';
        Grid1.Cells[1,i]:='';
        Grid1.Cells[2,i]:='';
        Grid1.Cells[3,i]:='';
        //Grid2.Cells[4,i]:=''; //K
        //Grid2.Cells[5,i]:=''; //L
        //Grid2.Cells[6,i]:=''; //s
    end;
    //isi grid

    counter:=0;
      if  spdata.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= spdata.RecordCount+1;


    while not spdata.Eof do begin
          Inc(counter);
          Grid1.Cells[0,counter]:=spdata.FieldByName('kode_brg').AsString; //No.
          Grid1.Cells[1,counter]:=spdata.FieldByName('nama_barang').AsString;
          Grid1.Cells[2,counter]:=spdata.FieldByName('satuan_masuk').AsString;
          Grid1.Cells[3,counter]:=spdata.FieldByName('harga_jual').AsString;
          //Grid2.Cells[4,counter]:=spdata.FieldByName('K').AsString;
          //Grid2.Cells[5,counter]:=spdata.FieldByName('L').AsString;
          //Grid2.Cells[6,counter]:=spdata.FieldByName('S').AsString;
          {
          grid2.ShowSelection := True;
          for i := 1 to grid2.RowCount - 1 do
          grid2.AddCheckBox(4, i, false, false);
           }
          spdata.Next;
    end;

    finally
    spdata.Close;
    end;

end;

procedure Tfrm_m_brg.FormCreate(Sender: TObject);
begin
Aturgrid;
loaddata;
combo_sat;
//combo_penyedia;
bidang_barang;
jenis_barang;


end;

procedure Tfrm_m_brg.grid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
//warna grid
if ((ACol = 2) and (ARow > 0)) then
  begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

  if ((ACol = 3) and (ARow > 0)) then
      begin
    ABrush.Color := clYellow;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;


if ((ACol = 4) and (ARow > 0)) then
  begin

   if (Grid1.Cells[ACol, ARow] = '0')
    then
    begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

   if (Grid1.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clWhite;
    AFont.Color := clBlack;
    //AFont.Style := [fsBold];
  end;
  end;
end;

procedure Tfrm_m_brg.grid1GetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
begin
isFloat := Acol in [3];
case ACol of
 // 3: Floatformat :='%.0n';
 // 5: Floatformat :='%.0n';
  3: Floatformat :='%.0n';
 // 7: Floatformat :='%.0n';
 // 8: Floatformat :='%.0n';
end;
end;

Procedure Tfrm_m_brg.Aturgrid;
begin
  counter:=0;
  hapus_baris:=0;

  Grid1.ColCount:=4;
  Grid1.RowCount:=2;
  Grid1.FixedCols:=0;
  Grid1.DefaultRowHeight:=20;
  //Grid1.Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect];
  Grid1.Cells[0,0]:='kode';
  Grid1.Cells[1,0]:='nama';
  Grid1.Cells[2,0]:='Satuan';
  Grid1.Cells[3,0]:='@harga';
  //Grid1.Cells[4,0]:='@harga';
  //Grid1.Cells[5,0]:='Satuan';
  //Grid1.Cells[6,0]:='Harga';
  //Grid1.Cells[7,0]:='Total';

  Grid1.ColWidths[0]:=70;
  Grid1.ColWidths[1]:=250;
  Grid1.ColWidths[2]:=70;
  Grid1.ColWidths[3]:=70;
  //Grid1.ColWidths[4]:=70;
  //Grid1.ColWidths[5]:=50;
  //Grid1.ColWidths[6]:=80;
  //Grid1.ColWidths[7]:=90;

 end;

procedure Tfrm_m_brg.PnOperasi1Click(Sender: TObject);
var
  spdata : TMyStoredProc;
  i,counter : integer;
begin
   spdata:= TMyStoredProc.Create(nil);
   spdata.Connection := DmModul.con1;
  try
    spdata.Close;
    spdata.StoredProcName := 'sp_barang';
    spdata.PrepareSQL;
    spdata.ParamByName('cari').AsString := ed1.text;
    //spdata.ParamByName('tgl2').AsString := tgl2;
    //spdata.ParamByName('cari').AsString := EdNokwi.text;
    spdata.Execute;

    lbl1.Caption := inttostr(spdata.RecordCount) +' record ';


    if spdata.Eof then
    begin
    ShowMessage('data tidak ada/ blm Lengkap');
    exit;
    end;

     for i:=1 to Grid1.RowCount-1 do begin
        Grid1.Cells[0,i]:='';
        Grid1.Cells[1,i]:='';
        Grid1.Cells[2,i]:='';
        Grid1.Cells[3,i]:='';
        //Grid2.Cells[4,i]:=''; //K
        //Grid2.Cells[5,i]:=''; //L
        //Grid2.Cells[6,i]:=''; //s
    end;
    //isi grid

    counter:=0;
      if  spdata.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= spdata.RecordCount+1;


    while not spdata.Eof do begin
          Inc(counter);
          Grid1.Cells[0,counter]:=spdata.FieldByName('kode_brg').AsString; //No.
          Grid1.Cells[1,counter]:=spdata.FieldByName('nama_barang').AsString;
          Grid1.Cells[2,counter]:=spdata.FieldByName('satuan_masuk').AsString;
          Grid1.Cells[3,counter]:=spdata.FieldByName('harga_jual').AsString;
          //Grid2.Cells[4,counter]:=spdata.FieldByName('K').AsString;
          //Grid2.Cells[5,counter]:=spdata.FieldByName('L').AsString;
          //Grid2.Cells[6,counter]:=spdata.FieldByName('S').AsString;
          {
          grid2.ShowSelection := True;
          for i := 1 to grid2.RowCount - 1 do
          grid2.AddCheckBox(4, i, false, false);
           }
          spdata.Next;
    end;

    finally
    spdata.Close;
    end;

end;

procedure Tfrm_m_brg.grid1DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
cxkode.Text := Grid1.Cells[0,AROW];
tampil_form;
Pnket.Caption := 'Ubah Data';
end;

procedure Tfrm_m_brg.btnnobaruClick(Sender: TObject);
begin
 //cxkode.Text:=buat_kode('m_barang','kode','ak-');
 cxl_bidang.EditValue := '1';
 cxl1.EditValue := '3';


end;

procedure Tfrm_m_brg.btn1Click(Sender: TObject);
begin
 //cxkode.Text:=buat_kode('m_barang','kode','pt-');
 cxl_bidang.EditValue := '2';
 cxl1.EditValue := '1';

end;

procedure Tfrm_m_brg.btn2Click(Sender: TObject);
begin
 //cxkode.Text:=buat_kode('m_barang','kode','ge-');
 cxl_bidang.EditValue := '2';
 cxl1.EditValue := '2';

 end;

procedure Tfrm_m_brg.PnOperasi2Click(Sender: TObject);
begin
Pnket.Caption := 'Tambah Data';
end;

procedure Tfrm_m_brg.PnOperasi3Click(Sender: TObject);
begin
Pnket.Caption := 'Ubah Data';
end;

procedure Tfrm_m_brg.PnOperasi4Click(Sender: TObject);
begin
Pnket.Caption := 'hapus';
end;

procedure Tfrm_m_brg.PnOperasi5Click(Sender: TObject);
var
  AdDsData : TMyQuery;
  i : Integer;
begin

if MessageDlg('Data dengan'+#13+#10+cxkode.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin

If Pnket.Caption='Tambah Data' then
   begin
      //if Validasi=False then exit;

      AdDsData := TMyQuery.Create(nil);
      AdDsData.Connection := DmModul.con1;

      AdDsData.Close;
      AdDsData.SQL.Text:='Select kode from m_barang where kode_brg='+
      QuotedStr(cxkode.Text)+'';
      AdDsData.Open;
      if AdDsData.RecordCount > 0 then
      begin
        MessageDlg('Kode sudah ada'+cxkode.Text+'?',mtInformation,[mbok],0);
        cxkode.Enabled:= true;
        cxkode.SetFocus;
        exit;
      end;
      try
        sql := 'insert into m_barang(Kode_brg,nama_barang,satuan_masuk,harga_beli,harga_jual,merk,pbf,'+
        'jns_barang,formulasi,faktor,nm_dagang,nm_generik,kd_bidang,tgl_ed,no_batch,stok_min,isi) Values('+
        QuotedStr(cxkode.Text)+','+
	QuotedStr(Ed_nama.Text)+','+
	QuotedStr(cbbsat.Text)+','+
	QuotedStr(edcxhrgbeli.Text)+','+
	QuotedStr(edcxhrgjual.Text)+','+
	QuotedStr(edcxmerk.Text)+','+
	QuotedStr(cbb_pbf.Text)+','+
	QuotedStr(cxl1.EditValue)+','+
	QuotedStr(edcxformula.Text)+','+
	QuotedStr(edcxfaktor.Text)+','+
	QuotedStr(edcxnmdagang.Text)+','+
	QuotedStr(ed_nmgenerik.Text)+','+
	QuotedStr(cxl_bidang.EditValue)+','+
	QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_ed.Date))+','+
	QuotedStr(ednobatch.Text)+','+
	QuotedStr(edcxstokmin.Text)+','+
	QuotedStr(ed_isi.Text)+')';

        //QuotedStr(Ed_t_hr.Text)+')'; --End simpan
        ExecSQL1(sql);
        ShowMessage('Simpan ok :'+ cxkode.Text);
        //KosongTex(True);
        //AktifControl(Self,PnInput,False);
         except
        ShowMessage('Simpan baru gagal :'+ cxkode.Text);
        raise;
      end;

   end    //end tambah

   else if Pnket.Caption='Ubah Data' then
   begin
        //if Validasi=False then exit;
        try
      // ubah
        sql := 'Update m_barang set Kode_brg='+QuotedStr(cxkode.Text)+
	',nama_barang='+QuotedStr(Ed_nama.Text)+
	',satuan_masuk='+QuotedStr(cbbsat.Text)+
	',harga_beli='+QuotedStr(edcxhrgbeli.Text)+
	',harga_jual='+QuotedStr(edcxhrgjual.Text)+
	',merk ='+QuotedStr(edcxmerk.Text)+
	',pbf ='+QuotedStr(cbb_pbf.Text)+
	',jns_barang ='+QuotedStr(cxl1.EditValue)+
	',formulasi='+QuotedStr(edcxformula.Text)+
	',faktor ='+QuotedStr(edcxfaktor.Text)+
	',nm_dagang='+QuotedStr(edcxnmdagang.Text)+
	',nm_generik='+QuotedStr(ed_nmgenerik.Text)+
	',kd_bidang='+QuotedStr(cxl_bidang.EditValue)+
	',tgl_ed='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_ed.Date))+
	',no_batch='+QuotedStr(ednobatch.Text)+
	',stok_min='+QuotedStr(edcxstokmin.Text)+
	',isi='+QuotedStr(ed_isi.Text)+
        'where Kode_brg='+
        QuotedStr(cxkode.Text);
        ExecSQL1(sql); //simpan Edit

        ShowMessage('Simpan Perubahan ok :'+ cxkode.Text);
        //KosongTex(True);
        //AktifControl(Self,PnInput,False);
      except
        ShowMessage('Simpan Edit / ubah Gagal :'+ cxkode.Text);
        raise;
      end;

     
     // KosongTex(True);
   end //end Update
   else if Pnket.Caption='Hapus Data' then
   begin
      if MessageDlg('Data dengan'+#13+#10+cxkode.Text+#13+#10+
        'akan di Hapus, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
        begin
      try
      // delete
        SQL := 'delete from m_barang where kode='+
        QuotedStr(cxkode.Text)+'';
        ExecSQL1(sql); //Hapus

        ShowMessage('Hapus / :'+ cxkode.Text);
       // KosongTex(True);
       // AktifControl(Self,PnInput,False);
      except
             ShowMessage('Hapus Gagal :'+ cxkode.Text);
        raise;
      end;
        end;
    end; //selesai Proses
end; //end tanya
end;

end.
