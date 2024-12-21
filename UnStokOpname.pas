unit UnStokOpname;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Grids, DBGrids, CRGrid,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxLabel, ComCtrls, Buttons, StdCtrls,
  ExtCtrls, AdvObj, BaseGrid, AdvGrid, DB, MemDS, DBAccess, MyAccess,ShellAPI,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, jpeg,
  AdvUtil,uDBXls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, OleCtrls, SHDocVw, cxMemo;

type
  TFrmStokOpname = class(TForm)
    Panel1: TPanel;
    cxlbl1: TcxLabel;
    dtp_awal: TDateTimePicker;
    cxlbl2: TcxLabel;
    dtp_akhir: TDateTimePicker;
    btcari: TBitBtn;
    img1: TImage;
    img2: TImage;
    Label2: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    cxCariNama: TcxTextEdit;
    BtnimportAwal: TBitBtn;
    MyStoredProc1: TMyStoredProc;
    dlgOpen1: TOpenDialog;
    MyDs1: TMyDataSource;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    CRDBGrid1: TCRDBGrid;
    MyQuery1: TMyQuery;
    Label3: TLabel;
    wbBarang: TWebBrowser;
    MyQ1: TMyQuery;
    BtnProsesOpname: TBitBtn;
    btsimpan: TBitBtn;
    qAct: TMyQuery;
    dtpTglOpname: TDateTimePicker;
    cxLabel1: TcxLabel;
    BitBtn1: TBitBtn;
    memoSQL: TMemo;
    grid1: TAdvStringGrid;
    AdvStringGrid1: TAdvStringGrid;
    procedure Grid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure Grid1CheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure BtnimportAwalClick(Sender: TObject);
    procedure btcariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxCariNamaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnProsesOpnameClick(Sender: TObject);
    procedure btsimpanClick(Sender: TObject);
    procedure CRDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grid1GetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    
    procedure BitBtn1Click(Sender: TObject);
    procedure grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure AdvStringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
    procedure tampildata;
    Procedure Aturgrid;
    procedure tampilStok;
    procedure tampilopname;
    procedure tampilProsesopname;
    procedure RunSQL(_SQL: string ; isOpen: boolean = True);
    function GenCode: string;
  public
    { Public declarations }
  end;

var
  FrmStokOpname: TFrmStokOpname;
  i,counter,hapus_baris,i1,i2,baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	sql,sql1,sql2,sql3,sql4,m1,m2,m3,m4,m5,ppn: String;
  qty,jml,harga,total_harga,disk,total2 : real ; // :integer;
  tgl1,tgl2,ht1:string;
  iRow: integer;  //variabel indikator jumlah baris

implementation
uses UnModul,UFunctions,UF_dbsql,UnCarisp, UnCarisp2, UnMenu,uglobal,nuest;
{$R *.dfm}

procedure TFrmStokOpname.RunSQL(_SQL: string; isOpen: boolean);
begin
with qAct do
  begin
    Close;
    Connection := DmModul.con1;
    SQL.Text := _SQL;
    if isOpen then
     Open
    else
     ExecSQL;
  end;
end;

function TFrmStokOpname.GenCode: string;
CONST
zero = '0000';
var
strTemp: string;
begin
//Format Nota adalah N-0001

//liat no.nota terakhir dari tb_pinjam
RunSQL('SELECT idpinjam FROM tb_pinjam ORDER BY idpinjam DESC LIMIT 1');

//cek apakah udah ada data dalam tabel, kalo belum hasilkan nilai pertama seperti format
//pada contoh
if qAct.Eof then
  begin
   result := 'N-0001';
   exit; //stop sampe disini saja perintahnya,
  end;

//jika memasuki baris ini, maka berarti telah ada data dalam tabel dan saatnya untuk
//melakukan filtering
strTemp := Copy(qAct.FieldByName('idpinjam').AsString,3,4); //potong data yang ditemukan dari karakter ke - 3 dan
//karakter yg dipotong adalah 4 (sampai akhir format no.nota)

strTemp := IntToStr(StrToInt(strTemp) + 1);//dah ketemu nilai berikutnya

