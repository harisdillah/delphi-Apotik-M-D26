unit UnBast;

interface

uses
  SysUtils,adodb,Forms,
  Messages,Dialogs,Graphics, AdvUtil,
  AdvObj, BaseGrid, AdvGrid,Variants,
  DBAccess, MyAccess, MemDS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox,Excel2000,DB,
  StdCtrls, Controls, ComCtrls, ExtCtrls, Grids, Buttons, Classes;

type
  TFrmBast = class(TForm)
    Ed_nilai: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Grid1: TAdvStringGrid;
    BitBtn3: TBitBtn;
    pnl1: TPanel;
    btnBtnBaru: TSpeedButton;
    lbl1: TLabel;
    dtgl2: TDateTimePicker;
    dtgl1: TDateTimePicker;
    cbb_petugas: TComboBox;
    SPbast: TMyStoredProc;
    edtEd_t1: TEdit;
    Grid2: TAdvStringGrid;
    ed_nomor: TEdit;
    SP_Detail: TMyStoredProc;
    Label2: TLabel;
    lbl_nama_barang: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btn1: TSpeedButton;
    chGrid2: TCheckBox;
    sppd: TMyStoredProc;
    btn2: TSpeedButton;
    Ed_jml: TEdit;
    btn3: TSpeedButton;
    btn4: TSpeedButton;

    procedure BitBtn1Click(Sender: TObject);
    procedure Ed_nilaiKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBtnBaruClick(Sender: TObject);
    procedure Grid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure edtEd_t1Change(Sender: TObject);
    procedure Grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Grid2GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure Grid2GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Grid2GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Ed_nilaiChange(Sender: TObject);
    procedure Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btn1Click(Sender: TObject);
    procedure chGrid2Click(Sender: TObject);
    procedure exlrprt1BeforeBuild(Sender: TObject);
    procedure exlrprt1GetFieldValue(Sender: TObject; const Field: String;
      var Value: OleVariant);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }

  //Excel 2000
  //ExcelApp: TExcelApplication;
  //myxlBook: TExcelWorkbook;
  //myxlSheet11: TExcelWorksheet;
  FFlag: boolean;

  public
    { Public declarations }
    Procedure Aturgrid;
    Procedure Aturgrid2;
    procedure Total;

  end;

var
  FrmBast: TFrmBast;
  vKode:String;
  nGambar:String;
  FCounter :integer;
  //var detail/
  tambah: boolean;
  counter,hapus_baris:integer;
	cek_baris:string;
	tgl:TDateTime;
   //	i: Extended;
	s,m1,m2,m3,m4,m5,ppn: String;

   jml,hrgd,harga,n_t1d,ddisk,n_diskd
   ,n_t2d,n_pajakd, total_harga :real;
   fileku,dir : string;
   trs : Boolean;
   //Excel2000
   R : Integer;
   C : String;
   Path: string;

implementation

uses UF_terbilang, UnModul,uconfig,uglobal,Un_detail;

{$R *.dfm}



{
function hapusribuan(edit : Tedit): string;
var hasil : string;
begin
 hasil := edit.text;
 hasil := StringReplace(hasil,',','',[rfReplaceAll,rfIgnoreCase]);
 hasil := StringReplace(hasil,'.','',[rfReplaceAll,rfIgnoreCase]);
 hapusribuan := hasil;
end;
 }

