unit Un_laporan_stok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, EXLReportExcelTLB,
  EXLReportBand, EXLReport, MyAccess, DB, MemDS, DBAccess, Grids, DBGrids,
  BaseGrid, AdvGrid, AdvListV, DBAdvLst;

type
  Tfrm_Laporan_stok = class(TForm)
    Panel1: TPanel;
    dtgl1: TDateTimePicker;
    dtgl2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    EXLReport1: TEXLReport;
    Panel2: TPanel;
    MyStoredProc1: TMyStoredProc;
    Grid1: TAdvStringGrid;
    chk_xls: TCheckBox;
    ed_nama: TEdit;
    Label3: TLabel;
    btn_cari: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure FormCreate(Sender: TObject);
    procedure btn_cariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Laporan_stok: Tfrm_Laporan_stok;

implementation

uses UnCari,UnModul, UnCari_com,UF_setting,UF_terbilang, UnCari_all;


{$R *.dfm}


procedure Tfrm_Laporan_stok.FormClose(Sender: TObject; var Action: TCloseAction);
///var
 // I,n1,n2,n3,n4:integer;

begin
  frm_Laporan_stok:=nil;
  Action:=caFree;
end;

procedure Tfrm_Laporan_stok.Timer1Timer(Sender: TObject);
begin
  {
if LbPerhatian.Font.Color=clBlack then
  LbPerhatian.Font.Color:=clRed
else
  LbPerhatian.Font.Color:=clBlack;
  }
  end;

procedure Tfrm_Laporan_stok.BitBtn1Click(Sender: TObject);
var
 //ds_lap :TMyDataSource;
 sp_lap: TMyStoredProc;
 tgl1 : string;
 tgl2 : string;
 counter,barisk : Integer;