strTemp := 'N-' + Copy(zero,1,Length(zero) - Length(strTemp)) + strTemp;
result  := strTemp;

end;


procedure TFrmStokOpname.AdvStringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  input_box : string;
begin
hapus_baris:=ARow;
cek_baris:=AdvStringGrid1.Cells[1,arow];

if not (Grid1.Cells[ACol,ARow]='') then begin

   //jumlah brg
    if ACol=6 then  begin
    if not (AdvStringGrid1.RowCount=1) then begin
       input_box:=InputBox('qty','Jumlah Barang : '+AdvStringGrid1.Cells[3,arow]+' -> '+AdvStringGrid1.Cells[6,arow],AdvStringGrid1.Cells[4,arow]);
       qty:=StrToFloat(input_box);

//       if qty > strtofloat(Grid1.Cells[4,arow]) then
//                  begin
//                  //+'jumlah Return : ' + qty +''
//                  ShowMessage( 'jumlah Retur Melebihi jumlah beli : ' + Grid1.Cells[4,arow]  );
//                  exit;
//                  qty:=StrToFloat(input_box);
//                  end
//                  else
//                  begin
//                  qty:=StrToFloat(input_box);
//                  end;

       AdvStringGrid1.Cells[ACol,ARow]:=FloatToStr(qty);
      //    jml:=StrToFloat(Grid1.Cells[4,arow]);
      //harga:=StrToFloat(Grid1.Cells[5,arow]);
      //total_harga:=jml*harga;
      //Grid1.Cells[6,arow]:=FloatToStr(total_harga);


          //Total;
      end;
      end;
 end;

end;

Procedure TFrmStokOpname.Aturgrid;
begin
  counter:=0;
  hapus_baris:=0;

  Grid1.ColCount:=7;
  Grid1.RowCount:=1;
  Grid1.FixedRowAlways := True;
  Grid1.Cells[0,0]:='No';
  Grid1.Cells[1,0]:='Kode';
  Grid1.Cells[2,0]:='Nama';
  Grid1.Cells[3,0]:='No. Rak';
  Grid1.Cells[4,0]:='Satuan';
  Grid1.Cells[5,0]:='Stok';
  Grid1.Cells[6,0]:='Stok Fisik';
  //Grid1.Cells[6,0]:='Stok';
  //Grid1.Cells[6,0]:='tgl.awal';
  Grid1.ColWidths[0]:=50;
  Grid1.ColWidths[1]:=140;
  Grid1.ColWidths[2]:=370;
  Grid1.ColWidths[3]:=50;
  Grid1.ColWidths[4]:=120;
  Grid1.ColWidths[5]:=60;
  Grid1.ColWidths[6]:=60;
  //Grid1.ColWidths[6]:=60;
      //rata kanan
  //  RightEdit(ed_dtotal);

end;


procedure TFrmStokOpname.BitBtn1Click(Sender: TObject);
var
  i: Integer;
  FieldsName: string;
begin
  memoSQL.Clear;
  with CRDBGrid1 do
  begin
    for i:=0 to FieldCount-1 do
      memoSQL.Lines.Add(Fields[i].AsString);

  end;

end;

procedure TFrmStokOpname.btcariClick(Sender: TObject);
begin
//tampildata;
// tampilStok;
Tampilopname;
end;



procedure TFrmStokOpname.BtnimportAwalClick(Sender: TObject);
var
Fields,Types: TStringList;
datafile : string;