Procedure TFrmBast.Aturgrid;
begin
  counter:=0;
  hapus_baris:=0;

  Grid1.ColCount:=9;
  Grid1.RowCount:=1;
  Grid1.Options := Grid1.Options + [goEditing];
  grid1.SortSettings.Show := true;
  grid1.FixedRowAlways := true;

  Grid1.Cells[0,0]:='No.';
  Grid1.Cells[1,0]:='No. peng';
  Grid1.Cells[2,0]:='No. SPK';
  Grid1.Cells[3,0]:='Tgl. SP/SPK';
  Grid1.Cells[4,0]:='Tgl. BA';
  Grid1.Cells[5,0]:='Nilai Rp.';
  Grid1.Cells[6,0]:='Kd. Bid';
  Grid1.Cells[7,0]:='Rek.';
  Grid1.Cells[8,0]:='PBF/CV';
  Grid1.ColWidths[0]:=30;
  Grid1.ColWidths[1]:=80; //1
  Grid1.ColWidths[2]:=80;
  Grid1.ColWidths[3]:=80;
  Grid1.ColWidths[4]:=70;
  Grid1.ColWidths[5]:=100;
  Grid1.ColWidths[6]:=50;
  Grid1.ColWidths[7]:=190;
  Grid1.ColWidths[8]:=240;

  //clear grid
  //StringGrid1.ClearRows(1, StringGrid1.RowCount - 1);


  //rata kanan
  ///RightEdit(ed_t1);

end;


Procedure TFrmBast.Aturgrid2;
begin
  counter:=0;
  hapus_baris:=0;

  Grid2.ColCount:=8;
  Grid2.RowCount:=1;
  Grid2.FixedRowAlways := True;
  Grid2.Options := Grid2.Options + [goEditing];

  Grid2.Cells[0,0]:='No.';
  Grid2.Cells[1,0]:='NO.Peng';
  Grid2.Cells[2,0]:='Nama Barang';
  Grid2.Cells[3,0]:='Jumlah';
  Grid2.Cells[4,0]:='Satuan';
  Grid2.Cells[5,0]:='@Harga';
  Grid2.Cells[6,0]:='Diskon';

  Grid2.ColWidths[0]:=30;
  Grid2.ColWidths[1]:=80;
  Grid2.ColWidths[2]:=380; //1
  Grid2.ColWidths[3]:=80;
  Grid2.ColWidths[4]:=80;
  Grid2.ColWidths[5]:=90;
  Grid2.ColWidths[6]:=90;

  //clear grid
  //StringGrid1.ClearRows(1, StringGrid1.RowCount - 1);


  //rata kanan
  ///RightEdit(ed_t1);

end;

procedure TFrmBast.Total;
var i :integer;
tot_t1,
tot_disk,tot_t2,tot_pjk,tot_bayar:real;
begin
tot_t1:=0;
tot_t2:=0;

   for i:=1 to Grid1.RowCount-1 do begin
        tot_t1:=tot_t1+strtofloat(clearDot(Grid1.Cells[5,i]));
   end;
   edtEd_t1.Text:=floattostr(tot_t1);

end;


procedure TFrmBast.BitBtn1Click(Sender: TObject);
begin
label1.Caption := spell(Ed_nilai.text)+' Rupiah';
end;

