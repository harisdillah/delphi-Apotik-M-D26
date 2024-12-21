unit UnPembelianBrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver,  dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, ComCtrls,
  AdvShapeButton, StdCtrls, Buttons, DB, DBAccess, MyAccess, Grids,
  BaseGrid, AdvGrid, MemDS, cxCalendar, cxMemo, AdvObj,nuest, AdvUtil, AsgCombo,
  ColorCombo, AdvCombo;

type
  TFrmPembelian = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    cxlbl1: TcxLabel;
    btnnoreg: TcxButtonEdit;
    SpeedButton2: TSpeedButton;
    cxlbljam: TcxLabel;
    Edkodetransaksi: TAdvShapeButton;
    tmr1: TTimer;
    ds1: TMyDataSource;
    ds5: TMyDataSource;
    ds3: TMyDataSource;
    ds2: TMyDataSource;
    ds4: TMyDataSource;
    lbl1: TLabel;
    edkode: TcxButtonEdit;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    Panel1: TPanel;
    lbl2: TLabel;
    grid1: TAdvStringGrid;
    ed2: TcxTextEdit;
    chk1: TCheckBox;
    lbl_cv: TLabel;
    cbb_satuan: TComboBox;
    cx_nama_brg: TcxTextEdit;
    cbbpetugas: TcxLookupComboBox;
    SpeedButton1: TSpeedButton;
    ds6: TMyDataSource;
    SpeedButton5: TSpeedButton;
    dtp_buat: TDateTimePicker;
    QCari: TMyQuery;
    cxNoBbk: TcxTextEdit;
    edt_jml_barang: TcxTextEdit;
    edjml: TEdit;
    btnsave: TSpeedButton;
    btnBtnUbah1: TSpeedButton;
    btnBtnHapus: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Adv_per: TAdvShapeButton;
    SpeedButton6: TSpeedButton;
    cxlbl2: TcxLabel;
    PnOperasi: TPanel;
    cxLabel1: TcxLabel;
    cxcari: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblNamaCv: TLabel;
    cxBtn_idcv: TcxButtonEdit;
    btnBtnBaru: TSpeedButton;
    EdDiskPer: TEdit;
    edTotalDisk: TEdit;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    EdTotal2: TEdit;
    Label6: TLabel;
    edhargasat: TEdit;
    edTotal1: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    ed_t1: TEdit;
    edTotalDiskon: TEdit;
    edGrandTotal: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    cxLabel8: TcxLabel;
    dtp_jatuhtempo: TDateTimePicker;
    cxLabel12: TcxLabel;
    SpeedButton4: TSpeedButton;
    cxlbl3: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel7: TcxLabel;
    Label13: TLabel;
    pnl4: TPanel;
    lv1: TListView;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    Label12: TLabel;
    Ednobatch: TEdit;
    pnlcari: TPanel;
    cxLabel9: TcxLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    btcari: TBitBtn;
    cxLabel3: TcxLabel;
    edcarinomor: TEdit;
    BitBtn1: TBitBtn;
    Grid2: TAdvStringGrid;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    cxLabel11: TcxLabel;
    EdNpajak: TEdit;
    Edpajakper: TEdit;
    dtpExp: TcxDateEdit;
    edt2: TEdit;
    Label14: TLabel;
    cbo_status: TcxComboBox;
    chkDiskon: TCheckBox;
    chkgrid1: TCheckBox;
    EdCariSupplier: TEdit;
    EdHrgJual: TEdit;
    Label9: TLabel;
    SpeedButton9: TSpeedButton;
    BtnEditGrid: TSpeedButton;
    PanelEditBarang: TPanel;
    gridGantikode: TAdvStringGrid;
    ednmbarangedit: TEdit;
    cxLabel10: TcxLabel;
    jmldataedit: TLabel;
    c: TLabel;
    r: TLabel;
    procedure FormCreate(Sender: TObject);

    procedure SpeedButton2Click(Sender: TObject);
    procedure btnBtnBaruClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnBtnUbah1Click(Sender: TObject);
    procedure btnBtnHapusClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cxcariKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lv1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lv1KeyPress(Sender: TObject; var Key: Char);
    procedure edjmlKeyPress(Sender: TObject; var Key: Char);
    procedure edjmlKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed2PropertiesChange(Sender: TObject);
    procedure deleterow(mg:TStringGrid;ARow:integer);
    procedure btn2Click(Sender: TObject);
    procedure grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: String);
    procedure ed_dtotalChange(Sender: TObject);
    procedure grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure tmr1Timer(Sender: TObject);
    procedure edjmlPropertiesChange(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure btn_penerimaPropertiesChange(Sender: TObject);
    procedure btn_ruanganPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure lv1CustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure grid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btnnoregPropertiesChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btn_ruanganPropertiesChange(Sender: TObject);
    procedure Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure cxBtn_idcvPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btcariClick(Sender: TObject);
    procedure cxBtn_idcvPropertiesChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edjmlChange(Sender: TObject);
    procedure EdDiskPerChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure edTotalDiskChange(Sender: TObject);
    procedure edTotalDiskonChange(Sender: TObject);
    procedure ed_t1Change(Sender: TObject);
    procedure cbo_statusChange(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure EdpajakperChange(Sender: TObject);
    procedure edt2Change(Sender: TObject);
    procedure EdNpajakChange(Sender: TObject);
    procedure Grid2GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure cbo_statusPropertiesChange(Sender: TObject);
    procedure edhargasatChange(Sender: TObject);
    procedure chkDiskonClick(Sender: TObject);
    procedure EdCariSupplierChange(Sender: TObject);
    procedure chkgrid1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure ednmbarangeditKeyPress(Sender: TObject; var Key: Char);
    procedure gridGantikodeDblClickCell(Sender: TObject; ARow, ACol: Integer);

  private
    { Private declarations }
     Procedure aturgrid1;
     Procedure aturgrid2;
     Procedure aturgrid3;
     procedure hapus_grid;
     Procedure KosongTex(Kunci:Boolean);
     Procedure Tampil_combo_Petugas;
     //Procedure Tampil_combo_gudang;
     Procedure cbo_satuan;
     Procedure tambah_grid;
     function  Caribrg(nkode_cr: String):string;
     procedure Total;
     Procedure TampilData;
     //Procedure TampilData_permintaan;
     Procedure jumlah_permintaan;
     Procedure ambilRuang;
     Procedure TampilDatacariTGL;
     Procedure TampilDataNocari;
     procedure hitung;
     procedure hitungTotal;
     Procedure TampilEditkdBarang;


  public
    { Public declarations }
    Procedure buatno;
    Function GetNoBBK:string;
    Function Lastkasir(s:string):string;
  end;

var
  FrmPembelian: TFrmPembelian;
  FCounter :integer;
  tambah: boolean;
  i1,i2,baris :Integer;
  i,counter,hapus_baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	sql,sql1,sql2,sql3,m1,m2,m3,m4,m5,ppn: String;
  qty,jml,harga,total_harga,disk,total2 : real ; // :integer;
  hrgd,n_t1d,ddisk,n_diskd,n_t2d,n_pajakd,JML_BRG :real;
  a1,a2,a3,a4,a5 ,a6 : real;
  cek_inputan:boolean;

implementation

uses uconfig,UnModul,UFunctions,UF_dbsql,UF_setting, UnCarisp,UnCarisp2, UnMenu,Un_ganti_barang;

{$R *.dfm}

Procedure TFrmPembelian.ambilRuang;
var
SPcariunit  : TMyStoredProc;
begin
//SPcariunit := TMyStoredProc.Create(nil);
//
//  try
//    SPcariunit.Connection := DmModul.con1;
//    SPcariunit.Close;
//    SPcariunit.StoredProcName := 'sp_ambilunit';
//    SPcariunit.PrepareSQL;
//    SPcariunit.ParamByName('cari').AsString := btn_ruangan.Text; //cv bringin
//    //SPcariPeny.Execute;
//    SPcariunit.Open;
//   if SPcariunit.RecordCount > 0 then
//  begin
//    Lbl_nm_ruang.Caption :=SPcariunit.FieldByName('nama_user').AsString;
//   end
//  else
//    begin
//    Lbl_nm_ruang.Caption :='Unit Blm Dipilih';
//    Lbl_nm_ruang.Color := clred ;
//    end;
//
//  finally
//    SPcariunit.Close;
//    SPcariunit.Free;
//  end;

end;


procedure TFrmPembelian.deleterow(mg:TStringGrid;ARow:integer);
var i,j,k:integer;
begin
        with mg do begin
                for i:=ARow to RowCount-1 do
                        for j:=0 to ColCount-1 do
                            Cells[j,i]:=Cells[j,i+1];

        RowCount:=RowCount-1;
        for k:=1 to RowCount-1 do
                Cells[0,k]:=IntToStr(k);
        end;
end;


function clearDot(AEdit:string):string;
begin
 Result:=StringReplace(AEdit,'.','',[rfReplaceAll]);
end;




function ExecSQL1(Sql: string): boolean;
var q: TMyQuery;
begin
  q:=TMyQuery.Create(nil);
  q.Connection := DmModul.con1;
  q.ParamCheck:=False;
  q.SQL.Clear;
  q.SQL.Text:=Sql;
  try
  q.ExecSQL;
  Result:=True;
  except
    on e: Exception do begin
      Result:=False;
    end;
  end;
  q.Free;
end;


function formatRp(input:string):string;
begin
 Result:=Format('%.0n',[StrToFloatDef(input,0)]);
end;

function Capital(Value:String):String;
Var i:integer; s:string;
begin
  s:=UpperCase(Value[1]);
  for i:=2 to Length(Value) do
  if (Value[i-1] in [' ',',',':',';','.']) then
  s:=s+UpperCase(Value[i]) else s:=s+LowerCase(Value[i]);
  Result:=s;
end;


procedure TFrmPembelian.FormCreate(Sender: TObject);
begin
  KosongTex(True);
  
  aturgrid2;
  Aturgrid1;
  aturgrid3;
//  dtpExp.date:= now;

//  dtpExp.ShowCheckbox :=true;
//  dtpExp.Checked := false;
//  dtpExp.Color := clred;

//cbo_status.ItemIndex

end;


Procedure TFrmPembelian.tambah_grid;
var
    addSat : TMyQuery;
    tglexp:string;
begin

//if dtpExp.Checked then
//   tglexp:=FormatDateTime('yyyy-mm-dd',dtpExp.Date)
//   else
//   tglexp:='';

tglexp:=FormatDateTime('yyyy-mm-dd',dtpExp.Date);

inc(counter);
Grid1.RowCount:=Grid1.RowCount + 1;
Grid1.Cells[0,Grid1.RowCount-1]:=IntToStr(counter);
Grid1.Cells[1,Grid1.RowCount-1]:=IntToStr(counter);
Grid1.Cells[2,Grid1.RowCount-1]:=edkode.text;
Grid1.Cells[3,Grid1.RowCount-1]:=cx_nama_brg.text; //nama barang
Grid1.Cells[5,Grid1.RowCount-1]:=Ednobatch.Text; //no batch
Grid1.Cells[6,Grid1.RowCount-1]:=edjml.Text; // jumlah
Grid1.Cells[7,Grid1.RowCount-1]:=cbb_satuan.Text;// satuan
Grid1.Cells[8,Grid1.RowCount-1]:=edhargasat.Text; // harga
Grid1.Cells[9,Grid1.RowCount-1]:=edTotal1.Text; // t1
Grid1.Cells[10,Grid1.RowCount-1]:=edTotalDisk.Text; // disk
Grid1.Cells[11,Grid1.RowCount-1]:=EdTotal2.Text; // t2
Grid1.Cells[4,Grid1.RowCount-1]:=tglexp; // tgl exp
//   jml:=StrToFloat(Grid1.Cells[4,Grid1.RowCount-1]);
//   harga:=StrToFloat(Grid1.Cells[5,Grid1.RowCount-1]);
//   total_harga:=jml*harga;
//   Grid1.Cells[6,Grid1.RowCount-1]:=FloatToStr(total_harga);
//   Total; //jumlah total

      //tambah Satuan:
      {
      addSat := TMyQuery.Create(nil);
      addSat.Connection := DmModul.con1;
      addSat.Close;
      addSat.SQL.Text:=
      'Select satuan from satuan where satuan='+
      QuotedStr(cbb_satuan.Text);
      addSat.Open;

      if (addSat.RecordCount = 0) then
      begin
        MessageDlg('Kode baru Satuan',mtInformation,[mbok],0);
        addSat.Close;
        addSat.SQL.Text:=
        'insert into satuan(satuan) Values('+
        QuotedStr(cbb_satuan.Text)+')';
        addSat.Execute;
      end;

addSat.Close;
cbo_satuan;
}
//=====================
Total; //jumlah total

//clear kotak
cx_nama_brg.Text := '';
edjml.Text := '0';
cbb_satuan.Text := '';
edhargasat.Text := '0';
edTotal1.Text := '0';
EdDiskPer.Text := '0';
edTotalDisk.Text := '0';
EdTotal2.Text := '0';
dtpExp.Text:= '';
Ednobatch.Text:= '';

end;


Procedure TFrmPembelian.cbo_satuan;
var
    qcom1 : TMyQuery;
begin
    try
      qcom1 := TMyQuery.Create(nil);
      qcom1.Connection := DmModul.con1;
      qcom1.Close;
      qcom1.SQL.Text:=
      'Select sat_obat From tbl_dataobat GROUP by sat_obat order by sat_obat';
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

procedure TFrmPembelian.cbo_statusChange(Sender: TObject);
begin
if cbo_status.Text = 'KREDIT'  then
begin
 dtp_jatuhtempo.ShowCheckbox :=true;
  dtp_jatuhtempo.Checked := true;
  //dtp_jatuhtempo.CalColors:= clred;
end
else
begin
  dtp_jatuhtempo.ShowCheckbox :=true;
  dtp_jatuhtempo.Checked := false;
  dtp_jatuhtempo.Enabled :=true;
end;

end;


procedure TFrmPembelian.cbo_statusPropertiesChange(Sender: TObject);
begin
if cbo_status.Text = 'KREDIT'  then
begin
  dtp_jatuhtempo.Visible := true;
  dtp_jatuhtempo.ShowCheckbox :=true;
  dtp_jatuhtempo.Checked := true;
  //dtp_jatuhtempo.CalColors:= clred;
end
else
begin
  dtp_jatuhtempo.ShowCheckbox :=true;
  dtp_jatuhtempo.Checked := false;
  dtp_jatuhtempo.Enabled :=true;
  dtp_jatuhtempo.Visible := false;
end;
end;

procedure TFrmPembelian.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
begin
edTotalDisk.Color := clCream;
edTotalDisk.SetFocus;
end
else
begin
edTotalDisk.Color := clRed;
end;
end;

Procedure TFrmPembelian.jumlah_permintaan;
     var qpermintaan : TMyQuery;
begin

qpermintaan := TMyQuery.Create(nil);
qpermintaan.Connection := DmModul.con1;

  qpermintaan.Active := false;
  qpermintaan.SQL.Clear;
  qpermintaan.SQL.Text :='SELECT COUNT(no_trans_u) AS jumlah FROM h_usulan where status =0  ';
  qpermintaan.Open;
  Adv_per.Text:=qpermintaan.FieldByName('jumlah').AsString;

end;

Procedure TFrmPembelian.aturgrid2;
//var counter,hapus_baris : Integer;
begin
  counter:=0;
  hapus_baris:=0;
  Grid2.ColCount:=7;
  Grid2.RowCount:=1;
  Grid2.FixedRowAlways := True;
  //No|tgl.|No.BBK|Ruangan|Gudang|
  Grid2.Cells[0,0]:='No.';
  Grid2.Cells[1,0]:='No. Faktur';
  Grid2.Cells[2,0]:='Tanggal.';
  Grid2.Cells[3,0]:='Penyedian';
  Grid2.Cells[4,0]:='Nilai';
  Grid2.Cells[5,0]:='Status';
  Grid2.Cells[6,0]:='No. tran';
  //Grid2.Cells[5,0]:='Gudang';
  Grid2.ColWidths[0]:=30;
  Grid2.ColWidths[1]:=120;
  Grid2.ColWidths[2]:=90;
  Grid2.ColWidths[3]:=220;
  Grid2.ColWidths[4]:=90;
  Grid2.ColWidths[5]:=60;
  Grid2.ColWidths[6]:=140;
  //Grid2.ColWidths[5]:=90;



end;


Procedure TFrmPembelian.aturgrid3;
//var counter,hapus_baris : Integer;
begin
  counter:=0;
  hapus_baris:=0;
  gridGantikode.ColCount:=3;
  gridGantikode.RowCount:=1;
  gridGantikode.FixedRowAlways := True;
  //No|tgl.|No.BBK|Ruangan|Gudang|
  gridGantikode.Cells[0,0]:='No';
  gridGantikode.Cells[1,0]:='KD-Barang';
  gridGantikode.Cells[2,0]:='Nama ';
  gridGantikode.ColWidths[0]:=30;
  gridGantikode.ColWidths[1]:=120;
  gridGantikode.ColWidths[2]:=220;

end;

procedure TFrmPembelian.BitBtn1Click(Sender: TObject);
begin
TampilDataNocari;
end;

Procedure TFrmPembelian.aturgrid1;
//var counter,hapus_baris : Integer;
begin
  counter:=0;
  hapus_baris:=0;
  Grid1.ColCount:=12;
  Grid1.RowCount:=1;
  Grid1.FixedRowAlways := True;
  Grid1.Cells[0,0]:='No';
  Grid1.Cells[1,0]:='No. Urut';
  Grid1.Cells[2,0]:='Kode';
  Grid1.Cells[3,0]:='Nama';
  Grid1.Cells[4,0]:='Tgl. Exp';
  Grid1.Cells[5,0]:='No. Batch';
  Grid1.Cells[6,0]:='Jumlah';
  Grid1.Cells[7,0]:='Satuan';
  Grid1.Cells[8,0]:='Harga';
  Grid1.Cells[9,0]:='Total 1';
  Grid1.Cells[10,0]:='Disk';
  Grid1.Cells[11,0]:='Total 2';


  Grid1.ColWidths[0]:=1;  //no
  Grid1.ColWidths[1]:=20;  //no
  Grid1.ColWidths[2]:=80; //kd
  Grid1.ColWidths[3]:=270; //nm
  Grid1.ColWidths[4]:=80;  //n
  Grid1.ColWidths[5]:=120;
  Grid1.ColWidths[6]:=90;
  Grid1.ColWidths[7]:=90;
  Grid1.ColWidths[8]:=90;
  Grid1.ColWidths[9]:=90;
  Grid1.ColWidths[10]:=90;
  Grid1.ColWidths[11]:=90;


  //clear grid
  //StringGrid1.ClearRows(1, StringGrid1.RowCount - 1);
  //rata kanan
  //RightEdit(ed_dtotal);



end;

Procedure TFrmPembelian.KosongTex(Kunci:Boolean);
//var
//j:Integer;
Begin
  if Kunci=True then
  begin
  btnnoreg.Text := '';
  //buatno;
  btnnoreg.Text:=GetNoBBK;
  dtp_buat.date:= now;
  dtp1.date:= now;
  dtp2.date:= now;
  dtp_jatuhtempo.date:= now;
  dtp_jatuhtempo.ShowCheckbox :=true;
  dtp_jatuhtempo.Checked := false;
  dtp_jatuhtempo.Color := clred;

  cxNoBbk.Text := '';
  cxBtn_idcv.Text := '';
  cbo_satuan;
  btnnoreg.Enabled:=False;
  aturgrid1;
  edkode.Text := '';
  cx_nama_brg.Text := '';
  cbb_satuan.Text := '';
  Ednobatch.Text := '-';

   {
  edjml.Text := '0';
  edhargasat.Text := '0';
  edTotal1.Text := '0';
  EdDiskPer.Text := '0';
  edTotalDisk.Text := '0';
  EdTotal2.Text := '0';
    }

  ed_t1.Text := '0';
  edTotalDiskon.Text := '0';
  edt2.Text := '0';
  Edpajakper.Text := '0';
  EdNpajak.Text := '0';
  edGrandTotal.Text := '0';
  //TampilDatacari;
  //cbo_gudang.ItemIndex:=0;

 end;
end;


  procedure deleterow(mg:TStringGrid;ARow:integer);
var i,j,k:integer;
begin
        with mg do begin
                for i:=ARow to RowCount-1 do
                        for j:=0 to ColCount-1 do
                            Cells[j,i]:=Cells[j,i+1];

        RowCount:=RowCount-1;
        for k:=1 to RowCount-2 do
                Cells[0,k]:=IntToStr(k);
              // Cells[1,k]:=IntToStr(k);
        end;
end;


Procedure TFrmPembelian.buatno;
var
  tgl,urut : string;
  i_no : integer;
  q_no: TMyQuery;
begin

tgl := FormatDateTime('yyMMdd',dtp_buat.Date) + '';
q_no := TMyQuery.Create(nil);

try
   q_no.Connection := DmModul.con1;
   q_no.Active := false;
   q_no.SQL.Clear;
   q_no.SQL.Add('Select Max(right(no_tranxp, 4)) from tbl_pembelian ' +
              'Where Mid(no_tranxp, 3,6) = ' + QuotedStr(tgl) + ';'); //JUMLAH NOMOR
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
  btnnoreg.Text := 'B' + tgl + urut;
   finally
    q_no.Close;
    q_no.Free;
  end;
end;

procedure TFrmPembelian.SpeedButton2Click(Sender: TObject);
begin
btnnoreg.Text:=GetNoBBK;
end;

procedure TFrmPembelian.btnBtnBaruClick(Sender: TObject);
begin
PnOperasi.Caption := 'Tambah Data';
btnnoreg.Text:=GetNoBBK;
//buatno;
btnnoreg.Enabled:=False;
KosongTex(True);
cxNoBbk.SetFocus;
end;

procedure TFrmPembelian.cxBtn_idcvPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
     FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_GETPenyedia';
  LsvSetCol('No|Nama|',
  '350|420|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('id');
  FCarisp.LsField.Items.Add('nama');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    cxBtn_idcv.Text:=nFieldCari[0];
    cxBtn_idcv.Style.Color:=clMoneyGreen;
    lblNamaCv.Caption:=nFieldCari[1];
    cxcari.SetFocus;
  end;
end;

procedure TFrmPembelian.cxBtn_idcvPropertiesChange(Sender: TObject);
var
  SPcaricv  : TMyStoredProc;
begin
SPcaricv := TMyStoredProc.Create(nil);

  try
    SPcaricv.Connection := DmModul.con1;
    SPcaricv.Close;
    SPcaricv.StoredProcName := 'SP_CariPenyedia';
    SPcaricv.PrepareSQL;
    SPcaricv.ParamByName('cari').AsString := cxBtn_idcv.Text; //cv bringin
    //SPcariPeny.Execute;
    SPcaricv.Open;
   if SPcaricv.RecordCount > 0 then
  begin
    lblNamaCv.Caption :=SPcaricv.FieldByName('nama').AsString;
   end
  else
    begin
    lblNamaCv.Caption :='Penyedia Blm Dipilih ...';
    end;

  finally
    SPcaricv.Close;
    SPcaricv.Free;
  end;

end;

procedure TFrmPembelian.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
//  FCarisp:=TFCarisp.Create(Application);
//  FCarisp.Label4.Caption :='SP_caripegawai';
//  LsvSetCol('No|Nama|',
//  '350|420|',FCarisp.LsCari);
//  FCarisp.LsField.Items.Clear;
//  FCarisp.LsField.Items.Add('xxx'); //sp
//  //nama colom
//  FCarisp.LsField.Items.Add('NIP');
//  FCarisp.LsField.Items.Add('Nama');
//  FCarisp.ShowModal;
//
//  if nFieldCari[0]<>'' then
//  begin
//    btn_penerima.Text:=nFieldCari[0];
//    btn_penerima.Style.Color:=clMoneyGreen;
//    cxcari.SetFocus;
//  end;
end;

// Procedure TFrmPesanan.Tampil_combo_gudang;
// var
// q2,q3,q4,q5 : TMyQuery;
//
//begin
////QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
//  q2 := TMyQuery.Create(nil);
//  try
//  q2.Connection := DmModul.con1;
//  q2.Active := false;
//  q2.SQL.Clear;
//  q2.SQL.Text := 'Select kd_gudang, nama_gudang from m_gudang'+
//   ' where gudang = ' + QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
//   'order by kd_gudang';
//  //q2.SQL.Text := 'Select nip, CONCAT(gol, " , ", nm_gol) as nm  from r_gol';
//  q2.Open;
//    if q2.RecordCount > 0 then
//  begin
//  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString
//  ds1.DataSet := q2;
//  cbo_gudang.Properties.ListSource := ds1;
//  cbo_gudang.Properties.ListOptions.ShowHeader := False;
//  cbo_gudang.Properties.ListFieldNames := 'nama_gudang';
//  cbo_gudang.Properties.KeyFieldNames := 'kd_gudang';
//  end;
//   finally
//  //  q2.Close;
//  //  q2.Free;
//  end;
//
// end;

  Procedure TFrmPembelian.Tampil_combo_Petugas;
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
  end;
   finally
  //  q2.Close;
  //  q2.Free;
  end;
  end;


procedure TFrmPembelian.FormShow(Sender: TObject);

begin
//jumlah_permintaan;
Tampil_combo_Petugas;
KosongTex(True);
//EdTotal2.Text :='0';
//edTotal1.Text :='0';
//EdDiskPer.Text :='0';
//edTotalDisk.Text :='0';

PnOperasi.Caption := 'Tambah Data';
cxcari.SetFocus;
pnlcari.Visible:= false;

end;

procedure TFrmPembelian.btnBtnUbah1Click(Sender: TObject);
begin
PnOperasi.Caption := 'Ubah Data';

  FCarisp2:=TFCarisp2.Create(Application);
  FCarisp2.Label4.Caption :='SP_ambilKeluar';
  FCarisp2.EGudang.Text := FMenu.dxStatusBar1.Panels[2].Text;
  LsvSetCol('No|tgl.|No.BBK|Ruangan|Gudang|',
  '250|140|100|260|80|',FCarisp2.LsCari);
  FCarisp2.LsField.Items.Clear;
  FCarisp2.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp2.LsField.Items.Add('no_trans_k');
  FCarisp2.LsField.Items.Add('tgl_keluar');
  FCarisp2.LsField.Items.Add('no_bbk');
  FCarisp2.LsField.Items.Add('ket');
  FCarisp2.LsField.Items.Add('gudang');
  FCarisp2.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    btnnoreg.Text:=nFieldCari[0];
    btnnoreg.Style.Color:=clLtGray;
    TampilData;
    PnOperasi.Caption := 'Ubah Data';
    btnnoreg.Style.Color:=clcxLightGray;
    cxNoBbk.SetFocus;
    btnnoreg.Enabled:=False;
    //btnnoreg.SetFocus;
  end;
end;

procedure TFrmPembelian.btnBtnHapusClick(Sender: TObject);
begin
PnOperasi.Caption := 'Hapus Data';
end;

procedure TFrmPembelian.btcariClick(Sender: TObject);
begin
TampilDatacariTGL;
end;

procedure TFrmPembelian.btn1Click(Sender: TObject);
begin
tambah_grid;
end;

procedure TFrmPembelian.cxcariKeyPress(Sender: TObject; var Key: Char);
begin
if(Key=#13)then
	begin
    try
    Caribrg(cxcari.Text);
    pnl4.Visible:=True;
    lv1.SetFocus;
    finally
    //cxLookupbrg.SetFocus;
    //cxLookupbrg.OnClick(Sender);
    end;
	end;
end;


function TFrmPembelian.Caribrg(nkode_cr: String):string;
var
  q6 : TMyStoredProc;
  dt:TListItem;
  //nSem:string;
begin
    try
    q6 := TMyStoredProc.Create(nil);
    q6.Connection := DmModul.con1;
 with q6 do
 begin
  Close;
  StoredProcName := 'SP_AmbilBarangStok' ;
  PrepareSQL;
  //ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
  ParamByName('cari').AsString := nkode_cr;
  Execute;
  cxLabel4.Caption := 'Jumlah Data : ' + inttostr(RecordCount) +' baris ';

  //Open;
  //ShowMessage(SQL.Text);
  lv1.Clear;
  if not IsEmpty then
  begin
     while not Eof do
     begin
      dt:=lv1.Items.Add;
      dt.Caption:=(dmmodul.dataRow(Q6.FieldByName('kd_obat'),'-'));   // 0
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('nm_obat'),'-'));  //1
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('sat_obat'),'-'));   //2
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('hrgbeli_obat'),'0')); //3
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('nobatch'),'-')); //4
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('stok'),'0'));
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('idrak'),'-'));
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('hrg_obat'),'0'));
      Next;
     end;
     lv1.Items.Item[0].Selected:=true;
  end;
 end;
 finally
  Q6.Close;
  Q6.Free;
 end;