begin




    if messagedlg('Import Data Awal dibackup'+#13#10+
'Import Excel Master Barang'+
#13#10+'dilanjutkan ?', mtConfirmation, [mbyes, mbNo], 0) = mryes then
begin

dlgOpen1.Filter := 'MS Excel|*.xls*|MS Excel 2007|*.xlsx';
if dlgOpen1.Execute then
  begin
     datafile:=dlgOpen1.FileName;
     Aturgrid;
     //Total;
  //import Excel  : Kode,nama_barang,satuan_jual,harga_jual,tgl_ed,stok_awal

  Fields:=TStringList.Create;
  //Fields.Text:='id'+#10+'nama'+#10+'alamat'+#10+'tgl'+#10+'nilai';
  //tgl_tutup,no_ba
  Fields.Text:=
  'tgl_tutup'+#10+    //1 key
  'no_ba'+#10+       //2
  'jumlah'+#10+      //3
  'kode_brg'+#10+       //4
  'nama_barang'+#10+    //5
  'merk'+#10+     //6
  'satuan'+#10+   //7
  'gudang';    //8

  //'n_t2';  //akhir Fields //9
  Types:=TStringList.Create;
  //Types.Text:='1'+#10+'0'+#10+'0'+#10+'2'+#10+'1';

  Types.Text:=
  '2'+#10+   //1 key
  '0'+#10+   //2
  '1'+#10+   //3
  '0'+#10+   //4
  '0'+#10+   //5
  '0'+#10+   //6
  '0'+#10+   //7
  '0';       //8
  //'1'; //akhir type data : 0 -> string , 1 -> nilai, 2 -> date

  //nama_sheet, table nama

  Screen.cursor := crsqlWait;

  if uDBXls.Import(datafile, 'awal', 'detail_awal_tutup_depo', Fields, Types) then
    showmessage('Sukses Import awal stok')
  else showmessage('Gagal Import awal stok');
   Screen.cursor := crDefault;
  end;
   //TampilData;
end;

end;

procedure TFrmStokOpname.BtnProsesOpnameClick(Sender: TObject);
begin
tampilProsesopname;
end;

procedure TFrmStokOpname.btsimpanClick(Sender: TObject);
var
i: integer;
_SQL: string;
begin

//munculkan nota
//edNota.Text := GenCode;


  try
//simpan ke tabel tb_detpinjam dlu ya

for i:=1 to grid1.RowCount - 1 do  //ini nih cara nyimpen massal yang sederhana, pake looping aja
  begin                             //jadi disimpen per baris gitu, inget mulai baris 1 pada stringgrid karena baris 0 adalah judul kolom!!!
    _SQL := 'INSERT INTO detail_opname(no,kode_brg,tgl_opname,tgl_create,nama,jumlah,satuan)VALUES(' + QuotedStr(grid1.Cells[0,i]) + ','
    + QuotedStr(grid1.Cells[1,i]) + ','
    + QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date)) + ','
    + QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','
    + QuotedStr(grid1.Cells[2,i]) + ','
    + QuotedStr(grid1.Cells[6,i]) + ','
    + QuotedStr(grid1.Cells[4,i]) + ')';
    RunSQL(_SQL,False); //eksekusi SQL
  end;
ShowMessage('Data berhasil Disimpan');
  iRow := 2;
with grid1 do
  begin
  Aturgrid;
  end;

  except
  Application.MessageBox('Data gagal disimpan dengan sempurna!!!','Peringatan',MB_OK or MB_ICONERROR);
end;

end;

procedure TFrmStokOpname.CRDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  With CRDBGrid1 do
  With Canvas do
  begin
    //if   then
  DefaultdrawDataCell(Rect,Column.Field,state);
  end;
end;

procedure TFrmStokOpname.cxCariNamaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
    begin
    tampildata;
    end;
end;

procedure TFrmStokOpname.FormCreate(Sender: TObject);
begin
dtp_Awal.Date := Now;
dtp_akhir.Date := Now;
dtpTglOpname.Date := Now;
Aturgrid;
end;

procedure TFrmStokOpname.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmStokOpname.Grid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
CanEdit := ACol = 1;
end;

procedure TFrmStokOpname.Grid1CheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
grid1.RowSelect[Arow] := State;
end;

procedure TFrmStokOpname.Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    0: HAlign := taCenter;
    1,2,6: HAlign := taLeftJustify;
    5: HAlign := taRightJustify;
  end;
end;

procedure TFrmStokOpname.Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
    State: Boolean;