procedure TFrmBast.BitBtn3Click(Sender: TObject);
begin
 if MessageDlg('YAKIN DATA AKAN DISIMPAN',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     //InsertData;
end;

procedure TFrmBast.btn1Click(Sender: TObject);
begin
try
     sppd.Connection := DmModul.con1;
     sppd.Close;
     sppd.StoredProcName := 'SP_Pilih_detail';
     sppd.PrepareSQL;
     sppd.ParamByName('nomor').AsString := ed_nomor.text; //key ba
     //SP_Detail.ParamByName('nomor').AsString := Grid1.Cells[ACol,ARow];
	   sppd.Open;
//     exlrprt1.template :=apdirxls +'detail_barang.xls';
//     exlrprt1.Dataset:=sppd;
//     exlrprt1.TemplSheet :='detail';
//      //EXLReport1.Title := 'Cobak';
//     exlrprt1.Show();
      finally
        sppd.Close;
      end;
end;

procedure TFrmBast.btnBtnBaruClick(Sender: TObject);
var
 tglk1,tglin1,tglin2 : string;
 tglk2 : string;
 i,counter : Integer;

begin
  tglk1 := FormatDateTime('yyyy-mm-dd',dtgl1.date);
  tglk2 := FormatDateTime('yyyy-mm-dd',dtgl2.date);

      if trim(cbb_petugas.Text) ='' then
      begin
         cbb_petugas.SetFocus;
         ShowMessage('Jenis Pelaporan Blm d pilih!');
         //Result:=False;
         exit
      end;

try
    //Screen.cursor := crsqlWait;
    SPbast.Connection := DmModul.Con1;
    SPbast.Close;
    SPbast.StoredProcName := 'SP_TGLSP_cari';
    SPbast.PrepareSQL;
    SPbast.ParamByName('tgl1').AsString := tglk1; //key ba
    SPbast.ParamByName('tgl2').AsString := tglk2; //key ba
    SPbast.ParamByName('petugas').AsString := cbb_petugas.Text; //key ba
    SPbast.Open;

    if SPbast.Eof then
    begin
    ShowMessage('data tidak ada...');
    //Screen.cursor := crDefault;
    //Clear
    Grid1.ClearRows(1, Grid1.RowCount - 1);
    Grid1.RowCount := 2;
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
        Grid1.Cells[7,i]:='';
        Grid1.Cells[8,i]:='';
    end;
    //isi grid
    counter:=0;
    if  SPbast.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= SPbast.RecordCount+1;
    while not SPbast.Eof do begin
          Inc(counter);
        //cek
		    Grid1.ShowSelection := false;
        for i := 1 to Grid1.RowCount - 1 do
        Grid1.AddCheckBox(1, i, false, false);

          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=SPbast.FieldByName('no_peng').AsString; //No.
          Grid1.Cells[2,counter]:=SPbast.FieldByName('SPK_No').AsString;
          Grid1.Cells[3,counter]:=SPbast.FieldByName('SPK_tgl').AsString;
          Grid1.Cells[4,counter]:=SPbast.FieldByName('tgl_ba1').AsString;
          Grid1.Cells[5,counter]:=SPbast.FieldByName('KWITANSI').AsString;
          Grid1.Cells[6,counter]:=SPbast.FieldByName('kd_bidang').AsString;
          //Grid1.Cells[7,counter]:=RemoveWhiteSpace(SPbast.FieldByName('rek').AsString);
          //+' / '+RemoveWhiteSpace(SPbast.FieldByName('Sub_rek').AsString);
          Grid1.Cells[8,counter]:=SPbast.FieldByName('NamaPerusahaan').AsString;
          {
          jml:=StrToInt(StringGrid3.Cells[2,counter]);
          harga:=StrToInt(StringGrid3.Cells[3,counter]);
          total_harga:=jml*harga;
          StringGrid3.Cells[6,counter]:=IntToStr(total_harga);
          }
          SPBast.Next;
    end;
    //Screen.cursor := crDefault;
    Total;

  finally
    SPbast.Close;
  end;

end;

procedure TFrmBast.Ed_nilaiChange(Sender: TObject);
begin
//FormatUang(Ed_nilai.text);
end;

procedure TFrmBast.Ed_nilaiKeyPress(Sender: TObject; var Key: Char);
begin
//MessageDlg(Key + ' has been pressed', mtInformation, [mbOK], 0)
  if key = #13 then
     // label1.Caption := TitleCase(spell(Ed_nilai.text)+' Rupiah');

end;




procedure TFrmBast.edtEd_t1Change(Sender: TObject);
begin
//formatRupiah(edtEd_t1);
end;

procedure TFrmBast.FormCreate(Sender: TObject);
begin
apLoadKonfigurasiProgram;
frmBast.Caption := apNamaAplikasi;
Aturgrid;
Aturgrid2;
//RightEdit(edtEd_t1);
//FormatUang(edtEd_t1.Text);
dtgl1.Date := now;
dtgl2.Date := now;
end;

procedure TFrmBast.Grid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
//anEdit := ACol = 1;
end;

procedure TFrmBast.Grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);
var i,counter :Integer;
begin
  Aturgrid2;
  ed_nomor.Text := Grid1.Cells[1,ARow];