end;

procedure TFrmPembelian.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPembelian:=nil;
  Action:=caFree;
end;

procedure TFrmPembelian.lv1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=40)then  // panah bawah
      lv1.SetFocus;
  if (Key=13)then  //enter
      lv1.SetFocus;
  if (Key = 27)then //tombol END 35 , esc 27
    begin
      pnl4.Visible:=false;
      cxcari.SetFocus;
      //edjml.SetFocus;
    end;
end;

procedure TFrmPembelian.lv1KeyPress(Sender: TObject; var Key: Char);
begin
try
		if(Key=#13)then
	begin
    // edkode.Text:=lv1.Selected.Caption;
     with lv1.Selected do
      begin
        edkode.Text:=lv1.Selected.Caption;
        cx_nama_brg.Text:=SubItems.Strings[0];
        cbb_satuan.Text:=SubItems.Strings[1];
        edhargasat.Text:=SubItems.Strings[2];
        EdHrgJual.Text:=SubItems.Strings[6];

      end;
     dtpExp.SetFocus;
     //edjml.SetFocus;
     edjml.Text :='1';
     EdDiskPer.Text:='0';
     //edhargasat.Text:='0';
     pnl4.Visible:=false;
	end;
		except
	end;
end;

procedure TFrmPembelian.edjmlKeyPress(Sender: TObject; var Key: Char);
begin
//if not(Key in ['0'..'9',#8,#46,#39,#37]) then
//   Key:=#0;


end;

procedure TFrmPembelian.edjmlChange(Sender: TObject);
begin
if edjml.text = '' then Exit;
hitung;
end;

procedure TFrmPembelian.edjmlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      {
 if edjml.Text ='' then                                   // answer is a number
    begin
      ShowMessage('jumlah belum di isi ??  ' + edjml.Text);
      edjml.SetFocus;
      Exit;

    end
    else
     begin
       }
    if (Key=13) then
   BEGIN
    btn1Click(Sender);
    cxcari.SetFocus;
    cxcari.Text:='';
    end;
   // end
end;


procedure TFrmPembelian.Total;
var
tot_t1,tot_disk,tot_t2,tot_pjk,tot_bayar:real;
begin
JML_BRG:=0;
tot_t1:=0;
tot_disk:=0;
tot_t2:=0;

   for i:=1 to Grid1.RowCount-1 do begin
        JML_BRG:=JML_BRG+strtofloat(Grid1.Cells[6,i]);
        tot_t1:=tot_t1+strtofloat(Grid1.Cells[9,i]);
        tot_disk:=tot_disk+strtofloat(Grid1.Cells[10,i]);
        tot_t2:=tot_t2+strtofloat(Grid1.Cells[11,i]);

   end;
   edt_jml_barang.Text:=floattostr(JML_BRG);
   Ed_t1.Text:=floattostr(tot_t1);
   if  chkDiskon.Checked then
      begin
      chkDiskon.Color := clgreen;
      end
      else
      begin
      chkDiskon.Color := clred;
      edTotalDiskon.Text:=floattostr(tot_disk);
      //      n_pajak := n_t1 *(10/100);
//      ed_pjk.Text := floattostr(n_pajak);
//      total1 := n_t1 + n_pajak ;
      end;


   edt2.Text:=floattostr(tot_t2);

end;

procedure TFrmPembelian.ed2PropertiesChange(Sender: TObject);
begin
if chk1.checked then
    grid1.NarrowDown(ed2.Text,2)
  else
    grid1.NarrowDown(ed2.Text);
end;


procedure TFrmPembelian.EdCariSupplierChange(Sender: TObject);
begin
if chkgrid1.checked then
    Grid2.NarrowDown(EdCariSupplier.Text,3)
  else
    Grid2.NarrowDown(EdCariSupplier.Text);
end;

procedure TFrmPembelian.EdDiskPerChange(Sender: TObject);
begin
if EdDiskPer.text = '' then Exit;
hitung;
end;

procedure TFrmPembelian.edhargasatChange(Sender: TObject);
begin
   if edhargasat.text = '' then Exit;
hitung;
end;

procedure TFrmPembelian.hapus_grid;
begin
  if (cek_baris='') then begin
    ShowMessage('Silahkan pilih grid di hapus');
    exit;
  end else
      if MessageDlg('Hapus item kode: '+Grid1.Cells[1,hapus_baris]+' ?',mtConfirmation,mbOKCancel,0)=mrok then begin
         deleterow(Grid1,hapus_baris);
         Total;
         cek_baris:='';
         counter:=counter-1;
         edt_jml_barang.text := IntToStr(counter);
end
else ShowMessage('Inputan Detail masih kosong');
end;




procedure TFrmPembelian.btn2Click(Sender: TObject);
begin
 if (cek_baris='') then begin
    ShowMessage('Silahkan pilih grid di hapus/urutkan');
     for i2:=1 to Grid1.RowCount-1 do begin
    Grid1.Cells[0,i2]:=IntToStr(i2);
    Grid1.Cells[1,i2]:=IntToStr(i2);
  end;

    exit;
  end else
      if MessageDlg('Hapus item kode: '+Grid1.Cells[1,hapus_baris]+' ?' +Grid1.Cells[2,hapus_baris],mtConfirmation,mbOKCancel,0)=mrok then begin
         deleterow(Grid1,hapus_baris);
         Total;
         cek_baris:='';
         counter:=counter-1;
         edt_jml_barang.text := IntToStr(counter);
end
else ShowMessage('Inputan Detail masih kosong');
end;

procedure TFrmPembelian.grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
  var
    input_box : string;
    qty,jml,harga,total_harga,disk,total2 : real ; // :integer;
begin
hapus_baris:=ARow;
cek_baris:=Grid1.Cells[1,arow];

  {
if (aCol = 4) then
   begin
   Grid1.Options := Grid1.Options + [Goediting];

   jml:=StrToFloat(Grid1.Cells[3,arow]);
          harga:=StrToFloat(Grid1.Cells[5,arow]);
      total_harga:=jml*harga;
      Grid1.Cells[6,arow]:=FloatToStr(total_harga);
      Total;
  end;

  }

   if not (Grid1.Cells[ACol,ARow]='') then begin

   //tgl exp
    if ACol=2 then  begin
    if not (Grid1.RowCount=1) then begin

//PanelEditBarang.Visible:= true;
//ednmbarangedit.SetFocus;
//c.Caption := Grid1.Cells[2,arow];
//r.Caption := Grid1.Cells[3,arow];
//     Grid1.Cells[2,ARow]:=gridGantikode.Cells[1,AROW]; //nama
//     Grid1.Cells[3,ARow]:=gridGantikode.Cells[2,AROW]; //jml
//
FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_ambilbarang'; //nama sp
  LsvSetCol('kd|Nama|satuan|harga|',
  '120|300|60|80|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('XXXXX');
  FCarisp.LsField.Items.Add('kd_obat'); //Tabel / Query
  FCarisp.LsField.Items.Add('nm_obat');
  FCarisp.LsField.Items.Add('sat_jual');
  FCarisp.LsField.Items.Add('hrg_obat');
  FCarisp.ShowModal;
  //FCarisp.CmbField.ItemIndex:=0;
  if nFieldCari[0]<>'' then
  begin
     Grid1.Cells[2,ARow]:=nFieldCari[0];
     Grid1.Cells[3,ARow]:=nFieldCari[1];
//    ed_satuan.Text:=nFieldCari[1];
//    ed_hrg.Text:=nFieldCari[2];
//    ed_nama.Color:=clWhite;
//    ed_jml.SetFocus;
  end;
//        input_box:=InputBox('tanggl EXP ','tgl EXP : '+Grid1.Cells[3,arow],Grid1.Cells[4,arow]);
//                Grid1.Cells[ACol,ARow]:=input_box;
      end;
      end;


    //tgl exp
    if ACol=4 then  begin
    if not (Grid1.RowCount=1) then begin
        input_box:=InputBox('tanggl EXP ','tgl EXP : '+Grid1.Cells[3,arow],Grid1.Cells[4,arow]);
                Grid1.Cells[ACol,ARow]:=input_box;
      end;
      end;

      //No. Bacth
    if ACol=5 then  begin
    if not (Grid1.RowCount=1) then begin
        input_box:=InputBox('No. Bacth ','No. Bacth : '+Grid1.Cells[3,arow],Grid1.Cells[5,arow]);
                Grid1.Cells[ACol,ARow]:=input_box;
      end;
      end;

//

        //jumlah brg
    if ACol=6 then  begin
      if not (Grid1.RowCount=1) then begin
        input_box:=InputBox('qty','Jumlah Barang : '+Grid1.Cells[3,arow],Grid1.Cells[6,arow]);
        qty:=StrToFloat(input_box);
        Grid1.Cells[ACol,ARow]:=FloatToStr(qty);
        jml:=StrToFloat(Grid1.Cells[6,arow]);   //jml
        harga:=StrToFloat(Grid1.Cells[8,arow]); //harga
        //N T1
        total_harga:=jml*harga;
        Grid1.Cells[9,arow]:=FloatToStr(total_harga);
        ddisk := StrToFloat(Grid1.Cells[10,arow]);
        //N T2  gran total
        total2 := total_harga - ddisk;
        Grid1.Cells[11,arow]:=FloatToStr(total2);
        Total;
      end;
       end;

		//-- harga satuan
    if ACol=8 then  begin
      if not (Grid1.RowCount=1) then begin
        input_box:=InputBox('harga satuan','@ HARGA : '+Grid1.Cells[3,arow],Grid1.Cells[8,arow]);
        qty:=StrToFloat(input_box);
        Grid1.Cells[ACol,ARow]:=FloatToStr(qty);
        jml:=StrToFloat(Grid1.Cells[6,arow]);   //jml
        harga:=StrToFloat(Grid1.Cells[8,arow]); //harga
        //N T1
        total_harga:=jml*harga;
        Grid1.Cells[9,arow]:=FloatToStr(total_harga);
        ddisk := StrToFloat(Grid1.Cells[10,arow]);
        //N T2  gran total
        total2 := total_harga - ddisk;
        Grid1.Cells[11,arow]:=FloatToStr(total2);
        Total;
      end;
       end;

	  // -- diskon
      if ACol=10 then  begin
      if not (Grid1.RowCount=1) then begin
        input_box:=InputBox('Diskon','disk : '+Grid1.Cells[3,arow],Grid1.Cells[10,arow]);
        qty:=StrToFloat(input_box);
        Grid1.Cells[ACol,ARow]:=FloatToStr(qty);
        jml:=StrToFloat(Grid1.Cells[6,arow]);   //jml
        harga:=StrToFloat(Grid1.Cells[8,arow]); //harga
        //N T1
        total_harga:=jml*harga;
        Grid1.Cells[9,arow]:=FloatToStr(total_harga);
        ddisk := StrToFloat(Grid1.Cells[10,arow]);
        //N T2  gran total
        total2 := total_harga - ddisk;
        Grid1.Cells[11,arow]:=FloatToStr(total2);
        Total;
          end;



      end;
 end;
end;

procedure TFrmPembelian.Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
    btnnoreg.Text:=Grid2.Cells[6,AROW];
    btnnoreg.Style.Color:=clLtGray;
    TampilData;
    PnOperasi.Caption := 'Ubah Data';
    btnnoreg.Style.Color:=clcxLightGray;
    cxNoBbk.SetFocus;
    btnnoreg.Enabled:=False;
    pnlcari.Visible:= false;
end;

procedure TFrmPembelian.Grid2GetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: string);
begin
isFloat := Acol in [4];
case ACol of
  4: Floatformat :='%.0n';
end;
end;

procedure TFrmPembelian.gridGantikodeDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin

//      if not (gridGantikode.Cells[ACol,ARow]='') then begin
//if not (Grid1.RowCount=1) then begin
//          Grid1.Cells[2,ARow]:=gridGantikode.Cells[1,AROW]; //nama
//          Grid1.Cells[3,ARow]:=gridGantikode.Cells[2,AROW]; //jml
//        end;
          PanelEditBarang.Visible:= false;
end;

procedure TFrmPembelian.grid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    1: HAlign := taCenter;
    2,3: HAlign := taLeftJustify;
    6,8,9,10,11: HAlign := taRightJustify;
  end;
end;

procedure TFrmPembelian.grid1GetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
begin
isFloat := Acol in [6,8,9,10,11];
case ACol of
  6,8,9,10,11: Floatformat :='%.0n';
end;
end;

procedure TFrmPembelian.ed_dtotalChange(Sender: TObject);
begin
   //formatRupiah(ed_dtotal);
   //edtotal.Text := ed_dtotal.Text;
end;

procedure TFrmPembelian.ed_t1Change(Sender: TObject);
var
   n_t1,pjk_per,n_pajak,total :real;
begin
//formatRupiah(ed_t1);
if ed_t1.text = '' then Exit;
   formatRupiah(ed_t1);
   hitungTotal;
//   n_t1 :=strtofloat (clearDot(ed_t1.Text));
//   pjk_per :=strtofloat (clearDot(Edpajakper.Text));
//   n_pajak := n_t1 *(strtofloat(Edpajakper.text)/100);
//   EdNpajak.Color:=clMoneyGreen;
//   EdNpajak.Text := floattostr(n_pajak);
//   formatRupiah(EdNpajak);
//   total := n_t1 + n_pajak ;
//   edGrandTotal.Text := floattostr(total);
end;

procedure TFrmPembelian.grid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
//warna grid
if ((ACol = 2) and (ARow > 0)) then
  begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;
  {
  //Kolom : 1
  if ((ACol = 1) and (ARow < 0)) then
  begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end
  else
  begin
    ABrush.Color := $00FF00;
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end
  }
  {
  if ((ACol = 5) and (ARow > 0)) then
  begin

   if (Grid1.Cells[ACol, ARow] = '0')
    then
    begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

  end;
  }

// kolom 6
if ((ACol = 6) and (ARow > 0)) then
  begin
   if (grid1.Cells[ACol, ARow] < '0,1' )
    then
    begin
    //ABrush.Color:= $00BCA5B8;
    AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

   if (grid1.Cells[ACol, ARow] > '0')
    then
    begin
    //ABrush.Color := $00E9B69A;
    AFont.Color := clBlack;
    //AFont.Style := [fsBold];
  end;
  end;

  end;
procedure TFrmPembelian.tmr1Timer(Sender: TObject);
begin
cxlbljam.caption:=TimeToStr(Now);
PnOperasi.Font.Color := Trunc(clBLUE*random);
//EdTotal2.Font.Color := Trunc(clBLUE*random);
//Edkodetransaksi.Style.

end;

procedure TFrmPembelian.edjmlPropertiesChange(Sender: TObject);
begin
{
if edjml.Text = '' then Exit;
a1 := StrToFloat(edjml.Text);
//a2 := StrToFloat(clearDot(edhrg.Text));
a3 := a1 * a2;
cxtotal.Text := FloatToStr(a3);
}
end;

procedure TFrmPembelian.ednmbarangeditKeyPress(Sender: TObject; var Key: Char);
begin
if(Key=#13)then
	begin
    try
    TampilEditkdBarang;
    //Caribrg(cxcari.Text);
    //pnl4.Visible:=True;
    //lv1.SetFocus;

    finally
    end;
	end;
end;

procedure TFrmPembelian.EdNpajakChange(Sender: TObject);
begin
hitungTotal;
end;

procedure TFrmPembelian.EdpajakperChange(Sender: TObject);
begin
if Edpajakper.text = '' then Exit;
   //Edpajakper.Color:=clred;

   if Edpajakper.text >= '10' then

     Edpajakper.Color:=clWebPaleGreen
  else
    Edpajakper.Color:=clred;

   hitungTotal;
end;

procedure TFrmPembelian.edt2Change(Sender: TObject);
begin
if edt2.text = '' then Exit;
formatRupiah(edt2);
hitungTotal;
end;

procedure TFrmPembelian.edTotalDiskChange(Sender: TObject);
begin
if edTotalDisk.text = '' then Exit;
hitung;
end;

procedure TFrmPembelian.edTotalDiskonChange(Sender: TObject);
begin
if edTotalDiskon.text = '' then Exit;
  formatRupiah(edTotalDiskon);
  hitungTotal;
//formatRupiah(edTotalDiskon);

end;

procedure TFrmPembelian.chk1Click(Sender: TObject);
begin
      if chk1.Checked   THEN
      BEGIN
      ed2.Visible := True;
      END
    else
    BEGIN
     ed2.Visible := False;
  end;
  end;


procedure TFrmPembelian.chkDiskonClick(Sender: TObject);
begin
if  chkDiskon.Checked then
      begin
      chkDiskon.Color := clgreen;
      end
      else
      begin
      chkDiskon.Color := clred;
      end;

end;

procedure TFrmPembelian.chkgrid1Click(Sender: TObject);
begin
if chkgrid1.Checked   THEN
      BEGIN
      EdCariSupplier.Visible := True;
      END
    else
    BEGIN
     EdCariSupplier.Visible := False;
  end;
end;

procedure TFrmPembelian.btnsaveClick(Sender: TObject);
var
// simpan cbb
cbogudang,cbopetugas,tgljatuhtempo,cekdiskon:string;
selisih :Real;
sp_sim : TMyQuery;
qv : TMyQuery;

begin

//if Validasi=False then exit;
// urut grid
    for i1:=1 to Grid1.RowCount-1 do begin
    Grid1.Cells[0,i1]:=IntToStr(i1);
    Grid1.Cells[1,i1]:=IntToStr(i1);
  end;

//   simpan petugas
   if cbbpetugas.Text = '' then
      cbopetugas := ''
  else
  cbopetugas :=  cbbpetugas.EditValue;

	if (Trim(cbbpetugas.Text)='')  then
        begin
        ShowMessage('nama Petugas Kosong..??');
        cbbpetugas.SetFocus;
        Exit;
        end;

   if chkDiskon.Checked = True then
      cekdiskon := '1'
    else
      cekdiskon := '0';

//
//   if (Trim(btn_ruangan.Text)='')  then
//  //or (Trim(edt2.Text)='') or (Trim(edt3.Text)='') or (Trim(edt4.Text)='') or (Trim(edt5.Text)=”) then
//        begin
//        ShowMessage('nama Penerima Yang Kosong..??');
//        btn_ruangan.SetFocus;
//        Exit;
//        end;

  
   if (Trim(cxNoBbk.Text)='')  then
        begin
        ShowMessage('Nomor Faktur Kosong..??');
        cxNoBbk.SetFocus;
        Exit;
        end;
   //Status Bayar
   if (Trim(cbo_status.Text)='')  then
        begin
        ShowMessage('Status Bayar belum di pilih');
        cbo_status.SetFocus;
        Exit;
        end;

  if dtp_jatuhtempo.Checked then
   tgljatuhtempo:=FormatDateTime('yyyy/mm/dd',dtp_jatuhtempo.Date)
   else
   tgljatuhtempo:='';


   //Simpan data
  sp_sim := TMyQuery.Create(nil);
  qv := TMyQuery.Create(nil);

  if MessageDlg('Data dengan'+#13+#10+btnnoreg.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin

   //hitung_tran;

   If PnOperasi.Caption='Tambah Data' then
   begin
	    //validasi
      //if Validasi=False then exit;

    qv.Connection := DmModul.con1;
    qv.SQL.Clear;
    qv.SQL.Text := 'Select * from tbl_pembelian where no_tranxp = '+QuotedStr(btnnoreg.Text)+'';
    qv.Open;
    if qv.RecordCount > 0 then
      begin

        if MessageDlg('Kode Sudah ada'+#13+#10+btnnoreg.Text+#13+#10+
        'Buat Nomor Baru (Register), ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
       btnnoreg.Text:=GetNoBBK;

       end;
        exit;
      end;
      try
         sql := 'insert into tbl_pembelian (no_tranxp,incl_disk,tgl_pembelian,no_faktur,'+
        'status_byr,jth_tempo,no_supplier,tgl_create,total1,diskon,total2,pajakper,pajak,total_pembelian,id_peg) Values('+
        QuotedStr(btnnoreg.Text)+','+
        QuotedStr(cekdiskon)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_buat.Date))+','+
        QuotedStr(cxNoBbk.Text)+','+
        QuotedStr(cbo_status.Text)+','+
        QuotedStr(tgljatuhtempo)+','+
        QuotedStr(cxBtn_idcv.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
        QuotedStr(clearDot(ed_t1.Text))+','+
        QuotedStr(clearDot(edTotalDiskon.Text))+','+
        QuotedStr(clearDot(edt2.Text))+','+
        QuotedStr(clearDot(Edpajakper.Text))+','+
        QuotedStr(clearDot(EdNpajak.Text))+','+
        QuotedStr(clearDot(edGrandTotal.Text))+','+
        QuotedStr(cbopetugas)+')';
        ExecSQL1(sql);
//
//        sql3 :='Update h_usulan set status= 1'+
//             ' where no_trans_u='+QuotedStr(btnnoreg.Text);
//        ExecSQL1(sql3);
        ShowMessage('Simpan Baru sukses / status :'+ btnnoreg.Text);
//
        //KosongTex(True);
      // AktifControl(Self,PnInput,False);
         except
        ShowMessage('Simpan baru gagal :'+ btnnoreg.Text);
        raise;
      end;


      //simpan Detail
      try

        for i1:=1 to Grid1.RowCount-1 do begin
             sql2:='INSERT INTO detail_pembelian (no_trans,tgl_faktur,no,kode_brg,exp_obat,nobatch,nama,jumlah,satuan,hrga_beli,n_t1,n_disk,n_t2)'+
             ' Values('+
             QuotedStr(btnnoreg.Text)+','+    // no trans
             QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_buat.Date))+','+  //tgl trans
             QuotedStr(Grid1.Cells[1,i1])+','+ // no
             QuotedStr(Grid1.Cells[2,i1])+','+ // kd brg
	           QuotedStr(Grid1.Cells[4,i1])+','+ // Tgl. Exp
             QuotedStr(Grid1.Cells[5,i1])+','+ // No. Batch
             QuotedStr(Grid1.Cells[3,i1])+','+ // nama brg
             //QuotedStr(RealFormat(StrToFloat(Grid1.Cells[4,i1])))+','+// jumlah 0,00
             QuotedStr(Grid1.Cells[6,i1])+','+ // jumlah
	           QuotedStr(Grid1.Cells[7,i1])+','+ // satuan
             QuotedStr(Grid1.Cells[8,i1])+','+ // harga
             QuotedStr(Grid1.Cells[9,i1])+','+ // t1
             QuotedStr(Grid1.Cells[10,i1])+','+ // disk
             QuotedStr(Grid1.Cells[11,i1])+')'; // t2
             //QuotedStr(Grid1.Cells[4,i1])+')'; // Tgl exp
             ExecSQL1(sql2);

             //ShowMessage('Simpan detail ok :'+ Grid1.Cells[2,i1]);
             end;


    // sql3 :='Update h_penjualan set terbilang= tcase(terbilang)'+
    //         ' where no_transaksi='+QuotedStr(btnnoreg.Text);
    //    ExecSQL1(sql3);

     //   m5 := 'Ubah Nama OK';

     //--cetak
     //  bayar_tran;
     //ShowMessage('Simpan detail ok :'+ btnnoreg.Text);
     KosongTex(True);
     except
      ShowMessage('Simpan Detail gagal ok :'+ btnnoreg.Text);
        //m1 := 'simpan Baru Gagal';
        raise;
      end;



   end    //end tambah

   else if PnOperasi.Caption='Ubah Data' then
   begin
        //if Validasi=False then exit;
        try

        sql1 :='Update tbl_pembelian set ' +
        'tgl_pembelian='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_buat.Date))+
        ',no_faktur='+QuotedStr(cxNoBbk.Text)+
        ',incl_disk='+QuotedStr(cekdiskon)+
        ',status_byr='+QuotedStr(cbo_status.Text)+
        ',jth_tempo='+QuotedStr(tgljatuhtempo)+
        ',no_supplier='+QuotedStr(cxBtn_idcv.Text)+
        //',tgl_create='+QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+
        ',total1='+QuotedStr(clearDot(ed_t1.Text))+
        ',diskon='+QuotedStr(clearDot(edTotalDiskon.Text))+
        ',total2='+QuotedStr(clearDot(edt2.Text))+
        ',pajakper='+QuotedStr(clearDot(Edpajakper.Text))+
        ',pajak='+QuotedStr(clearDot(EdNpajak.Text))+
        ',total_pembelian='+QuotedStr(clearDot(edGrandTotal.Text))+
        ',id_peg='+QuotedStr(cbopetugas)+
        ' where no_tranxp='+QuotedStr(btnnoreg.Text);
        ExecSQL1(sql1);
          //ShowMessage('Simpan ubah :'+ btnnoreg.Text);
      except
        ShowMessage('Simpan Edit / ubah Gagal :'+ btnnoreg.Text);
        raise;
      end;

      //simpan Detail
       sql:= 'delete from detail_pembelian'+
        ' where no_trans='+QuotedStr(btnnoreg.Text);
        ExecSQL1(sql);

         try

          for i1:=1 to Grid1.RowCount-1 do begin
             sql2:='INSERT INTO detail_pembelian (no_trans,tgl_faktur,no,kode_brg,exp_obat,nobatch,nama,jumlah,satuan,hrga_beli,n_t1,n_disk,n_t2)'+
             ' Values('+
             QuotedStr(btnnoreg.Text)+','+    // no trans
             QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_buat.Date))+','+  //tgl trans
             QuotedStr(Grid1.Cells[1,i1])+','+ // no
             QuotedStr(Grid1.Cells[2,i1])+','+ // kd brg
	           QuotedStr(Grid1.Cells[4,i1])+','+ // Tgl. Exp
             QuotedStr(Grid1.Cells[5,i1])+','+ // No. Batch
             QuotedStr(Grid1.Cells[3,i1])+','+ // nama brg
             //QuotedStr(RealFormat(StrToFloat(Grid1.Cells[4,i1])))+','+// jumlah 0,00
             QuotedStr(Grid1.Cells[6,i1])+','+ // jumlah
	           QuotedStr(Grid1.Cells[7,i1])+','+ // satuan
             QuotedStr(Grid1.Cells[8,i1])+','+ // harga
             QuotedStr(Grid1.Cells[9,i1])+','+ // t1
             QuotedStr(Grid1.Cells[10,i1])+','+ // disk
             QuotedStr(Grid1.Cells[11,i1])+')'; // t2
             //QuotedStr(Grid1.Cells[4,i1])+')'; // Tgl exp
             ExecSQL1(sql2);

             //ShowMessage('Simpan detail ok :'+ Grid1.Cells[2,i1]);
             end;
           //--cetak
           // bayar_tran;
           ShowMessage('Simpan Perubahan ok :'+ btnnoreg.Text);
           KosongTex(True);
           btcariClick(Sender);
     except
        raise;
      end;

       //KosongTex(True);
   end //end Update
   else if PnOperasi.Caption='Hapus Data' then
   begin
      if MessageDlg('Data dengan'+#13+#10+btnnoreg.Text+#13+#10+
        'akan di Hapus, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
        begin
      try
      // delete
        SQL := 'delete from tbl_pembelian where no_tranxp='+
        QuotedStr(btnnoreg.Text)+'';
        ExecSQL1(sql); //Hapus

        sql:= 'delete from detail_pembelian'+
        ' where no_trans='+QuotedStr(btnnoreg.Text);
        ExecSQL1(sql);


        ShowMessage('Hapus / :'+ btnnoreg.Text);
        //KosongTex(True);
        //AktifControl(Self,PnInput,False);
      except
             ShowMessage('Hapus Keluar Gagal :'+ btnnoreg.Text);
        raise;
      end;
        end;
    end; //selesai Proses
      KosongTex(True);

end; //end tanya

  end;


Procedure TFrmPembelian.TampilDataNocari;
  var
  spdata : TMyStoredProc;
  i : integer;
  begin
   aturgrid2;
   spdata:= TMyStoredProc.Create(nil);
   spdata.Connection := DmModul.con1;
  try
    spdata.Close;
    spdata.StoredProcName := 'sp_getNoPesanan';
    spdata.PrepareSQL;
    //spdata.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp1.date); //key ba
    //spdata.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key ba
    //spdata.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    spdata.ParamByName('cari').AsString := edcarinomor.text;
    spdata.Open;

    cxLabel11.Caption := inttostr(spdata.RecordCount) +' record ';


    if spdata.Eof then
    begin
    ShowMessage('data YANG DICARI tidak ada :'+ edcarinomor.Text);
    exit;
    end;


     for i:=1 to Grid2.RowCount-1 do begin
        Grid2.Cells[0,i]:='';
        Grid2.Cells[1,i]:='';
        Grid2.Cells[2,i]:='';
        Grid2.Cells[3,i]:='';
        Grid2.Cells[4,i]:='';
        Grid2.Cells[5,i]:='';
    end;


    //isi grid

    counter:=0;
      if  spdata.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= spdata.RecordCount+1;


    while not spdata.Eof do begin
          Inc(counter);   //IntToStr(counter);
          Grid2.Cells[0,counter]:=IntToStr(counter); //No.
          Grid2.Cells[1,counter]:=spdata.FieldByName('no_trans_p').AsString;
          Grid2.Cells[2,counter]:=spdata.FieldByName('Pesanan_No').AsString;
          Grid2.Cells[3,counter]:=spdata.FieldByName('tgl_pesanan').AsString;
          Grid2.Cells[4,counter]:=spdata.FieldByName('nama_supp').AsString;
          Grid2.Cells[5,counter]:=spdata.FieldByName('status').AsString;
          //Grid2.Cells[5,counter]:=spdata.FieldByName('gudang').AsString;
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

  Procedure TFrmPembelian.TampilDatacariTGL;
  var
  spdata : TMyStoredProc;
  i : integer;
  begin
   aturgrid2;
   spdata:= TMyStoredProc.Create(nil);
   spdata.Connection := DmModul.con1;
  try
    spdata.Close;
    spdata.StoredProcName := 'sp_GETpembelianTgl';
    spdata.PrepareSQL;
    spdata.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp1.date); //key ba
    spdata.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key ba
    //spdata.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    //spdata.ParamByName('cari').AsString := cxcariKeluar.text;
    spdata.Open;

    cxLabel11.Caption := inttostr(spdata.RecordCount) +' record ';


    if spdata.Eof then
    begin
    ShowMessage('data YANG DICARI tidak ada :'+ edcarinomor.Text);
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
      if  spdata.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= spdata.RecordCount+1;


    while not spdata.Eof do begin
          Inc(counter);   //IntToStr(counter);
          Grid2.Cells[0,counter]:=IntToStr(counter); //No.
          Grid2.Cells[1,counter]:=spdata.FieldByName('no_faktur').AsString;
          Grid2.Cells[2,counter]:=spdata.FieldByName('tgl_pembelian').AsString;
          Grid2.Cells[3,counter]:=spdata.FieldByName('nama_supp').AsString;
          Grid2.Cells[4,counter]:=spdata.FieldByName('total_pembelian').AsString;
          Grid2.Cells[5,counter]:=spdata.FieldByName('status_byr').AsString;
          Grid2.Cells[6,counter]:=spdata.FieldByName('no_tranxp').AsString;

          //Grid2.Cells[5,counter]:=spdata.FieldByName('gudang').AsString;
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

  Procedure TFrmPembelian.TampilData;
  var
    q2,q3 : TMyQuery;
    qd2 : TMyQuery;
    i2 : Integer;
  Begin
    q2 := TMyQuery.Create(nil);
    q2.Connection := DmModul.con1;
  try
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text :='select * from tbl_pembelian where no_tranxp='+QuotedStr(btnnoreg.Text)+'';
  q2.Open;

  if q2.RecordCount > 0 then
  begin



  if PnOperasi.Caption='Ubah Data' then
   begin
    //    AktifControl(Self,PnInput,True);
    //    AktifControl(Self,Pn_list,True);
    //BtnProses.Enabled:=True;

    end;
    KosongTex(True);
    //ambilRuang;
    btnnoreg.Text:=q2.FieldByName('no_tranxp').AsString;
    dtp_buat.date:=q2.FieldByName('tgl_pembelian').AsDateTime;
    cxNoBbk.Text:=q2.FieldByName('no_faktur').AsString;
    cxBtn_idcv.Text:=q2.FieldByName('no_supplier').AsString;
    cbbpetugas.EditValue:=q2.FieldByName('id_peg').AsString;
    cbo_status.Text:=q2.FieldByName('status_byr').AsString;

     if q2.fieldbyname('incl_disk').AsString='1' then
      chkDiskon.checked := true else chkDiskon.checked:=false;

    edTotalDiskon.Text:=q2.FieldByName('diskon').AsString;
    Edpajakper.Text:=q2.FieldByName('pajakper').AsString;
    hitungTotal;

    //tanggal SPK
    if VarIsNull(q2['jth_tempo']) then
      begin
    dtp_jatuhtempo.ShowCheckbox :=true;
    dtp_jatuhtempo.Checked := false;
    dtp_jatuhtempo.Color := clred;
    end
   else
      begin
      dtp_jatuhtempo.Date:=q2.FieldByName('jth_tempo').AsDateTime;
      dtp_jatuhtempo.Color := clMenu;
    end;


    //dtp_buat.date:=q2.FieldByName('dtp_jatuhtempo').AsDateTime;
   //  cbo_gudang.EditValue:=q2.FieldByName('gudang').AsString;

  end
  else
    begin
    ShowMessage( 'data kosong Faktur / Tidak ADA : ' + btnnoreg.Text );
    end;

  finally
    q2.Close;
    q2.Free;
  end;

  //tampil detail
  qd2 := TMyQuery.Create(nil);
  qd2.Connection := DmModul.con1;

  try
    qd2.Active := false;
    qd2.SQL.Clear;
    qd2.SQL.Text :='select * from detail_pembelian WHERE no_trans ='+
    QuotedStr(btnnoreg.Text)+' order by no';
    qd2.Open;

    if qd2.Eof then
    begin
    Total;
    //Edtotal.Text := '0';
    Exit;
    end;

    for i2:=1 to Grid1.RowCount-1 do begin
        Grid1.Cells[0,i2]:='';
        Grid1.Cells[1,i2]:='';
        Grid1.Cells[2,i2]:='';
        Grid1.Cells[3,i2]:='';
        Grid1.Cells[4,i2]:='';
        Grid1.Cells[5,i2]:='';
        Grid1.Cells[6,i2]:='';
        Grid1.Cells[7,i2]:='';
        Grid1.Cells[8,i2]:='';
        Grid1.Cells[9,i2]:='';
        Grid1.Cells[10,i2]:='';
        Grid1.Cells[11,i2]:='';
    end;

    counter:=0;
    if  qd2.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= qd2.RecordCount+1;

      {
      Grid1.Cells[0,0]:='No';
      Grid1.Cells[1,0]:='No. Urut';
      Grid1.Cells[2,0]:='Kode';
      Grid1.Cells[3,0]:='Nama';
      Grid1.Cells[4,0]:='Tgl. Exp';
      Grid1.Cells[5,0]:='No. Batch';
      Grid1.Cells[6,0]:='Jumlah';
      Grid1.Cells[7,0]:='Satuan';
      Grid1.Cells[8,0]:='Harga';
      Grid1.Cells[9,0]:='Total 1';
      Grid1.Cells[10,0]:='Disk';
      Grid1.Cells[11,0]:='Grand Total ';
      }

	//no_transaksi,no,kode_brg,nama,qty,satuan,harga,total
    while not qd2.Eof do begin
          Inc(counter);





          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=dataRow(qd2.FieldByName('no'),'');
          Grid1.Cells[2,counter]:=dataRow(qd2.FieldByName('kode_brg'),'-');
          Grid1.Cells[3,counter]:=dataRow(qd2.FieldByName('nama'),'-');
          //Grid1.Cells[4,counter]:=dataRow(qd2.FieldByName('exp_obat'),'');


              if VarIsNull(qd2['exp_obat']) then
          begin
               Grid1.Cells[4,counter]:='0000-00-00';
        end
       else
          begin
                Grid1.Cells[4,counter]:=FormatDateTime('yyyy-mm-dd',qd2.FieldByName('exp_obat').AsDateTime);
        end;




      //    Grid1.Cells[4,counter]:=FormatDateTime('yyyy-mm-dd',qd2.FieldByName('exp_obat').AsDateTime);
          Grid1.Cells[5,counter]:=dataRow(qd2.FieldByName('nobatch'),'-');
          Grid1.Cells[6,counter]:=dataRow(qd2.FieldByName('jumlah'),'0');
          Grid1.Cells[7,counter]:=dataRow(qd2.FieldByName('satuan'),'-');
          Grid1.Cells[8,counter]:=dataRow(qd2.FieldByName('hrga_beli'),'0');
          Grid1.Cells[9,counter]:=dataRow(qd2.FieldByName('n_t1'),'0');
          Grid1.Cells[10,counter]:=dataRow(qd2.FieldByName('n_disk'),'0');
          Grid1.Cells[11,counter]:=dataRow(qd2.FieldByName('n_t2'),'0');
          qd2.Next;
    end;
   Total;

  finally
    qd2.Close;
    qd2.Free;
  end;
  //hitung_tran;
  end;