begin
if Grid1.GetCheckBoxState(1, ARow, State) then
    begin
      if State then
        ABrush.Color := Grid1.SelectionColor;
    end;


    // baris Kolom 1
    if ((ACol = 1) and (ARow > 0)) then
    begin

    if (Grid1.Cells[5, ARow] < '0') then
      begin
        ABrush.Color := clPurple;
        AFont.Color := clWhite;
        AFont.Style := [fsBold];



      end;


      if (Grid1.Cells[5, ARow] = '0') then
      begin
        ABrush.Color := clYellow;
        AFont.Color := clred;
        AFont.Style := [fsBold];




      end;

      if (Grid1.Cells[5, ARow] > '0') then
      begin
        ABrush.Color := clWebPaleGreen;
        AFont.Color := clBlue;
        AFont.Style := [fsBold];
      end;

    end;


    // baris Kolom 4
    if ((ACol = 4) and (ARow > 0)) then
    begin


     if (Grid1.Cells[ACol, ARow] = '1') then
      begin
        ABrush.Color := clWebPaleGreen;
        AFont.Color := clBlue;
        AFont.Style := [fsBold];
      end;

      if (Grid1.Cells[ACol, ARow] = '') then
      begin
        ABrush.Color := clRed;
        AFont.Color := clCream ;
        AFont.Style := [fsBold];
      end;

      if (Grid1.Cells[ACol, ARow] = '0') then
      begin
        ABrush.Color := clYellow;
        AFont.Color := clred;
        AFont.Style := [fsBold];
      end;
    {

     }
    end;
    // baris Kolom 5
    if ((ACol = 5) and (ARow > 0)) then
    begin

    if (Grid1.Cells[ACol, ARow] < '0') then
      begin
        ABrush.Color := clPurple;
        AFont.Color := clWhite;
        AFont.Style := [fsBold];



      end;


      if (Grid1.Cells[ACol, ARow] = '0') then
      begin
        ABrush.Color := clYellow;
        AFont.Color := clred;
        AFont.Style := [fsBold];




      end;

      if (Grid1.Cells[ACol, ARow] > '0') then
      begin
        ABrush.Color := clWebPaleGreen;
        AFont.Color := clBlue;
        AFont.Style := [fsBold];
      end;

    end;

    if ((ACol = 6) and (ARow > 0)) then
  begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

end;

procedure TFrmStokOpname.grid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
 // VAR el : STRING;
begin
// if acol = 6 then
//  begin
//    //Grid1.EditLink := el;
//    AEditor := edCustom;
//  end;
end;

procedure TFrmStokOpname.Grid1GetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: string);
begin
isFloat := Acol in [5,6];
case ACol of
  5: Floatformat :='%.0n';
  6: Floatformat :='%.0n';
end;
end;



procedure TFrmStokOpname.grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
  var
  input_box : string;
begin
hapus_baris:=ARow;
cek_baris:=Grid1.Cells[1,arow];

if not (Grid1.Cells[ACol,ARow]='') then begin

   //jumlah brg
    if ACol=6 then  begin
    if not (Grid1.RowCount=1) then begin
       input_box:=InputBox('qty','Jumlah Barang : '+Grid1.Cells[3,arow]+' -> '+Grid1.Cells[6,arow],Grid1.Cells[4,arow]);
       qty:=StrToFloat(input_box);

//       if qty > strtofloat(Grid1.Cells[4,arow]) then
//                  begin
//                  //+'jumlah Return : ' + qty +''
//                  ShowMessage( 'jumlah Retur Melebihi jumlah beli : ' + Grid1.Cells[4,arow]  );
//                  exit;
//                  qty:=StrToFloat(input_box);
//                  end
//                  else
//                  begin
//                  qty:=StrToFloat(input_box);
 //                 end;

       Grid1.Cells[ACol,ARow]:=FloatToStr(qty);
      //    jml:=StrToFloat(Grid1.Cells[4,arow]);
      //harga:=StrToFloat(Grid1.Cells[5,arow]);
      //total_harga:=jml*harga;
      //Grid1.Cells[6,arow]:=FloatToStr(total_harga);


         // Total;
      end;
      end;
 end;
end;

procedure TFrmStokOpname.tampildata;
var
  //spdataAwal : TMyStoredProc;
  qcari: TMyStoredProc;
  //spstok : TMyStoredProc;
 // qcari : TMyQuery;
  i, counter: Integer;
  databidang:string;

begin

