unit Unkasir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, ComCtrls,
  AdvShapeButton, StdCtrls, Buttons, DB, DBAccess, MyAccess, Grids,
  BaseGrid, AdvGrid, MemDS, cxCalendar, cxMemo, frxDesgn, frxBarcode,
  frxClass, frxDBSet, AdvListV, frxDMPExport, AdvUtil, AdvObj;

type
  Tfrm_kasir = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    cxlbl1: TcxLabel;
    cxlbl8: TcxLabel;
    btnnoreg: TcxButtonEdit;
    cxlbl10: TcxLabel;
    cbobayar: TcxLookupComboBox;
    edtotal: TAdvShapeButton;
    grp1: TGroupBox;
    btnBtnBaru: TSpeedButton;
    btnBtnUbah1: TSpeedButton;
    btnBtnHapus: TSpeedButton;
    btnsave: TSpeedButton;
    ds1: TMyDataSource;
    ds2: TMyDataSource;
    pnl3: TPanel;
    edkode: TcxButtonEdit;
    edjml: TcxTextEdit;
    edhrg: TcxTextEdit;
    ednama: TcxTextEdit;
    ds3: TMyDataSource;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    PnOperasi: TPanel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    ed_dtotal: TEdit;
    ed_pembulatan: TEdit;
    edEd_total2: TEdit;
    grid1: TAdvStringGrid;
    ed1: TcxTextEdit;
    dtglbuat: TcxDateEdit;
    wa: TTimer;
    cxlbljam: TcxLabel;
    ds4: TMyDataSource;
    ds5: TMyDataSource;
    mystrdprc1: TMyStoredProc;
    ds6: TMyDataSource;
    con1: TMyConnection;
    SpeedButton2: TSpeedButton;
    ds7: TMyDataSource;
    cxcari: TcxTextEdit;
    pnl4: TPanel;
    lv1: TListView;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    SpeedButton3: TSpeedButton;
    frxdbdtst1: TfrxDBDataset;
    myqry2: TMyQuery;
    frxbrcdbjct1: TfrxBarCodeObject;
    frxdsgnr1: TfrxDesigner;
    frxrprt2: TfrxReport;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    btn5: TButton;
    Button1: TButton;
    cxLabel7: TcxLabel;
    frxrprt1: TfrxReport;
    frxdtmtrxprt1: TfrxDotMatrixExport;
    txtpetugas: TEdit;
    ed_bayar: TEdit;
    ed_kembali: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxLabel1: TcxLabel;
    procedure edkodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBtnBaruClick(Sender: TObject);
    procedure grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: String);
    procedure grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure btn1Click(Sender: TObject);
    procedure grid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid1KeyPress(Sender: TObject; var Key: Char);
    procedure btn2Click(Sender: TObject);
    procedure edjmlKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnsaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn3Click(Sender: TObject);
    procedure ed_dtotalChange(Sender: TObject);
    procedure btn_hitungClick(Sender: TObject);
    procedure edEd_rpChange(Sender: TObject);
    procedure edEd_raChange(Sender: TObject);
    procedure ed_pembulatanChange(Sender: TObject);
    procedure edEd_total2Change(Sender: TObject);
    procedure edpatenChange(Sender: TObject);
    procedure ed_racikanChange(Sender: TObject);
    procedure btnBtnUbah1Click(Sender: TObject);
    procedure btnBtnHapusClick(Sender: TObject);
    procedure edjmlKeyPress(Sender: TObject; var Key: Char);
    procedure edEd_rpKeyPress(Sender: TObject; var Key: Char);
    procedure edEd_raKeyPress(Sender: TObject; var Key: Char);
    procedure ed_lbrKeyPress(Sender: TObject; var Key: Char);
    procedure ed_pembulatanKeyPress(Sender: TObject; var Key: Char);
    procedure btnnoregPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnnoregKeyPress(Sender: TObject; var Key: Char);
    procedure waTimer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ed2PropertiesChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edkodeKeyPress(Sender: TObject; var Key: Char);
    procedure cxcariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxLookupbrgEnter(Sender: TObject);
    procedure cxcariKeyPress(Sender: TObject; var Key: Char);
    procedure lv1KeyPress(Sender: TObject; var Key: Char);
    procedure lv1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ed_bayarChange(Sender: TObject);
  private
    { Private declarations }
    function Caribrg(nKode:String):string;
    function Caribrgcombo(nkode_cr: String):string;

  public
    { Public declarations }
     Procedure bayar_tran;
     Procedure hitung_tran;
     Procedure buatno;
     Procedure Aturgrid;
     Procedure total;
     procedure deleterow(mg:TStringGrid;ARow:integer);
     Procedure Tampilcombo;
     Procedure Rata;
     Procedure TampilData;
     Procedure KosongTex(Kunci:Boolean);
  end;

var
  frm_kasir: Tfrm_kasir;
   FCounter :integer;
  tambah: boolean;
  counter,hapus_baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	sql,sql1,sql2,sql3,m1,m2,m3,m4,m5,ppn: String;
  qty,jml,harga,total_harga,disk,total2 : real ; // :integer;
  hrgd,n_t1d,ddisk,n_diskd,n_t2d,n_pajakd :real;
   a1,a2,a3,a4,a5 ,a6 : real;
 
  cek_inputan:boolean;

implementation

uses UnModul, UnCarisp,UFunctions,UF_setting,UF_dbsql,Un_barang,UnTdokter,
  UnTpetugas, Unbayar;

{$R *.dfm}

Procedure Tfrm_kasir.bayar_tran;
begin
{
  Application.CreateForm(Tfrmbayar, frmbayar);
  frmbayar.cxtotal.Text := edEd_total2.Text;
  frmbayar.ednotrans.Text := btnnoreg.Text;
  frmbayar.ednotrans.Enabled := False;
  frmbayar.ShowModal;
  frmbayar.Free;
  }