Function TFrmPembelian.GetNoBBK:string;
var nomor,faktur:string;
NO:integer;
begin
// nomor:='';
 nomor:=lastKASIR('BL'+formatdatetime('yymmdd',now())+'%');
 if nomor='' then
 faktur:='BL'+formatdatetime('yymmdd',now())+'-0001'
 else
 begin
   nomor:=copy(nomor,10,4);
   no:=strtoint(nomor);
   nomor:='0000'+inttostr(no+1);
   nomor:=copy(nomor,length(nomor)-3,4);
   faktur:='BL'+formatdatetime('yymmdd',now())+'-'+nomor;
 end;
result:=faktur;
end;

Function TFrmPembelian.Lastkasir(s:string):string;
begin
QCari.Close;
QCari.Connection:=DmModul.con1;
QCari.SQL.text:='SELECT MAX(no_tranxp) AS NOTA'+
     ' FROM tbl_pembelian'+
     ' WHERE no_tranxp LIKE '+quotedstr(s);
QCari.Open;
if not QCari.IsEmpty then
result:=QCari.fieldbyname('NOTA').AsString
else
result:='';
end;

procedure TFrmPembelian.btn_penerimaPropertiesChange(Sender: TObject);
var
  SPcariPeg  : TMyStoredProc;
begin
SPcariPeg := TMyStoredProc.Create(nil);

  try
    SPcariPeg.Connection := DmModul.con1;
    SPcariPeg.Close;
    SPcariPeg.StoredProcName := 'SPAmbilPegawai';
    SPcariPeg.PrepareSQL;
  //  SPcariPeg.ParamByName('cari').AsString := btn_penerima.Text; //cv bringin
    //SPcariPeny.Execute;
    SPcariPeg.Open;
   if SPcariPeg.RecordCount > 0 then
  begin
    lbl_cv.Caption :=SPcariPeg.FieldByName('nama').AsString;
   end
  else
    begin
    lbl_cv.Caption :='Pegawai Blm Dipilih';
    end;

  finally
    SPcariPeg.Close;
    SPcariPeg.Free;
  end;