// DBlookup databidang
//   if cboBidang.Text = '' then
//  databidang := ''
//  else
//  databidang :=  cboBidang.EditValue;


    qcari := TMyStoredProc.Create(nil);
    qcari.Connection := DmModul.con1;

 //  qcari := TMyQuery.Create(nil);
  // qcari.Connection := DmModul.con1;
   //spstok := TMyStoredProc.Create(nil);
    //spstok.Connection := DmModul.con1;
    //Screen.cursor := crsqlWait;

    try

    qcari.Close;
    qcari.StoredProcName := 'sp_stoktglnama';
    qcari.PrepareSQL;
    qcari.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp_awal.date); //key ba
    qcari.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key ba
    //prcpeg1.ParamByName('cariGudang').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    //prcpeg1.ParamByName('cariBidang').AsString := databidang;
    qcari.ParamByName('cariNama').AsString := cxCariNama.text;
    qcari.Open;

   // Label3.Caption :=;
      if qcari.Eof then
      begin
        ShowMessage('data tidak ada...');
        // Clear
        Grid1.ClearRows(1, Grid1.RowCount - 1);
        Grid1.RowCount := 2;
        exit;
      end;
      for i := 1 to Grid1.RowCount - 1 do
      begin
        Grid1.Cells[0, i] := '';
        Grid1.Cells[1, i] := '';
        Grid1.Cells[2, i] := '';
        Grid1.Cells[3, i] := '';
        Grid1.Cells[4, i] := '';
        Grid1.Cells[5, i] := '';
        //Grid1.Cells[6, i] := '';
      end;
      // isi grid
      counter := 0;
      if qcari.RecordCount <= 1 then
        Grid1.RowCount := 2
      else
        Grid1.RowCount := qcari.RecordCount + 1;



      while not qcari.Eof do
      begin

        Inc(counter);
        // cek
        Grid1.ShowSelection := false;
        for i := 1 to Grid1.RowCount - 1 do
          Grid1.AddCheckBox(1, i, false, false);

        Grid1.Cells[0, counter] := IntToStr(counter);
        Grid1.Cells[1, counter] := qcari.FieldByName('kd_obat').AsString; // No.
        Grid1.Cells[2, counter] := qcari.FieldByName('nm_obat').AsString;
        Grid1.Cells[3, counter] := qcari.FieldByName('idrak').AsString;
        Grid1.Cells[4, counter] := qcari.FieldByName('sat_obat').AsString;
        Grid1.Cells[5, counter] := qcari.FieldByName('StokAkhir').AsString;
        qcari.Next;
      end;

    finally
      qcari.Close;
      qcari.Free;
    end;

end;

procedure TFrmStokOpname.tampilStok;
begin
  tgl1 := FormatDateTime('yyyy/mm/dd',dtp_awal.Date);
  tgl2 := FormatDateTime('yyyy/mm/dd',dtp_akhir.Date);
//  ht1:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/stok.php?tgl1='+tgl1+'&tgl2='+tgl2;
//  ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);
//  ProsesKartuAll;
//  wbBarang.Navigate('http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/stok.php?tgl1='+tgl1+'&tgl2='+tgl2+'');


end;

procedure TFrmStokOpname.tampilProsesopname;
begin

try

tgl1 := FormatDateTime('yyyy/mm/dd',dtp_awal.Date);
tgl2 := FormatDateTime('yyyy/mm/dd',dtp_akhir.Date);