end;


Procedure Tfrm_kasir.hitung_tran;
begin
{
if Edpaten.Text='' then begin
   ShowMessage('jml paten Belum di isi ');
   edEd_rp.SetFocus;
   exit;
end;

if ed_racikan.Text='' then begin
   ShowMessage('jml Racikan Belum di isi !');
   edEd_ra.SetFocus;
   exit;
end;

if ed_pembulatan.Text='' then begin
   ShowMessage('jml Pembulatan Belum di isi!');
   ed_pembulatan.SetFocus;
   exit;
end;

  if ed_dtotal.Text = '' then Exit;
    a1 := StrToFloat(clearDot(Edpaten.Text));
    a2 := StrToFloat(clearDot(ed_racikan.Text));

    a6 := a1 + a2;
    edt1.text := FloatToStr(a6);

    a3 := StrToFloat(clearDot(ed_dtotal.Text));
    a4 := StrToFloat(clearDot(ed_pembulatan.Text));
    a5 := a1 + a2 + a3 + a4 ;
    edEd_total2.Text := FloatToStr(a5);
    ed_terbilang.Text := Spell(clearDot(edEd_total2.Text));
    }
    end;

Procedure Tfrm_kasir.Rata;
begin
  {
  RightEdit(edEd_rp);
  RightEdit(edEd_ra);
  RightEdit(ed_phrg);
  RightEdit(ed_rahrg);
  RightEdit(edpaten);
  RightEdit(ed_racikan);
  RightEdit(ed_dtotal);
  RightEdit(ed_pembulatan);
  RightEdit(edEd_total2);
  }
  //BtnHapus.Enabled := false;
end;





Procedure Tfrm_kasir.Tampilcombo;
 var
 q2,q3,q4,q5 : TMyQuery;

begin

  {
  q2 := TMyQuery.Create(nil);
  try
  q2.Connection := DmModul.con1;
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text := 'Select nip, nama from ref_dokter order by nama';
  //q2.SQL.Text := 'Select nip, CONCAT(gol, " , ", nm_gol) as nm  from r_gol';
  q2.Open;
    if q2.RecordCount > 0 then
  begin
  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString
  ds1.DataSet := q2;
  cbodokter.Properties.ListSource := ds1;
  cbodokter.Properties.ListFieldNames := 'nama';
  cbodokter.Properties.KeyFieldNames := 'nip';
  end;
   finally
  //  q2.Close;
  //  q2.Free;
  end;

     q3 := TMyQuery.Create(nil);
  try
  q3.Connection := DmModul.con1;
  q3.Active := false;
  q3.SQL.Clear;
  q3.SQL.Text := 'Select poly, nama from ref_poly order by nama';
  //q2.SQL.Text := 'Select nip, CONCAT(gol, " , ", nm_gol) as nm  from r_gol';
  q3.Open;
    if q3.RecordCount > 0 then
  begin
  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString
  ds2.DataSet := q3;
  cbopoli.Properties.ListSource := ds2;
  cbopoli.Properties.ListFieldNames := 'nama';
  cbopoli.Properties.KeyFieldNames := 'poly';
  end;
   finally
  //  q2.Close;
  //  q2.Free;
  end;
  }
     q4 := TMyQuery.Create(nil);
  try
  q4.Connection := DmModul.con1;
  q4.Active := false;
  q4.SQL.Clear;
  q4.SQL.Text := 'Select nobyr, namabyr from ref_bayar';
  //q2.SQL.Text := 'Select nip, CONCAT(gol, " , ", nm_gol) as nm  from r_gol';
  q4.Open;
    if q4.RecordCount > 0 then
  begin
  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString
    ds3.DataSet := q4;
    cbobayar.Properties.ListSource := ds3;
    cbobayar.Properties.ListOptions.ShowHeader := False;
    cbobayar.Properties.ListFieldNames := 'namabyr';
    cbobayar.Properties.KeyFieldNames := 'nobyr';
  end;


   finally
  //  q2.Close;
  //  q2.Free;
  end;
  {
       q5 := TMyQuery.Create(nil);
  try
  q5.Connection := DmModul.con1;
  q5.Active := false;
  q5.SQL.Clear;
  q5.SQL.Text := 'Select * from m_petugas';
  //q2.SQL.Text := 'Select nip, CONCAT(gol, " , ", nm_gol) as nm  from r_gol';
  q5.Open;
    if q5.RecordCount > 0 then
  begin
  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString
  ds5.DataSet := q5;
  cbbpetugas.Properties.ListSource := ds5;
  cbbpetugas.Properties.ListFieldNames := 'NM_p';
  cbbpetugas.Properties.KeyFieldNames := 'nip';
  end;
   finally
  //  q2.Close;
  //  q2.Free;
  end;



  cbodokter.ItemIndex := 0;
  cbopoli.ItemIndex := 0;
  cbobayar.ItemIndex := 0;
  cbbpetugas.ItemIndex := 0;
    }
end;



Procedure Tfrm_kasir.buatno;
var
  tgl,urut : string;
  i_no : integer;
  q_no: TMyQuery;
begin

tgl := FormatDateTime('yyMMdd', dtglbuat.Date) + '-';
q_no := TMyQuery.Create(nil);