end;

procedure TFrmPembelian.btn_ruanganPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_user';
  LsvSetCol('Id|Nama|',
  '120|270|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('id_user');
  FCarisp.LsField.Items.Add('nama_user');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
  //  btn_ruangan.Text:=nFieldCari[0];
  //  Lbl_nm_ruang.Caption:=nFieldCari[1];
 //   btn_ruangan.Style.Color:=clMoneyGreen;
    //cxButton.SetFocus;
  end;
end;

procedure TFrmPembelian.btn_ruanganPropertiesChange(Sender: TObject);
begin
ambilRuang;
end;

procedure TFrmPembelian.lv1CustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
  var
  lst: TListView;
  i: integer;
  f1, f2, c1, c2: TColor;
begin
  if (TListView(Sender).ViewStyle = vsIcon) then
    Exit;
  lst := Sender as TListView;
  lst.Canvas.Brush.Style := bsSolid;
  i := lst.Items.Count;
  if (i mod 2) <> 0 then
  begin
    c1 := clWhite;
    c2 := $00F8F8F8;
    f1 := clBlue;
    f2 := clBlack;
  end else
  begin
    c1 := $00F8F8F8;
    c2 := clWhite;
    f1 := clBlack;
    f2 := clBlue;
  end;
  // Painting...
  if (Item.Index mod 2) = 0 then
  begin
    lst.Canvas.Brush.Color := c2;
    lst.Canvas.Font.Color := f2;
  end else
  begin
    lst.Canvas.Brush.Color := c1;
    lst.Canvas.Font.Color := f1;
  end;
end;

procedure TFrmPembelian.grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);
begin

    Application.CreateForm(Tfrm_ganti_brg, frm_ganti_brg);
    frm_ganti_brg.chkgrid.Checked := true;
    //frm_ganti_brg.lblnama.Caption :='cobak';
    frm_ganti_brg.lblnama.Caption := FrmPembelian.Grid1.Cells[0, ARow];
    frm_ganti_brg.ed_nama.Text := FrmPembelian.Grid1.Cells[3, ARow];
    frm_ganti_brg.ShowModal;
    //frm_ganti_brg.Show;
    frm_ganti_brg.Free;