cari(MyQ1,'SELECT A.kd_obat,A.idrak,A.nm_obat,A.sat_obat,A.status_jual,A.aktif,A.hrg_obat, ' +
              '      (B.Awal) as StokAwal,              ' +
              '      Coalesce(C.tambah,0) as jml_tambah, ' +
              '      Coalesce(D.Keluar,0) as jml_keluar,  ' +
              '      Coalesce(E.Retur,0) as jml_retur,    ' +
              '      Coalesce(F.konsiyansi,0) as jml_konsiyansi,' +
              '      ((COALESCE(B.Awal,0)+Coalesce(C.tambah,0))-(Coalesce(D.keluar,0) + Coalesce(E.Retur,0))) as StokAkhir ' +
              '      FROM tbl_dataobat A ' +
              '      LEFT JOIN           ' +
              '      (SELECT kode_brg, Sum(jumlah) as Awal FROM detail_awal ' +
              '      GROUP	BY	kode_brg) B  ' +
              '      ON A.kd_obat=B.kode_brg ' +
              '      LEFT JOIN	              ' +
              '      (SELECT kode_brg, Sum(jumlah) as Tambah FROM detail_pembelian ' +
              '      GROUP BY	 kode_brg) C                               ' +
              '      ON A.kd_obat=C.kode_brg                              ' +
              '     LEFT JOIN	                                           ' +
              '      (SELECT	kode_brg, Sum(jml_jual) as Keluar FROM detail_penjualan ' +
              '      GROUP BY	kode_brg) D               ' +
              '      ON A.kd_obat=D.kode_brg             ' +
              '      LEFT JOIN	                          ' +
              '      (SELECT	kode_brg, Sum(retur) as Retur FROM detail_returbeli ' +
              '      GROUP BY kode_brg) E ' +
              '      ON A.kd_obat=E.kode_brg ' +
          ' LEFT JOIN	                           ' +
          '          (SELECT	kode_brg, Sum(jumlah) as konsiyansi FROM detail_konsinasi ' +
          '          GROUP BY kode_brg) F  ' +
          '          ON A.kd_obat=F.kode_brg ' +

          '          ORDER BY	 A.idrak,A.nm_obat');

        if MyQ1.Eof then
      begin
        ShowMessage('data tidak ada...');
        // Clear
        Grid1.ClearRows(1, Grid1.RowCount - 1);
        Grid1.RowCount := 2;
        exit;
      end;
      for i := 1 to Grid1.RowCount - 1 do
      begin
        Grid1.Cells[0, i] := '';
        Grid1.Cells[1, i] := '';
        Grid1.Cells[2, i] := '';
        Grid1.Cells[3, i] := '';
        Grid1.Cells[4, i] := '';
        Grid1.Cells[5, i] := '';
        Grid1.Cells[6, i] := '';
      end;
      // isi grid
      counter := 0;
      if MyQ1.RecordCount <= 1 then
        Grid1.RowCount := 2
      else
        Grid1.RowCount := MyQ1.RecordCount + 1;



      while not MyQ1.Eof do
      begin

        Inc(counter);
        // cek
        Grid1.ShowSelection := false;
        for i := 1 to Grid1.RowCount - 1 do
        //  Grid1.AddCheckBox(1, i, false, false);
        Grid1.Cells[0, counter] := IntToStr(counter);
        Grid1.Cells[1, counter] := MyQ1.FieldByName('kd_obat').AsString; // No.
        Grid1.Cells[2, counter] := MyQ1.FieldByName('nm_obat').AsString;
        Grid1.Cells[3, counter] := MyQ1.FieldByName('idrak').AsString;
        Grid1.Cells[4, counter] := MyQ1.FieldByName('sat_obat').AsString;
        Grid1.Cells[5, counter] := MyQ1.FieldByName('StokAkhir').AsString;
        MyQ1.Next;
      end;

finally
  MyQ1.Close;
end;
end;


procedure TFrmStokOpname.tampilopname;
var s : string;
begin