try
    Screen.cursor := crsqlWait;

    SP_Detail.Connection := DmModul.con1;
    SP_Detail.Close;
    SP_Detail.StoredProcName := 'SP_Pilih_detail';
    SP_Detail.PrepareSQL;
    SP_Detail.ParamByName('nomor').AsString := Grid1.Cells[ACol,ARow]; //key ba
    //SPbast.ParamByName('tgl2').AsString := tglk2; //key ba
    SP_Detail.Open;

    if SP_Detail.Eof then
    begin
    ShowMessage('data tidak ada...');
    Screen.cursor := crDefault;
    //Clear
    Grid2.ClearRows(1, Grid2.RowCount - 1);
    Grid2.RowCount := 2;
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
    if  SP_Detail.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= SP_Detail.RecordCount+1;
    while not SP_Detail.Eof do begin
          Inc(counter);
        //cek
		    Grid2.ShowSelection := false;
        for i := 1 to Grid2.RowCount - 1 do
        //Grid2.AddCheckBox(1, i, false, false);

          Grid2.Cells[0,counter]:=IntToStr(counter);
          Grid2.Cells[1,counter]:=SP_Detail.FieldByName('no_peng').AsString; //No.
          Grid2.Cells[2,counter]:=SP_Detail.FieldByName('nama').AsString;
          Grid2.Cells[3,counter]:=SP_Detail.FieldByName('jumlah').AsString;
          Grid2.Cells[4,counter]:=SP_Detail.FieldByName('satuan').AsString;
          Grid2.Cells[5,counter]:=SP_Detail.FieldByName('hrga_satuan').AsString;
          Grid2.Cells[6,counter]:=SP_Detail.FieldByName('n_disk').AsString;
          {
          jml:=StrToInt(StringGrid3.Cells[2,counter]);
          harga:=StrToInt(StringGrid3.Cells[3,counter]);
          total_harga:=jml*harga;
          StringGrid3.Cells[6,counter]:=IntToStr(total_harga);
          }
          SP_Detail.Next;
    end;
    Screen.cursor := crDefault;
    //Ed_nomor_spk.Text := Grid1.Cells[2,ARow];
    //Ed_tglspk.Text := Grid1.Cells[3,ARow];
    //Ed_tgl_bast.Text := Grid1.Cells[4,ARow];
    //Ed_cv.Text := Grid1.Cells[8,ARow];
    Ed_nilai.Text := Grid1.Cells[5,ARow];
    //label1.Caption := TitleCase(spell(Ed_nilai.text)+' Rupiah');
    //label2.Caption:= formatuang(Ed_nilai.Text);
    //Ed_rek.Text := Grid1.Cells[6,ARow]+'-'+Grid1.Cells[7,ARow];
    //Total;
    //Myds1.DataSet := SP_detail;
  finally
    SP_Detail.Close;
  end;
end;

procedure TFrmBast.Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    1: HAlign := taCenter;
    2: HAlign := taLeftJustify;
    3,5,6: HAlign := taRightJustify;
  end;
end;

procedure TFrmBast.Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
  var state: boolean;