end;

procedure TFrmPembelian.grid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
  //var   S: string;
begin
   for i:=2 to  Grid1.RowCount - 1 do
    if Grid1.Cells[1,i]='' then
      begin
        Grid1.Canvas.Brush.Color:=clRed;
        //grid1.Fonts.Color:=clGray;
          if ((ACol=1)and(ARow=i)) then
            begin
              Grid1.Canvas.FillRect(Rect);

            end;
      end;

end;

procedure TFrmPembelian.btnnoregPropertiesChange(Sender: TObject);
begin
Edkodetransaksi.Text := btnnoreg.Text;
end;

procedure TFrmPembelian.SpeedButton3Click(Sender: TObject);
begin
// uRUT
   for i2:=1 to Grid1.RowCount-1 do begin
    Grid1.Cells[0,i2]:=IntToStr(i2);
    Grid1.Cells[1,i2]:=IntToStr(i2);
  end;
end;


procedure TFrmPembelian.hitung;
begin

  if edjml.Text='' then begin
   //ShowMessage('Masukan jumlah Qty!');
   edjml.SetFocus;
   exit;
  end;


  if edhargasat.Text='' then begin
   //ShowMessage('@ Hrg Satuan!');
   edhargasat.SetFocus;
   exit;
  end;

  jml :=strtofloat(edjml.Text);
  hrgd :=strtofloat(edhargasat.Text);
  ddisk :=strtofloat(EdDiskPer.Text);

  n_t1d := jml * hrgd;

  if CheckBox1.Checked then
    begin
     n_diskd := strtofloat(edTotalDisk.Text);;
   end
    else
  begin
   n_diskd := n_t1d * (ddisk /100 );
  end;