cari(MyQ1,'SELECT A.kd_obat,A.idrak,A.nm_obat,A.sat_obat,A.status_jual,A.aktif,A.hrg_obat, ' +
              '      (B.Awal) as StokAwal,              ' +
              '      Coalesce(C.tambah,0) as jml_tambah, ' +
              '      Coalesce(D.Keluar,0) as jml_keluar,  ' +
              '      Coalesce(E.Retur,0) as jml_retur,    ' +
              '      Coalesce(F.konsiyansi,0) as jml_konsiyansi,' +
              '      ((COALESCE(B.Awal,0)+Coalesce(C.tambah,0))-(Coalesce(D.keluar,0) + Coalesce(E.Retur,0))) as StokAkhir ' +
              '      FROM tbl_dataobat A ' +
              '      LEFT JOIN           ' +
              '      (SELECT kode_brg, Sum(jumlah) as Awal FROM detail_awal ' +
              '      GROUP	BY	kode_brg) B  ' +
              '      ON A.kd_obat=B.kode_brg ' +
              '      LEFT JOIN	              ' +
              '      (SELECT kode_brg, Sum(jumlah) as Tambah FROM detail_pembelian ' +
              '      GROUP BY	 kode_brg) C                               ' +
              '      ON A.kd_obat=C.kode_brg                              ' +
              '     LEFT JOIN	                                           ' +
              '      (SELECT	kode_brg, Sum(jml_jual) as Keluar FROM detail_penjualan ' +
              '      GROUP BY	kode_brg) D               ' +
              '      ON A.kd_obat=D.kode_brg             ' +
              '      LEFT JOIN	                          ' +
              '      (SELECT	kode_brg, Sum(retur) as Retur FROM detail_returbeli ' +
              '      GROUP BY kode_brg) E ' +
              '      ON A.kd_obat=E.kode_brg ' +
          ' LEFT JOIN	                           ' +
          '          (SELECT	kode_brg, Sum(jumlah) as konsiyansi FROM detail_konsinasi ' +
          '          GROUP BY kode_brg) F  ' +
          '          ON A.kd_obat=F.kode_brg ' +

          '          ORDER BY	 A.idrak,A.nm_obat');
//        MyQ1.Close;
//        MyQ1.Connection:=DmModul.con1;
//        MyQ1.SQL.Text:=s;
//        MyQ1.Open;
{

        if MyQ1.Eof then
      begin
        ShowMessage('data tidak ada...');
        // Clear
        Grid1.ClearRows(1, Grid1.RowCount - 1);
        Grid1.RowCount := 2;
        exit;
      end;
      for i := 1 to Grid1.RowCount - 1 do
      begin
        Grid1.Cells[0, i] := '';
        Grid1.Cells[1, i] := '';
        Grid1.Cells[2, i] := '';
        Grid1.Cells[3, i] := '';
        Grid1.Cells[4, i] := '';
        Grid1.Cells[5, i] := '';
        Grid1.Cells[6, i] := '';
      end;
      // isi grid
      counter := 0;
      if MyQ1.RecordCount <= 1 then
        Grid1.RowCount := 2
      else
        Grid1.RowCount := MyQ1.RecordCount + 1;



      while not MyQ1.Eof do
      begin

        Inc(counter);
        // cek
        Grid1.ShowSelection := false;
        for i := 1 to Grid1.RowCount - 1 do
        //  Grid1.AddCheckBox(1, i, false, false);
        Grid1.Cells[0, counter] := IntToStr(counter);
        Grid1.Cells[1, counter] := MyQ1.FieldByName('kd_obat').AsString; // No.
        Grid1.Cells[2, counter] := MyQ1.FieldByName('nm_obat').AsString;
        Grid1.Cells[3, counter] := MyQ1.FieldByName('idrak').AsString;
        Grid1.Cells[4, counter] := MyQ1.FieldByName('sat_obat').AsString;
        Grid1.Cells[5, counter] := MyQ1.FieldByName('StokAkhir').AsString;
        MyQ1.Next;
      end;
     }

MyDs1.DataSet:=MyQ1;
CRDBGrid1.DataSource:=MyDs1;
CRDBGrid1.Columns.Clear;
DBGridAddColumn(CRDBGrid1,'kd_obat','Kode',120,1);
DBGridAddColumn(CRDBGrid1,'nm_obat','Nama',280,1);
DBGridAddColumn(CRDBGrid1,'idrak','rak',30,1);
DBGridAddColumn(CRDBGrid1,'sat_obat','satuan',80,1);
DBGridAddColumn(CRDBGrid1,'exp_obat','Tgl. ED',80,2);
DBGridAddColumn(CRDBGrid1,'hrgbeli_obat','@Hrg Beli',80,3);
DBGridAddColumn(CRDBGrid1,'hrg_obat','@Hrg Jual',80,3);
DBGridAddColumn(CRDBGrid1,'StokAkhir','stok',80,3);
DBGridAddColumn(CRDBGrid1,'','Stok Fisik',80,3);
end;


end.