begin

   Grid1.Cells[0,0]:='No.';
  Grid1.Cells[1,0]:='kode';
  Grid1.Cells[2,0]:='Nama';
  Grid1.Cells[3,0]:='satuan';
  Grid1.Cells[4,0]:='awal';
  Grid1.Cells[5,0]:='tambah';
  Grid1.Cells[6,0]:='keluar';
  Grid1.Cells[7,0]:='sisa';
  Grid1.ColWidths[0]:=40;
  Grid1.ColWidths[1]:=80; //1
  Grid1.ColWidths[2]:=220;
  Grid1.ColWidths[3]:=70;
  Grid1.ColWidths[4]:=50;
  Grid1.ColWidths[5]:=50;
  Grid1.ColWidths[6]:=50;
  Grid1.ColWidths[7]:=50;


  if MessageDlg('Data dengan'+#13+#10+'xxxxxxxx'+#13+#10+
        'akan di Cetak , ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
    sp_lap := TMyStoredProc.Create(nil);
    //ds_lap := TMyDataSource.Create(nil);
    //try
    tgl1 := FormatDateTime('yyyy-mm-dd',dtgl1.date);
    tgl2 := FormatDateTime('yyyy-mm-dd',dtgl2.date);

    sp_lap.Connection := DmModul.con1;
    sp_lap.Close;
    sp_lap.StoredProcName := 'sp_stok';
    sp_lap.PrepareSQL;
    sp_lap.ParamByName('strTglAwal').AsString := tgl1;
    sp_lap.ParamByName('strTglAkhir').AsString := tgl2;
    sp_lap.Execute;

    {
    for barisk:=1 to Grid1.RowCount-2 do begin
    Grid1.Cells[1,barisk]:='';
    Grid1.Cells[2,barisk]:='';
    Grid1.Cells[3,barisk]:='';
    Grid1.Cells[4,barisk]:='';
    Grid1.Cells[5,barisk]:='';
    Grid1.Cells[6,barisk]:='';
    end;
     }
    //isi grid

    counter:=0;
    Grid1.RowCount:=2;

    while not sp_lap.Eof do begin
          Inc(counter);
          Grid1.RowCount:=Grid1.RowCount+1;
          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=sp_lap.FieldByName('kode').AsString; //No.
          Grid1.Cells[2,counter]:=sp_lap.FieldByName('nama_barang').AsString;
          Grid1.Cells[3,counter]:=sp_lap.FieldByName('satuan_jual').AsString;
          Grid1.Cells[4,counter]:=sp_lap.FieldByName('stokawal').AsString;
          Grid1.Cells[5,counter]:=sp_lap.FieldByName('jml_tambah').AsString;
          Grid1.Cells[6,counter]:=sp_lap.FieldByName('jml_keluar').AsString;
          Grid1.Cells[7,counter]:=sp_lap.FieldByName('stokakhir').AsString;
          sp_lap.Next;
    end;

    if chk_xls.Checked = True then
    begin
    EXLReport1.template :=ExtractFilePath(Application.ExeName)
    + '\xls\'+'lap_stok.xls';
    EXLReport1.DataSet:= sp_lap;
    EXLReport1.TemplSheet :='lap1';
    EXLReport1.Show();
    end;
  end;
end;


procedure Tfrm_Laporan_stok.Grid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin

//warna grid
if ((ACol = 2) and (ARow > 0)) then
  begin
    ABrush.Color := clYellow;
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end;


if ((ACol = 4) and (ARow > 0)) then
  begin

   if (Grid1.Cells[ACol, ARow] = '0')
    then
    begin
    ABrush.Color := clYellow;
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end;

   if (Grid1.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clAqua;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;
  end;

  if ((ACol = 5) and (ARow > 0)) then
  begin

   if (Grid1.Cells[ACol, ARow] = '0')
    then
    begin
    ABrush.Color := clYellow;
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end;

   if (Grid1.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clAqua;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;
  end;


  if ((ACol = 7) and (ARow > 0)) then
  begin

   if (Grid1.Cells[ACol, ARow] = '0')
    then
    begin
    ABrush.Color := clYellow;
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end;

   if (Grid1.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clAqua;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;



  end;


 {
  if ((ACol = 4) and (ARow > 0)) then
  begin

    if (Grid1.Cells[ACol, ARow] = '0')
    then
    AFont.Color := clRed;
    //ABrush.Color := clRed;

    if (Grid1.Cells[ACol, ARow] > '0') then AFont.Color := clBlue;
    //if (Grid1.Cells[ACol, ARow] = '8') then AFont.Color := clBlack;
    //if (Grid1.Cells[ACol, ARow] = '12') then AFont.Color := clRed;
  end;
  }
end;

procedure Tfrm_Laporan_stok.Grid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  case ACol of
    1: HAlign := taCenter;
    2: HAlign := taLeftJustify;
    4,5,6,7: HAlign := taRightJustify;
  end;
end;

procedure Tfrm_Laporan_stok.FormCreate(Sender: TObject);
begin
 //dtgl1.Date:= FormatDate('yyyy-mm-dd',now);
 dtgl1.DateTime := Date;
 dtgl2.DateTime := Date;
end;


procedure Tfrm_Laporan_stok.btn_cariClick(Sender: TObject);
var
 //ds_lap :TMyDataSource;
 sp_lap: TMyStoredProc;
 tgl1 : string;
 tgl2 : string;
 counter,barisk : Integer;
begin

   Grid1.Cells[0,0]:='No.';
  Grid1.Cells[1,0]:='kode';
  Grid1.Cells[2,0]:='Nama';
  Grid1.Cells[3,0]:='satuan';
  Grid1.Cells[4,0]:='awal';
  Grid1.Cells[5,0]:='tambah';
  Grid1.Cells[6,0]:='keluar';
  Grid1.Cells[7,0]:='sisa';
  Grid1.ColWidths[0]:=40;
  Grid1.ColWidths[1]:=80; //1
  Grid1.ColWidths[2]:=220;
  Grid1.ColWidths[3]:=70;
  Grid1.ColWidths[4]:=50;
  Grid1.ColWidths[5]:=50;
  Grid1.ColWidths[6]:=50;
  Grid1.ColWidths[7]:=50;


 // if MessageDlg('Data dengan'+#13+#10+'xxxxxxxx'+#13+#10+
 //       'akan di Cetak , ?????',
 //       mtWarning, [mbOK, mbCancel], 0) = mrOK then
 // begin
    sp_lap := TMyStoredProc.Create(nil);
    //ds_lap := TMyDataSource.Create(nil);
    //try
    tgl1 := FormatDateTime('yyyy-mm-dd',dtgl1.date);
    tgl2 := FormatDateTime('yyyy-mm-dd',dtgl2.date);

    sp_lap.Connection := DmModul.con1;
    sp_lap.Close;
    sp_lap.StoredProcName := 'sp_stok_nm';
    sp_lap.PrepareSQL;
    sp_lap.ParamByName('strTglAwal').AsString := tgl1;
    sp_lap.ParamByName('strTglAkhir').AsString := tgl2;
    sp_lap.ParamByName('cari').AsString := QuotedStr(ed_nama.Text);
    sp_lap.Execute;



    counter:=0;
    Grid1.RowCount:=2;

    while not sp_lap.Eof do begin
          Inc(counter);
          Grid1.RowCount:=Grid1.RowCount+1;
          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=sp_lap.FieldByName('kode').AsString; //No.
          Grid1.Cells[2,counter]:=sp_lap.FieldByName('nama_barang').AsString;
          Grid1.Cells[3,counter]:=sp_lap.FieldByName('satuan_jual').AsString;
          Grid1.Cells[4,counter]:=sp_lap.FieldByName('stokawal').AsString;
          Grid1.Cells[5,counter]:=sp_lap.FieldByName('jml_tambah').AsString;
          Grid1.Cells[6,counter]:=sp_lap.FieldByName('jml_keluar').AsString;
          Grid1.Cells[7,counter]:=sp_lap.FieldByName('stokakhir').AsString;
          sp_lap.Next;
    end;

    if chk_xls.Checked = True then
    begin
    EXLReport1.template :=ExtractFilePath(Application.ExeName)
    + '\xls\'+'lap_stok.xls';
    EXLReport1.DataSet:= sp_lap;
    EXLReport1.TemplSheet :='lap1';
    EXLReport1.Show();
    end;
  end;
//end;
end.