try
      q_no.Connection := DmModul.con1;
      q_no.Active := false;
      q_no.SQL.Clear;
   q_no.SQL.Add('Select Max(right(no_transaksi, 4)) from H_penjualan ' +
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
  btnnoreg.Text := 'J-' + tgl + urut;
   finally
    q_no.Close;
    q_no.Free;
  end;
end;

Procedure Tfrm_kasir.Aturgrid;
begin
  counter:=0;
  hapus_baris:=0;

  Grid1.ColCount:=8;
  Grid1.RowCount:=1;
  //Grid1.FixedCols:=0;
  Grid1.FixedRowAlways := True;
  //Grid1.DefaultRowHeight:=20;
  //Grid1.Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect];
  Grid1.Cells[0,0]:='No.';
  Grid1.Cells[1,0]:='No.';
  Grid1.Cells[2,0]:='Kode';
  Grid1.Cells[3,0]:='Nama';
  Grid1.Cells[4,0]:='Jml';
  Grid1.Cells[5,0]:='Satuan';
  Grid1.Cells[6,0]:='Harga';
  Grid1.Cells[7,0]:='Total';

  Grid1.ColWidths[0]:=30;
  Grid1.ColWidths[1]:=40;
  Grid1.ColWidths[2]:=90;
  Grid1.ColWidths[3]:=340;
  Grid1.ColWidths[4]:=50;
  Grid1.ColWidths[5]:=100;
  Grid1.ColWidths[6]:=80;
  Grid1.ColWidths[7]:=90;

 end;



procedure Tfrm_kasir.edkodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  {
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_barang';
  LsvSetCol('No|Nama|@Harga|',
  '90|230|70|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('kode');
  FCarisp.LsField.Items.Add('nama_barang');
  FCarisp.LsField.Items.Add('harga_jual');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    edkode.Text:=nFieldCari[0];
    Ednama.Text:=nFieldCari[1];
    Edhrg.Text:=nFieldCari[2];
    edjml.Text:='1';
    //edt1.Color:=clWhite;
    edjml.SetFocus;
  end;
  }
  Caribrg('sp_barang');
end;

procedure Tfrm_kasir.FormCreate(Sender: TObject);
begin
rata;
tampilcombo;
Aturgrid;
dtglbuat.Date := Now;
end;

procedure Tfrm_kasir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//q2.close;
//q3.close;
//q4.close;
end;

procedure Tfrm_kasir.btnBtnBaruClick(Sender: TObject);
begin
PnOperasi.Caption := 'Tambah Data';
buatno;
KosongTex(True);
//cbobayar.SetSelection(1);
//edresep.SetFocus;
//Aturgrid;
end;

procedure Tfrm_kasir.grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    1: HAlign := taCenter;
    2,3,5: HAlign := taLeftJustify;
    4,6,7: HAlign := taRightJustify;
  end;
end;

procedure Tfrm_kasir.grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
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

  if ((ACol = 5) and (ARow > 0)) then
  begin
     ABrush.Color := $00C0FFFF;
    AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;
end;

procedure Tfrm_kasir.grid1GetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
begin
isFloat := Acol in [6,7];
case ACol of
 // 3: Floatformat :='%.0n';
 // 5: Floatformat :='%.0n';
  6: Floatformat :='%.0n';
  7: Floatformat :='%.0n';
 // 8: Floatformat :='%.0n';
end;
end;




procedure Tfrm_kasir.grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
  var
    input_box : string;
  begin
hapus_baris:=ARow;
cek_baris:=Grid1.Cells[1,arow];

{
if (aCol = 2) or (aCol = 4) then
   begin
   Grid1.Options := Grid1.Options + [Goediting];
 end;
   jml:=StrToFloat(Grid1.Cells[4,Grid1.RowCount-1]);
   harga:=StrToFloat(Grid1.Cells[6,Grid1.RowCount-1]);
   total_harga:=jml*harga;
   Grid1.Cells[7,Grid1.RowCount-1]:=FloatToStr(total_harga);
   Total; //jumlah total
   }

   if not (Grid1.Cells[ACol,ARow]='') then begin

   //jumlah brg
    if ACol=4 then  begin
    if not (Grid1.RowCount=1) then begin
       input_box:=InputBox('qty','Jumlah Barang : '+Grid1.Cells[3,arow],Grid1.Cells[4,arow]);
       qty:=StrToFloat(input_box);
       Grid1.Cells[ACol,ARow]:=FloatToStr(qty);
          jml:=StrToFloat(Grid1.Cells[4,arow]);
          harga:=StrToFloat(Grid1.Cells[6,arow]);
      total_harga:=jml*harga;
      Grid1.Cells[7,arow]:=FloatToStr(total_harga);
      Total;
      end;
      end;


  {
  if ACol=6 then  begin
      if not (Grid1.RowCount=1) then begin
       input_box:=InputBox('Nilai @ Harga Jual',' : '+Grid1.Cells[3,arow],Grid1.Cells[6,arow]);
       qty:=StrToFloat(input_box);
       Grid1.Cells[ACol,ARow]:=FloatToStr(qty);
          jml:=StrToFloat(Grid1.Cells[4,arow]);
          harga:=StrToFloat(Grid1.Cells[6,arow]);
   total_harga:=jml*harga;
   Grid1.Cells[7,arow]:=FloatToStr(total_harga);
   Total;
      end;
   end;
   }
 end;
 end;



procedure Tfrm_kasir.Total;
var i :integer;
tot_t1,jmlbrg,tot_disk,tot_t2,tot_pjk,tot_bayar:real;
begin
jmlbrg:=0;
tot_t1:=0;
   for i:=1 to Grid1.RowCount-1 do begin
   jmlbrg:=jmlbrg+strtofloat(Grid1.Cells[4,i]);
   tot_t1:=tot_t1+strtofloat(Grid1.Cells[7,i]);
   end;
   ed_dtotal.Text:=floattostr(tot_t1);
   //ed_Tjml.Text:=floattostr(jmlbrg);
   end;





procedure Tfrm_kasir.btn1Click(Sender: TObject);
begin

if edjml.Text='' then begin
   ShowMessage('Masukan jumlah!');
   edjml.SetFocus;
   exit;
   end;

inc(counter);
Grid1.RowCount:=Grid1.RowCount + 1;
Grid1.Cells[0,Grid1.RowCount-1]:=IntToStr(counter);
Grid1.Cells[1,Grid1.RowCount-1]:=IntToStr(counter);
Grid1.Cells[2,Grid1.RowCount-1]:=edkode.Text;
Grid1.Cells[3,Grid1.RowCount-1]:=ednama.Text;
Grid1.Cells[4,Grid1.RowCount-1]:=edjml.Text;
Grid1.Cells[5,Grid1.RowCount-1]:='';
Grid1.Cells[6,Grid1.RowCount-1]:=edhrg.Text;
   jml:=StrToFloat(Grid1.Cells[4,Grid1.RowCount-1]);
   harga:=StrToFloat(Grid1.Cells[6,Grid1.RowCount-1]);
   total_harga:=jml*harga;
   Grid1.Cells[7,Grid1.RowCount-1]:=FloatToStr(total_harga);
   Total; //jumlah total
   //edEd_rp.text := IntToStr(counter);
end;

procedure Tfrm_kasir.grid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{
if key = 13 then
      begin
   jml:=StrToFloat(Grid1.Cells[4,Grid1.Row]);
   harga:=StrToFloat(Grid1.Cells[6,Grid1.Row]);
   total_harga:=jml*harga;
   Grid1.Cells[7,Grid1.row]:=FloatToStr(total_harga);
   Total; //jumlah total
end;
}

if key = 13 then
      begin
   if (Grid1.Col = 2) then  begin
     FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_barang';
  LsvSetCol('No|Nama|@Harga|',
  '90|230|70|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('kode');
  FCarisp.LsField.Items.Add('nama_barang');
  FCarisp.LsField.Items.Add('harga_jual');
  FCarisp.ShowModal;
  //FCarisp.EdSearch.SetFocus;
    if nFieldCari[0]<>'' then
    begin
      Grid1.Cells[2,Grid1.Row]:=nFieldCari[0];
      Grid1.Cells[3,Grid1.Row]:=nFieldCari[1];
      Grid1.Cells[6,Grid1.Row]:=nFieldCari[2];
    end;
      end;
   jml:=StrToFloat(Grid1.Cells[4,Grid1.Row]);
   harga:=StrToFloat(Grid1.Cells[6,Grid1.Row]);
   total_harga:=jml*harga;
   Grid1.Cells[7,Grid1.row]:=FloatToStr(total_harga);
   Total; //jumlah total
  end;


end;

procedure Tfrm_kasir.grid1KeyPress(Sender: TObject; var Key: Char);
begin
{
if key = 13 then
      begin
   jml:=StrToFloat(Grid1.Cells[4,Grid1.Row]);
   harga:=StrToFloat(Grid1.Cells[6,Grid1.Row]);
   total_harga:=jml*harga;
   Grid1.Cells[7,Grid1.row]:=FloatToStr(total_harga);
   Total; //jumlah total

   end;
   }
   end;

//Hapus grid
procedure tfrm_kasir.deleterow(mg:TStringGrid;ARow:integer);
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



   procedure Tfrm_kasir.btn2Click(Sender: TObject);
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
         //edEd_rp.text := IntToStr(counter);
end
else ShowMessage('Inputan Detail masih kosong');
end;

procedure Tfrm_kasir.edjmlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=13)then

   BEGIN
    btn1Click(Sender);
    cxcari.SetFocus;
//    edkode.SetFocus

{
 else if (Key=114)then
    //delete
 else if (Key=116)then
    //showData(false,'','')
 }

end;
end;
procedure Tfrm_kasir.grid1DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
//ShowMessage(Grid1.Cells[1,arow]);
{
Application.CreateForm(Tfrm_barang, frm_barang);
frm_barang.edjml.Text := Grid1.Cells[4,arow];
frm_barang.edhrg.Text := Grid1.Cells[6,arow];
frm_barang.ShowModal;
frm_barang.Free;
 }
end;

procedure Tfrm_kasir.btnsaveClick(Sender: TObject);
 var
  AdDsData : TMyQuery;
  i: Integer;
  sql1,sql2,sql3,sql4,jnsbayar:string;
begin

if MessageDlg('Data dengan'+#13+#10+btnnoreg.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin

   hitung_tran;

   // simpan Jenis
   if cbobayar.Text = '' then
  jnsbayar := ''
  else
  jnsbayar :=  cbobayar.EditValue;


   If PnOperasi.Caption='Tambah Data' then
   begin
	    //validasi
      //if Validasi=False then exit;

      AdDsData := TMyQuery.Create(nil);
      AdDsData.Connection := DmModul.con1;

      AdDsData.Close;
      AdDsData.SQL.Text:='Select no_transaksi from h_penjualan where no_transaksi='+
      QuotedStr(btnnoreg.Text)+'';
      AdDsData.Open;
      if AdDsData.RecordCount > 0 then
      begin
        //MessageDlg('Kode sudah ada'+btnnoreg.Text+'?',mtInformation,[mbok],0);
        //ednokwi.Enabled:= true;
        //ednokwi.SetFocus;

        if MessageDlg('Kode Sudah ada'+#13+#10+btnnoreg.Text+#13+#10+
        'Buat Nomor Baru (Register), ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
       buatno;

       end;
        exit;
      end;
      try
        sql := 'insert into h_penjualan (no_transaksi,tgl,'+
        'cara_bayar,petugas,jam,total_tran,nbayar,kembali) Values('+
        QuotedStr(btnnoreg.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtglbuat.Date))+','+
        QuotedStr(jnsbayar)+','+
        QuotedStr(txtpetugas.Text)+','+
        QuotedStr(cxlbljam.Caption)+','+
        QuotedStr(clearDot(ed_dtotal.Text))+','+
        QuotedStr(clearDot(ed_bayar.Text))+','+
        QuotedStr(clearDot(ed_kembali.Text))+')';
        ExecSQL1(sql); //simpan baru

       {
         sql :='Update input_spt_keu set terbilang= tcase(terbilang)'+
       ',t_hr= tcase(t_hr)' +
       ' where id_AGENDA='+QuotedStr(EdNokwi.Text);
        ExecSQL1(sql);
        }

       // ShowMessage('Simpan ok :'+ btnnoreg.Text);
       // KosongTex(True);
        //AktifControl(Self,PnInput,False);
         except
        ShowMessage('Simpan baru gagal :'+ btnnoreg.Text);
        raise;
      end;


      //simpan Detail
      try
        for i:=1 to Grid1.RowCount-1 do begin
             sql2:='INSERT INTO t_detail_penjualan (no_transaksi,no,kode_brg,nama,qty,satuan_jual,harga,total) Values('+
             QuotedStr(btnnoreg.Text)+','+
             QuotedStr(Grid1.Cells[1,i])+','+
             QuotedStr(Grid1.Cells[2,i])+','+
             QuotedStr(Grid1.Cells[3,i])+','+
             QuotedStr(Grid1.Cells[4,i])+','+
             QuotedStr(Grid1.Cells[5,i])+','+
             QuotedStr(Grid1.Cells[6,i])+','+
             QuotedStr(Grid1.Cells[7,i])+')';
             ExecSQL1(sql2);
             end;


        //sql3 :='Update h_penjualan set terbilang= tcase(terbilang)'+
        //     ' where no_transaksi='+QuotedStr(btnnoreg.Text);
        //ExecSQL1(sql3);

          //   m5 := 'Ubah Nama OK';
      KosongTex(True);
      //--cetak 
      bayar_tran;


      ShowMessage('Simpan Detail ok :'+ btnnoreg.Text);
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
      // ubah
  sql := 'Update h_penjualan set no_transaksi='+QuotedStr(btnnoreg.Text)+
	',tgl='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtglbuat.Date))+
 	',petugas='+QuotedStr(txtpetugas.Text)+
	',cara_bayar='+QuotedStr(jnsbayar)+
	',total_tran='+QuotedStr(clearDot(ed_dtotal.Text))+
	',nbayar='+QuotedStr(clearDot(ed_bayar.Text))+
  ',kembali='+QuotedStr(clearDot(ed_kembali.Text))+
  ',jam='+QuotedStr(cxlbljam.Caption)+
        'where no_transaksi='+
        QuotedStr(btnnoreg.Text);
        ExecSQL1(sql); //simpan Edit

       // sql3 :='Update h_penjualan set terbilang= tcase(terbilang)'+
       //      ' where no_transaksi='+QuotedStr(btnnoreg.Text);
       // ExecSQL1(sql3);


        {
        sql3 :='Update input_spt_keu set terbilang= tcase(terbilang)'+
       ',t_hr= tcase(t_hr)' +
       ' where id_AGENDA='+QuotedStr(EdNokwi.Text);
        ExecSQL1(sql3);
         }

        //ShowMessage('Simpan Perubahan ok :'+ btnnoreg.Text);
        //KosongTex(True);
        //AktifControl(Self,PnInput,False);
      except
        ShowMessage('Simpan Edit / ubah Gagal :'+ btnnoreg.Text);
        raise;
      end;

      //simpan Detail
       sql:= 'delete from t_detail_penjualan'+
        ' where no_transaksi='+QuotedStr(btnnoreg.Text);
        ExecSQL1(sql);

         try

           for i:=1 to Grid1.RowCount-1 do begin
             sql2:='INSERT INTO t_detail_penjualan (no_transaksi,no,kode_brg,nama,qty,satuan_jual,harga,total) Values('+
             QuotedStr(btnnoreg.Text)+','+
             QuotedStr(Grid1.Cells[1,i])+','+
             QuotedStr(Grid1.Cells[2,i])+','+
             QuotedStr(Grid1.Cells[3,i])+','+
             QuotedStr(Grid1.Cells[4,i])+','+
             QuotedStr(Grid1.Cells[5,i])+','+
             QuotedStr(Grid1.Cells[6,i])+','+
             QuotedStr(Grid1.Cells[7,i])+')';
             ExecSQL1(sql2);
             end;
     //--cetak
      bayar_tran;
           ShowMessage('Simpan Perubahan ok :'+ btnnoreg.Text);
     except
        raise;
      end;

       KosongTex(True);
   end //end Update
   else if PnOperasi.Caption='Hapus Data' then
   begin
      if MessageDlg('Data dengan'+#13+#10+btnnoreg.Text+#13+#10+
        'akan di Hapus, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
        begin
      try
      // delete
        SQL := 'delete from h_penjualan where no_transaksi='+
        QuotedStr(btnnoreg.Text)+'';
        ExecSQL1(sql); //Hapus

        ShowMessage('Hapus / :'+ btnnoreg.Text);
        //KosongTex(True);
        //AktifControl(Self,PnInput,False);
      except
             ShowMessage('Hapus Gagal :'+ btnnoreg.Text);
        raise;
      end;
        end;
    end; //selesai Proses

  //---bayar---



end; //end tanya

end;

procedure Tfrm_kasir.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 if(Key = VK_RETURN) and (Shift = []) then
    Perform(WM_NEXTDLGCTL, 0, 0);

  if(Key=113) then  //F2
    begin
     btnBtnBaruClick(Sender);
    end;


  if(Key=114) then  //F3
    begin
     cxcari.SetFocus;
    end;

  if(Key=115) then  //F4
    begin
     btnsaveClick(Sender);
     //Pg_Show.Visible:=true;
     //EdPcari.SetFocus;
    end;

    if (Key = 27)then //tombol END 35 , esc 27
    begin
    //Pg_Show.Visible:=false;
    //pn_bayar.Visible:=false;
    end;

  if ord(key)=13 then  //enter
      SelectNext(ActiveControl,true,True);
    end;

procedure Tfrm_kasir.btn3Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmdokter, frmdokter);
  frmdokter.ShowModal;
  frmdokter.Free;
end;

procedure Tfrm_kasir.ed_dtotalChange(Sender: TObject);
begin
formatRupiah(ed_dtotal);
edtotal.Text := ed_dtotal.Text;
end;

procedure Tfrm_kasir.btn_hitungClick(Sender: TObject);
begin
  hitung_tran;
end;

procedure Tfrm_kasir.edEd_rpChange(Sender: TObject);
begin



{
if edEd_rp.Text = '' then Exit;
a1 := StrToFloat(edEd_rp.Text);
a2 := StrToFloat(ed_phrg.Text);
a3 := a1 * a2;
edpaten.Text := FloatToStr(a3);
}
end;

procedure Tfrm_kasir.edEd_raChange(Sender: TObject);
begin
 {
if edEd_ra.Text = '' then Exit;
a1 := StrToFloat(edEd_ra.Text);
a2 := StrToFloat(ed_rahrg.Text);
a3 := a1 * a2;
ed_racikan.Text := FloatToStr(a3);
}
end;

procedure Tfrm_kasir.ed_pembulatanChange(Sender: TObject);
begin
formatRupiah(ed_pembulatan);
end;

procedure Tfrm_kasir.edEd_total2Change(Sender: TObject);
begin
formatRupiah(edEd_total2);
//total all
edtotal.Text := edEd_total2.Text;
//ed_terbilang.Text := Spell(clearDot(edEd_total2.Text));
end;

procedure Tfrm_kasir.edpatenChange(Sender: TObject);
begin
//formatRupiah(edpaten);
end;

procedure Tfrm_kasir.ed_racikanChange(Sender: TObject);
begin
//formatRupiah(ed_racikan);
end;

procedure Tfrm_kasir.btnBtnUbah1Click(Sender: TObject);
begin
PnOperasi.Caption := 'Ubah data';
end;

procedure Tfrm_kasir.btnBtnHapusClick(Sender: TObject);
begin
PnOperasi.Caption := 'hapus data';
end;

procedure Tfrm_kasir.edjmlKeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['0'..'9',#8,#46,#39,#37]) then
   Key:=#0;
end;

procedure Tfrm_kasir.edEd_rpKeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['0'..'9',#8,#46,#39,#37]) then
   Key:=#0;
end;

procedure Tfrm_kasir.edEd_raKeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['0'..'9',#8,#46,#39,#37]) then
   Key:=#0;
end;

procedure Tfrm_kasir.ed_lbrKeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['0'..'9',#8,#46,#39,#37]) then
   Key:=#0;
end;

procedure Tfrm_kasir.ed_pembulatanKeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['0'..'9',#8,#46,#39,#37]) then
   Key:=#0;
end;

procedure Tfrm_kasir.btnnoregPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_jual_H';
  LsvSetCol('No|tgl.|jam|Total|',
  '100|70|90|80|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('no_transaksi');
  FCarisp.LsField.Items.Add('tgl');
  FCarisp.LsField.Items.Add('jam');
  FCarisp.LsField.Items.Add('total_tran');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    btnnoreg.Text:=nFieldCari[0];
    //Memo1.Text:=nFieldCari[1];
    btnnoreg.Style.Color:=clRed;
    btnnoreg.SetFocus;
  end;
end;

Procedure Tfrm_kasir.TampilData;
  var
    q2 : TMyQuery;
    qd2 : TMyQuery;
    i2 : Integer;
  Begin
    q2 := TMyQuery.Create(nil);
  try

  q2.Connection := DmModul.con1;
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text :='select * from h_penjualan where no_transaksi='+QuotedStr(btnnoreg.Text)+'';
  q2.Open;


  if q2.RecordCount > 0 then
  begin

  if PnOperasi.Caption='Ubah Data' then
   begin
    //    AktifControl(Self,PnInput,True);
    //    AktifControl(Self,Pn_list,True);
    //BtnProses.Enabled:=True;
    end;

    btnnoreg.Text:=q2.FieldByName('no_transaksi').AsString;
    dtglbuat.date:=q2.FieldByName('tgl').AsDateTime;
    cbobayar.EditValue:=q2.FieldByName('cara_bayar').AsString;
    txtpetugas.Text:=q2.FieldByName('petugas').AsString;
    {
    
    cbopoli.EditValue:=q2.FieldByName('kd_ruang').AsString;
    cbodokter.EditValue:=q2.FieldByName('kd_dokter').AsString;
    edmr.Text:=q2.FieldByName('no_rm').AsString;
    ednamapx.Text:=q2.FieldByName('namapx').AsString;
    //edEd_total2.Text:=qhtranjual.FieldByName('total_tran').AsString;
    cbobayar.EditValue:=q2.FieldByName('cara_bayar').AsString;
    ed_pembulatan.Text:=q2.FieldByName('Pembulatan').AsString;
    edEd_ra.Text:=q2.FieldByName('jml_rc').AsString;
    //ed_racikan.Text:=qhtranjual.FieldByName('rc').AsString;
    edEd_rp.Text:=q2.FieldByName('jml_resep').AsString;
    //edpaten.Text:=qhtranjual.FieldByName('resep').AsString;
    ed_lbr.Text:=q2.FieldByName('lembar').AsString;
    ed_terbilang.Text:=q2.FieldByName('terbilang').AsString;
    cbbpetugas.EditValue:=q2.FieldByName('petugas').AsString;
    }
  end
  else
    begin
    ShowMessage( 'data kosong / Tidak ADA : ' + btnnoreg.Text );
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
    qd2.SQL.Text :='select * from t_detail_penjualan WHERE no_transaksi like'+
    QuotedStr(btnnoreg.Text)+'';
    qd2.Open;

    if qd2.Eof then
    begin
    //Total;
    Edtotal.Text := '0';
    aturgrid;
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
    end;

    counter:=0;
    if  qd2.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= qd2.RecordCount+1;


	//no_transaksi,no,kode_brg,nama,qty,satuan_jual,harga,total
    while not qd2.Eof do begin
          Inc(counter);
          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=dataRow(qd2.FieldByName('no'),'');
          Grid1.Cells[2,counter]:=dataRow(qd2.FieldByName('kode_brg'),'-');
          Grid1.Cells[3,counter]:=dataRow(qd2.FieldByName('nama'),'-');
          Grid1.Cells[4,counter]:=dataRow(qd2.FieldByName('qty'),'0');
          Grid1.Cells[5,counter]:=dataRow(qd2.FieldByName('satuan_jual'),'-');
          Grid1.Cells[6,counter]:=dataRow(qd2.FieldByName('harga'),'0');
          Grid1.Cells[7,counter]:=dataRow(qd2.FieldByName('total'),'0');
          //=====================
          qd2.Next;
    end;
   Total;

  finally
    qd2.Close;
    qd2.Free;
  end;
  hitung_tran;
  end;

procedure Tfrm_kasir.btnnoregKeyPress(Sender: TObject; var Key: Char);
begin
TampilData;
PnOperasi.Caption := 'Ubah Data';
btnnoreg.Style.Color:=clcxLightGray;
end;

Procedure Tfrm_kasir.KosongTex(Kunci:Boolean);
//var
//j:Integer;
Begin
  if Kunci=True then
  begin

   btnnoreg.Text := '';
   buatno;
   dtglbuat.date:= now;
   //ed3.Text := FormatDateTime('yy-',dtglbuat.date);
   {
   edresep.Text := '';
    //cbopoli.EditValue:=q2.FieldByName('kd_ruang').AsString;
    //cbodokter.EditValue:=q2.FieldByName('kd_dokter').AsString;
    edmr.Text:='';
    ednamapx.Text:='';
    edEd_total2.Text:= '0';
    //cbobayar.EditValue:=q2.FieldByName('cara_bayar').AsString;
    ed_pembulatan.Text:= '0';
    edEd_ra.Text:='0';
    ed_racikan.Text:= '0';
    edEd_rp.Text:= '0';
    edpaten.Text:= '0';
    ed_lbr.Text:='0';
    ed_dtotal.Text:= '0';
    ed_lbr.Text:= '0';
  //tambahan Bayar
  {
  tgl_bayar.ShowCheckbox :=true;
  tgl_bayar.Checked := false;
  tgl_bayar.Color := clred;
  chk2.Checked := False;
  }
  aturgrid;
 end;
end;


procedure Tfrm_kasir.waTimer(Sender: TObject);
var tgl:TDateTime;
begin
tgl:=Now;
//StatusBar1.Panels[3].Text:='Waktu / Jam  : '+FormatDateTime('tt', tgl);
cxlbljam.Caption :=FormatDateTime('HH:MM:ss', tgl);
//cxwaktu.Text:=FormatDateTime('HH:MM:ss', tgl);
//dtglbuat.c
end;

procedure Tfrm_kasir.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmpetugas, frmpetugas);
  frmpetugas.ShowModal;
  //frmdokter.ednip.setfocus;
  frmpetugas.Free;
end;

procedure Tfrm_kasir.ed2PropertiesChange(Sender: TObject);
begin
  {
 if chk1.checked then
    grid1.NarrowDown(ed2.Text, 1)
  else
    grid1.NarrowDown(ed2.Text);
    }
end;

procedure Tfrm_kasir.SpeedButton2Click(Sender: TObject);
begin
buatno;
end;

procedure Tfrm_kasir.edt1Change(Sender: TObject);
begin
//formatRupiah(edt1);
end;

function Tfrm_kasir.Caribrg(nKode: String):string;
var
  nSem:string;
begin
  {
  AdDsAng.Close;
  AdDsAng.CommandText:=
  'Select * from anggota where NoAng='+
  QuotedStr(nKode);
  AdDsAng.Open;
  if AdDsAng.RecordCount>0 then
    nSem:=AdDsAng['Nama']
  else
    nSem:='';
  Result:=nSem;
  }
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :=nkode;
  LsvSetCol('No|Nama|@Harga|',
  '90|230|70|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('kode');
  FCarisp.LsField.Items.Add('nama_barang');
  FCarisp.LsField.Items.Add('harga_jual');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    edkode.Text:=nFieldCari[0];
    Ednama.Text:=nFieldCari[1];
    Edhrg.Text:=nFieldCari[2];
    edjml.Text:='1';
    //edt1.Color:=clWhite;
    edjml.SetFocus;
  end;

  nkode:='';
  Result:=nkode;

end;

procedure Tfrm_kasir.FormKeyPress(Sender: TObject; var Key: Char);
begin
  {
	if(Key=#13)then
	begin
     Caribrg('sp_barang')
	end;
  }
end;

procedure Tfrm_kasir.edkodeKeyPress(Sender: TObject; var Key: Char);
begin
  {
	if(Key=#13)then
	begin
     Caribrg('sp_barang')
	end;
   }
end;

function Tfrm_kasir.Caribrgcombo(nkode_cr: String):string;
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
  StoredProcName := 'sp_cr_barang' ;
  PrepareSQL;
  ParamByName('cari').AsString := cxcari.text;
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
      //dmmodul.dataRow(QBarangDDL.FieldByName('kode'),'-');
      dt.Caption:=(dmmodul.dataRow(Q6.FieldByName('kode'),'-'));
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('nama_barang'),'-'));
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('harga_jual'),'0'));
      //dt.SubItems.Add(dmmodul.dataRow(QBarangDDL.FieldByName('sisa'),'0'));
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
procedure Tfrm_kasir.cxcariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin




//cxLookupbrg.SetFocus;
end;

procedure Tfrm_kasir.cxLookupbrgEnter(Sender: TObject);
begin
//Caribrgcombo(cxLookupbrg.Text);
end;

procedure Tfrm_kasir.cxcariKeyPress(Sender: TObject; var Key: Char);
begin
if(Key=#13)then
	begin
    try
    Caribrgcombo(cxcari.Text);
    pnl4.Visible:=True;
    lv1.SetFocus;

    finally
    //cxLookupbrg.SetFocus;
    //cxLookupbrg.OnClick(Sender);
    end;
	end;
end;

procedure Tfrm_kasir.lv1KeyPress(Sender: TObject; var Key: Char);
begin
try
		if(Key=#13)then
	begin
    // edkode.Text:=lv1.Selected.Caption;
     with lv1.Selected do
      begin
        edkode.Text:=lv1.Selected.Caption;
        ednama.Text:=SubItems.Strings[0];
        edhrg.Text:=SubItems.Strings[1];
      end;
     edjml.SetFocus;
     pnl4.Visible:=false;
	end;
		except
	end;
end;

procedure Tfrm_kasir.lv1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrm_kasir.SpeedButton3Click(Sender: TObject);
var
  spctk_jual : TMyStoredProc;
begin
 spctk_jual:= TMyStoredProc.Create(nil);
   spctk_jual.Connection := DmModul.con1;
  try
    spctk_jual.Close;
    spctk_jual.StoredProcName := 'sp_cetak_struk';
    spctk_jual.PrepareSQL;
    spctk_jual.ParamByName('cari').AsString := btnnoreg.Text;
    //spctk_jual.ParamByName('tgl1').AsString := tglk1;
    //spctk_jual.ParamByName('tgl2').AsString := tglk2;
    spctk_jual.Execute;

    //lbl1.Caption := inttostr(spctk_jual.RecordCount) +' record ';
    //lbl1.Caption := Grid1.Cells[0,AROW];

    if spctk_jual.RecordCount > 0 then
      begin
      //ShowMessage('data Register :'+lbl1.Caption);

        frxdbdtst1.DataSet := spctk_jual;
        frxrprt1.LoadFromFile(getReportPath + 'struk_kasir_jual.fr3');
        frxrprt1.ShowReport;
        //frxrprt1.PrepareReport(True);
        //frxrprt1.Export(frxpdfxprt1);
        //frxpdfxprt1(frxrprt1,'tets.pdf');
        //frxpdfxprt1.FileName := ExtractFilePath(Application.ExeName)+ '\pdf\'+'xxx.xls';
        //frxrprt1.Export(frxlsxprt1);
      end
      else
      ShowMessage('data tidak ada Register :'+btnnoreg.Text);
 // ShowMessage('Cetak Kwiitansi !');

   {
   if spctk_jual.Eof then
    begin
    ShowMessage('data tidak ada');
    exit;
    end;
    }


    finally
    spctk_jual.Close;
    end;
end;

procedure Tfrm_kasir.SpeedButton4Click(Sender: TObject);
var
  spctk_jual : TMyStoredProc;

begin
spctk_jual:= TMyStoredProc.Create(nil);
   spctk_jual.Connection := DmModul.con1;
  try
    spctk_jual.Close;
    spctk_jual.StoredProcName := 'Sp_cetak_jual_detail';
    spctk_jual.PrepareSQL;
    spctk_jual.ParamByName('cari').AsString := btnnoreg.Text;
    //spctk_jual.ParamByName('tgl1').AsString := tglk1;
    //spctk_jual.ParamByName('tgl2').AsString := tglk2;
    spctk_jual.Execute;

    //lbl1.Caption := inttostr(spctk_jual.RecordCount) +' record ';
    //lbl1.Caption := Grid1.Cells[0,AROW];

    if spctk_jual.RecordCount > 0 then
      begin
      //ShowMessage('data Register :'+lbl1.Caption);
        
        frxdbdtst1.DataSet := spctk_jual;
        frxrprt2.LoadFromFile(getReportPath + 'detail_jual_15.fr3');
        frxrprt2.ShowReport;
        //frxrprt1.PrepareReport(True);
        //frxrprt1.Export(frxpdfxprt1);
        //frxpdfxprt1(frxrprt1,'tets.pdf');
        //frxpdfxprt1.FileName := ExtractFilePath(Application.ExeName)+ '\pdf\'+'xxx.xls';
        //frxrprt1.Export(frxlsxprt1);
      end
      else
      ShowMessage('data tidak ada Register :'+btnnoreg.Text);
 // ShowMessage('Cetak Kwiitansi !');

   {
   if spctk_jual.Eof then
    begin
    ShowMessage('data tidak ada');
    exit;
    end;
    }


    finally
    spctk_jual.Close;
    end;
end;

procedure Tfrm_kasir.btn5Click(Sender: TObject);
begin
 frxrprt1.LoadFromFile(getReportPath + 'struk_kasir_jual.fr3');
 frxrprt1.DesignReport();
end;

procedure Tfrm_kasir.Button1Click(Sender: TObject);
begin
 frxrprt1.LoadFromFile(getReportPath + 'kwi_jual_15.fr3');
 frxrprt1.DesignReport();
end;

procedure Tfrm_kasir.ed_bayarChange(Sender: TObject);
var totalku,bayarku,kembaliku : Real;
begin
formatRupiah(ed_bayar);

   if ed_bayar.Text = '' then Exit;
 //formatRpcx(cxbayar);
 totalku :=strtofloat(clearDot(ed_dtotal.Text));
 bayarku :=strtofloat(clearDot(ed_bayar.Text));
 kembaliku := totalku - bayarku;
 ed_kembali.Text := FloatToStr(kembaliku);
 //formatRpcx(cxkembali);
 formatRupiah(ed_kembali);
 edtotal.Text := 'Kembali :'+ ed_kembali.Text;

end;

end.