//n_diskd := n_t1d * (ddisk /100 );

//Penjumlahan
n_t2d := n_t1d - n_diskd;

edTotalDisk.text := floattostr (n_diskd);
edTotalDisk.Color:=clcream;

EdTotal2.text := floattostr (n_t2d);
EdTotal2.Color:=clcream;

edTotal1.text := floattostr (n_t1d);
edTotal1.Color:=clcream;

end;


procedure TFrmPembelian.hitungTotal;
var
   n_t1,n_disk,n_t2,n_pajak,ppn,n_pengiriman, totalnilai1,totalnilai2,totspj :real;
begin
if ed_t1.text = '' then Exit;
if edTotalDiskon.text = '' then Exit;
if edt2.text = '' then Exit;
if Edpajakper.text = '' then Exit;
//formatRupiah(edt2);
n_t1 :=strtofloat (clearDot(ed_t1.Text)); //total 1
n_disk :=strtofloat (clearDot(edTotalDiskon.Text)); //diskon
n_t2 :=strtofloat (clearDot(edt2.Text)); //total 2
ppn :=strtofloat (clearDot(Edpajakper.Text));


//t2
//formatRupiah(edt2);


totalnilai1 := n_t1 - n_disk;  //T2
edt2.Color:=clcream;
edt2.Text := floattostr(totalnilai1);
n_pajak := n_t2 *(ppn/100);
EdNpajak.Text := floattostr(n_pajak);
totalnilai2 := (totalnilai1) + n_pajak ;
//pajak
formatRupiah(EdNpajak);