begin


 if Grid1.GetCheckBoxState(1, ARow, state) then
  begin
    if state then
      ABrush.Color := Grid1.SelectionColor;
  end;

  if ((ACol = 2) and (ARow > 0)) then
  begin

   if (Grid1.Cells[ACol, ARow] = '')
    then
    begin
    ABrush.Color := clRed;
    //AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

    if (Grid1.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clInfoBk;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;
  end;

    if ((ACol = 3) and (ARow > 0)) then
  begin

   if (Grid1.Cells[ACol, ARow] = '')
    then
    begin
    ABrush.Color := clRed;
    //AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

    if (Grid1.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clInfoBk;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

  end;

    if ((ACol = 6) and (ARow > 0)) then
  begin

   if (Grid1.Cells[ACol, ARow] = '')
    then
    begin
    ABrush.Color := clRed;
    //AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

    if (Grid1.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clInfoBk;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

  end;

     if ((ACol = 7) and (ARow > 0)) then
  begin

   if (Grid1.Cells[ACol, ARow] = '')
    then
    begin
    ABrush.Color := clRed;
    //AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

    if (Grid1.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clInfoBk;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

  end;

end;

procedure TFrmBast.Grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
  var IsFloat: Boolean; var FloatFormat: string);
begin
isFloat := Acol in [5];
case ACol of
  5: Floatformat :='%.2n';
  //6: Floatformat :='%.2n';
end;
end;

procedure TFrmBast.Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
var i,counter :Integer;
begin

  lbl_nama_barang.Caption := Grid2.Cells[2,ARow];

  if Frm_detail=nil then
  Frm_detail:=TFrm_detail.Create(Application);
  Frm_detail.Show;

try
    Screen.cursor := crsqlWait;
    Frm_detail.SP_detailbrg.Connection := DmModul.con1;
    Frm_detail.SP_detailbrg.Close;
    Frm_detail.SP_detailbrg.StoredProcName := 'SP_cari_bast_nmbarang';
    Frm_detail.SP_detailbrg.PrepareSQL;             //lbl_nama_barang.Caption;
    Frm_detail.SP_detailbrg.ParamByName('cari').AsString := Grid2.Cells[2,ARow]; //key ba
    //SPbast.ParamByName('tgl2').AsString := tglk2; //key ba
    Frm_detail.SP_detailbrg.Open;

    if Frm_detail.SP_detailbrg.Eof then
    begin
    ShowMessage('data tidak ada...');
    Screen.cursor := crDefault;
    //Clear
    Frm_detail.Grid1.ClearRows(1, Frm_detail.Grid1.RowCount - 1);
    Frm_detail.Grid1.RowCount := 2;
    exit;
    end;
         for i:=1 to Frm_detail.Grid1.RowCount-1 do begin
        Frm_detail.Grid1.Cells[0,i]:='';
        Frm_detail.Grid1.Cells[1,i]:='';
        Frm_detail.Grid1.Cells[2,i]:='';
        Frm_detail.Grid1.Cells[3,i]:='';
        Frm_detail.Grid1.Cells[4,i]:='';
        Frm_detail.Grid1.Cells[5,i]:='';
        Frm_detail.Grid1.Cells[6,i]:='';
        Frm_detail.Grid1.Cells[7,i]:='';
        Frm_detail.Grid1.Cells[8,i]:='';
    end;
    //isi grid
    counter:=0;
    if  Frm_detail.SP_detailbrg.RecordCount<=1 then
      Frm_detail.Grid1.RowCount:= 2
    else
      Frm_detail.Grid1.RowCount:= Frm_detail.SP_detailbrg.RecordCount+1;
    while not Frm_detail.SP_detailbrg.Eof do begin
          Inc(counter);
        //cek
		    Frm_detail.Grid1.ShowSelection := false;
        for i := 1 to Frm_detail.Grid1.RowCount - 1 do
        //Grid2.AddCheckBox(1, i, false, false);

          Frm_detail.Grid1.Cells[0,counter]:=IntToStr(counter);
          Frm_detail.Grid1.Cells[1,counter]:=Frm_detail.SP_detailbrg.FieldByName('no_peng').AsString; //No.
          Frm_detail.Grid1.Cells[2,counter]:=Frm_detail.SP_detailbrg.FieldByName('tgl_ba1').AsString;
          Frm_detail.Grid1.Cells[3,counter]:=Frm_detail.SP_detailbrg.FieldByName('nama').AsString;
          Frm_detail.Grid1.Cells[4,counter]:=Frm_detail.SP_detailbrg.FieldByName('jumlah').AsString;
          Frm_detail.Grid1.Cells[5,counter]:=Frm_detail.SP_detailbrg.FieldByName('satuan').AsString;
          Frm_detail.Grid1.Cells[6,counter]:=Frm_detail.SP_detailbrg.FieldByName('hrga_satuan').AsString;
          Frm_detail.Grid1.Cells[7,counter]:=Frm_detail.SP_detailbrg.FieldByName('n_disk').AsString;
          Frm_detail.Grid1.Cells[8,counter]:=Frm_detail.SP_detailbrg.FieldByName('NamaPerusahaan').AsString;
          {
          jml:=StrToInt(StringGrid3.Cells[2,counter]);
          harga:=StrToInt(StringGrid3.Cells[3,counter]);
          total_harga:=jml*harga;
          StringGrid3.Cells[6,counter]:=IntToStr(total_harga);
          }
          Frm_detail.SP_detailbrg.Next;
    end;
    Frm_detail.Total_detail;
    Screen.cursor := crDefault;
    //Ed_nomor_spk.Text := Grid1.Cells[2,ARow];
    //Ed_tglspk.Text := Grid1.Cells[3,ARow];
    //Ed_tgl_bast.Text := Grid1.Cells[4,ARow];
    //Ed_cv.Text := Grid1.Cells[8,ARow];
    //Ed_nilai.Text := Grid1.Cells[5,ARow];
    //label1.Caption := TitleCase(spell(Ed_nilai.text)+' Rupiah');
    //label2.Caption:= formatuang(Ed_nilai.Text);
    //Ed_rek.Text := Grid1.Cells[6,ARow]+'-'+Grid1.Cells[7,ARow];
    //Total;
  finally
    Frm_detail.SP_detailbrg.Close;

    end;
end;

procedure TFrmBast.Grid2GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    1: HAlign := taCenter;
    2: HAlign := taLeftJustify;
    3,5,6: HAlign := taRightJustify;
  end;
end;

procedure TFrmBast.Grid2GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
  var state: boolean;
begin
if Grid2.GetCheckBoxState(1, ARow, state) then
  begin
    if state then
      ABrush.Color := Grid2.SelectionColor;
  end;

  if ((ACol = 2) and (ARow > 0)) then
  begin

   if (Grid2.Cells[ACol, ARow] = '0')
    then
    begin
    ABrush.Color := clYellow;
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end;

   if (Grid2.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clAqua;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;
  end;

    if ((ACol = 3) and (ARow > 0)) then
  begin

   if (Grid2.Cells[ACol, ARow] = '')
    then
    begin
    ABrush.Color := clRed;
    //AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

    if (Grid2.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clInfoBk;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

  end;

    if ((ACol = 4) and (ARow > 0)) then
  begin

   if (Grid2.Cells[ACol, ARow] = '')
    then
    begin
    ABrush.Color := clRed;
    //AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

    if (Grid2.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clInfoBk;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

  end;

     if ((ACol = 5) and (ARow > 0)) then
  begin

   if (Grid2.Cells[ACol, ARow] = '')
    then
    begin
    ABrush.Color := clRed;
    //AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

    if (Grid2.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clInfoBk;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

  end;


  if ((ACol = 6) and (ARow > 0)) then
  begin

   if (Grid2.Cells[ACol, ARow] = '')
    then
    begin
    ABrush.Color := clRed;
    //AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

    if (Grid2.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clInfoBk;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

  end;

end;

procedure TFrmBast.Grid2GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
  var IsFloat: Boolean; var FloatFormat: string);
begin
isFloat := Acol in [5,6];
case ACol of
  5: Floatformat :='%.2n';
  6: Floatformat :='%.2n';
end;
end;

procedure TFrmBast.chGrid2Click(Sender: TObject);
begin
//ExsporExcel(sppd);
end;

procedure TFrmBast.exlrprt1BeforeBuild(Sender: TObject);
begin
FCounter := 1;
end;

procedure TFrmBast.exlrprt1GetFieldValue(Sender: TObject;
  const Field: String; var Value: OleVariant);
begin
if AnsiCompareText(Field, 'No') = 0 then
  begin
    Value := FCounter;
    Inc(FCounter);
  end;
end;

procedure TFrmBast.btn2Click(Sender: TObject);
var
 tglk1,tglin1,tglin2 : string;
 tglk2 : string;

begin
 tglk1 := FormatDateTime('yyyy-mm-dd',dtgl1.date);
 tglk2 := FormatDateTime('yyyy-mm-dd',dtgl2.date);

     if trim(cbb_petugas.Text) ='' then
      begin
         cbb_petugas.SetFocus;
         ShowMessage('Jenis Pelaporan Blm d pilih!');
         //Result:=False;
         exit
      end;


 //tglin1 := FormatDateTime('yyyy-mm-dd',dp_tgl1.date);
 //tglin2 := FormatDateTime('yyyy-mm-dd',dp_tgl2.date);

try
     SPBast.Connection := DmModul.Con1;
     SPBast.Close;
     SPbast.StoredProcName := 'SPBA_TGL_CARI';
     SPbast.PrepareSQL;
     SPbast.ParamByName('tgl1').AsString := tglk1; //key ba
     SPbast.ParamByName('tgl2').AsString := tglk2; //key ba
     SPbast.ParamByName('petugas').AsString := cbb_petugas.Text; //key ba
     SPBast.Open;

  //  apDirExe + '\cetak\kwi\'+ed_k1.Text+'-ksc'+'.doc';
//  exlrprt1.template :=apDirExe+'\xls\' +'BA_BAST22.xls';
//  exlrprt1.Dataset:=SPBast;
//  exlrprt1.TemplSheet :='bast';
//  exlrprt1.Show();
  ShowMessage('udah di export BAST 22 antara tgl '+tglk1+ ' s/d ' +tglk2);
 finally
    SPBast.Close;
 end;

end;

procedure TFrmBast.btn3Click(Sender: TObject);
var
 tglk1,tglin1,tglin2 : string;
 tglk2 : string;

begin
 tglk1 := FormatDateTime('yyyy-mm-dd',dtgl1.date);
 tglk2 := FormatDateTime('yyyy-mm-dd',dtgl2.date);

     if trim(cbb_petugas.Text) ='' then
      begin
         cbb_petugas.SetFocus;
         ShowMessage('Jenis Pelaporan Blm d pilih!');
         //Result:=False;
         exit
      end;


 //tglin1 := FormatDateTime('yyyy-mm-dd',dp_tgl1.date);
 //tglin2 := FormatDateTime('yyyy-mm-dd',dp_tgl2.date);

try
     SPBast.Connection := DmModul.Con1;
     SPBast.Close;
     SPbast.StoredProcName := 'SP_TGLSP_cari';
     SPbast.PrepareSQL;
     SPbast.ParamByName('tgl1').AsString := tglk1; //key ba
     SPbast.ParamByName('tgl2').AsString := tglk2; //key ba
     SPbast.ParamByName('petugas').AsString := cbb_petugas.Text; //key ba
     SPBast.Open;

  //  apDirExe + '\cetak\kwi\'+ed_k1.Text+'-ksc'+'.doc';
//  exlrprt1.template :=apDirExe+'\xls\' +'BA_sp22.xls';
//  exlrprt1.Dataset:=SPBast;
//  exlrprt1.TemplSheet :='bast';
//  exlrprt1.Show();
  ShowMessage('udah di export BAST 22 antara tgl '+tglk1+ ' s/d ' +tglk2);
 finally
    SPBast.Close;
 end;

end;

end.