edGrandTotal.text := floattostr (totalnilai2);
edGrandTotal.Color:=clcream;
formatRupiah(edGrandTotal);
end;



procedure TFrmPembelian.SpeedButton4Click(Sender: TObject);
begin
hitung;

end;

procedure TFrmPembelian.SpeedButton7Click(Sender: TObject);
begin
pnlcari.Visible:= true;
end;

procedure TFrmPembelian.SpeedButton8Click(Sender: TObject);
begin
pnlcari.Visible:= false;
end;

procedure TFrmPembelian.SpeedButton9Click(Sender: TObject);
begin
if MessageDlg('@Harga Jual'+#13+#10+edkode.Text+':'+ cx_nama_brg.Text  +#13+#10+
        '@Harga Jual rubah, ?' +EdHrgJual.Text ,
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
       try

        sql1 :='Update tbl_dataobat set ' +
        'hrg_obat='+QuotedStr(EdHrgJual.Text)+
        ',tgl_create='+QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+
        ' where kd_obat='+QuotedStr(edkode.Text);
        ExecSQL1(sql1);
          ShowMessage('ubah Harga Sukses :'+ cx_nama_brg.Text + ' Hrg '+ EdHrgJual.Text );
      except
        ShowMessage('Simpan Update Harga Gagal :'+ edkode.Text);
        raise;
      end;

       end;
        exit;
      end;

      Procedure TFrmPembelian.TampilEditkdBarang;
  var
  spdatae : TMyStoredProc;
  i : integer;
  begin
   aturgrid3;
   spdatae:= TMyStoredProc.Create(nil);
   spdatae.Connection := DmModul.con1;
  try
    spdatae.Close;
    spdatae.StoredProcName := 'sp_ambilbarang';
    spdatae.PrepareSQL;
    spdatae.ParamByName('cari').AsString := ednmbarangedit.text;
    spdatae.Open;

    jmldataedit.Caption := inttostr(spdatae.RecordCount) +' record yang dicari ';


    if spdatae.Eof then
    begin
    ShowMessage('data YANG DICARI tidak ada :'+ edcarinomor.Text);
    exit;
    end;


     for i:=1 to gridGantikode.RowCount-1 do begin
        gridGantikode.Cells[0,i]:='';
        gridGantikode.Cells[1,i]:='';
        gridGantikode.Cells[2,i]:='';

    end;


    //isi grid

    counter:=0;
      if  spdatae.RecordCount<=1 then
      gridGantikode.RowCount:= 2
    else
      gridGantikode.RowCount:= spdatae.RecordCount+1;


    while not spdatae.Eof do begin
          Inc(counter);   //IntToStr(counter);
          gridGantikode.Cells[0,counter]:=IntToStr(counter); //No.
          gridGantikode.Cells[1,counter]:=spdatae.FieldByName('kd_obat').AsString;
          gridGantikode.Cells[2,counter]:=spdatae.FieldByName('nm_obat').AsString;

          //Grid2.Cells[5,counter]:=spdata.FieldByName('gudang').AsString;
          {
          grid2.ShowSelection := True;
          for i := 1 to grid2.RowCount - 1 do
          grid2.AddCheckBox(4, i, false, false);
           }
          spdatae.Next;
    end;

    finally
    spdatae.Close;
    end;
  end;

end.
