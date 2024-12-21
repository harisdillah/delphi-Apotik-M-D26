unit UImportMasterbarang;

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
  cxLookAndFeelPainters, cxContainer, cxEdit, Grids, AdvObj, BaseGrid, AdvGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, Buttons, ExtCtrls, DB, MemDS, DBAccess, MyAccess,
  ComCtrls, DBGrids, CRGrid,jpeg, OleCtrls, SHDocVw, AdvUtil;

type
  TFrmImportMasterBrg = class(TForm)
    Label4: TLabel;
    cbbgudang: TcxLookupComboBox;
    cxFileNama: TcxTextEdit;
    Label1: TLabel;
    tmr1: TTimer;
    BtnBukaFile: TBitBtn;
    btnProses: TBitBtn;
    Lbl_nm_jml: TLabel;
    dlgOpen1: TOpenDialog;
    MyStoredProc1: TMyStoredProc;
    dlgOpen2: TOpenDialog;
    ds1: TMyDataSource;
    MyQuery1: TMyQuery;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    CRDBGrid1: TCRDBGrid;
    dsBarang: TMyDataSource;
    Qcari: TMyQuery;
    ds2: TMyDataSource;
    iFile: TLabel;
    btn1: TBitBtn;
    BtnimportAwal: TBitBtn;
    Grid1: TAdvStringGrid;
    CRDBGrid2: TCRDBGrid;
    Qawal: TMyQuery;
    dsAwal: TMyDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure btnProsesClick(Sender: TObject);
    Procedure Aturgrid;
    procedure FormShow(Sender: TObject);
    Procedure tampildataMaster;
//    procedure BtnBukaFileClick(Sender: TObject);
    procedure TampilGudang;
    Procedure tampilMasterBarang;
    procedure btn1Click(Sender: TObject);
//    procedure BtnimportAwalClick(Sender: TObject);
    Procedure tampilAwalBarang;
//    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CRDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImportMasterBrg: TFrmImportMasterBrg;
  i,counter,hapus_baris,i1,i2,baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	sql,sql1,sql2: String;
  s:string;


implementation


uses unMenu, UnModul,nuest,ComObj;


{$R *.dfm}

Procedure TFrmImportMasterBrg.Aturgrid;
begin
  counter:=0;
  hapus_baris:=0;

  Grid1.ColCount:=7;
  Grid1.RowCount:=1;
  Grid1.FixedRowAlways := True;

    Grid1.Cells[0, 0] := 'No.';
    Grid1.Cells[1, 0] := 'Kode';
    Grid1.Cells[2, 0] := 'Nama';
    Grid1.Cells[3, 0] := 'Satuan';
    Grid1.Cells[4, 0] := 'Aktif';
    Grid1.Cells[5, 0] := 'Bidang';
    Grid1.Cells[6, 0] := 'Gudang';

    Grid1.ColWidths[0] := 30;
    Grid1.ColWidths[1] := 90; // 1
    Grid1.ColWidths[2] := 280;
    Grid1.ColWidths[3] := 120;
    Grid1.ColWidths[4] := 40;
    Grid1.ColWidths[5] := 80;
    Grid1.ColWidths[6] := 220;

end;



//procedure TFrmImportMasterBrg.BitBtn1Click(Sender: TObject);
//var
//Fields,Types: TStringList;
//datafile : string;
//begin
//if messagedlg('Import Data awal dibackup'+#13#10+
//'Import Excel Awal Barang'+
//#13#10+'dilanjutkan ?'+ cbbgudang.Text , mtConfirmation, [mbyes, mbNo], 0) = mryes then
//begin
//
//dlgOpen1.Filter := 'MS Excel|*.xls*|MS Excel 2007|*.xlsx';
//if dlgOpen1.Execute then
//  begin
//     datafile:=dlgOpen1.FileName;
//     Aturgrid;
//     //Total;
//  //import Excel  : Kode,nama_barang,satuan_jual,harga_jual,tgl_ed,stok_awal
//
//  Fields:=TStringList.Create;
//  //Fields.Text:='id'+#10+'nama'+#10+'alamat'+#10+'tgl'+#10+'nilai';
//
//  Fields.Text:=
//  'tgl_awal'+#10+   //1 key
//  'no_awal'+#10+   //2
//  'no'+#10+   //3
//  'kode_brg'+#10+   //4
//  'nama'+#10+   //5
//  'satuan'+#10+  //6
//  'harga_jual'+#10+  //7
//  'harga_beli'+#10+ //8
//  'jumlah';      //9
//
//  Types:=TStringList.Create;
//  //Types.Text:='1'+#10+'0'+#10+'0'+#10+'2'+#10+'1';
//
//  Types.Text:=
//  '2'+#10+   //1 key
//  '0'+#10+   //2
//  '1'+#10+   //3
//  '0'+#10+   //4
//  '0'+#10+   //5
//  '0'+#10+   //6
//  '1'+#10+   //7
//  '1'+#10+   //8
//  '1';       //9
//  //'1'; //akhir type data : 0 -> string , 1 -> nilai, 2 -> date
//
//  //nama_sheet, table nama
//
//  Screen.cursor := crsqlWait;
//
//  if uDBXls.Import(datafile, 'import', 'detail_awal', Fields, Types) then
//    showmessage('Sukses Import Awal Barang')
//  else showmessage('Gagal Import Awal Barang');
//   Screen.cursor := crDefault;
//  end;
//
//end;
//end;

procedure TFrmImportMasterBrg.BitBtn2Click(Sender: TObject);
begin
tampilAwalBarang;
end;

procedure TFrmImportMasterBrg.BitBtn3Click(Sender: TObject);
var
XlApp, XlBook, XlSheet: Variant;
i, x : integer;
begin
XlApp := CreateOleObject('Excel.Application');
XlBook := XlApp.WorkBooks.Add;
XlSheet := XlBook.worksheets.add;

//memberikan judul pada baris pertama
for i:=0 to CRDBGrid2.FieldCount-1 do

begin
XlSheet.cells[1,i+1].value:=CRDBGrid2.Columns[i].Title.Caption;
end;
//XlSheet.cells[x,y] ==> x = baris dan y = kolom

Qawal.First;
x:=1; //inisialisasi untuk menampilkan no urut
while not Qawal.Eof do
begin
XlSheet.cells[x+1,1].value:=x;
for i:=1 to CRDBGrid2.FieldCount-1 do
begin
XlSheet.cells[x+1,i+1].value:=CRDBGrid2.Fields[i].Text;
end;
Qawal.Next;
inc(x);

end;

XlApp.visible:=true; //menampilkan dalam MS. Excel\</p>

end;

procedure TFrmImportMasterBrg.btn1Click(Sender: TObject);
var
XlApp, XlBook, XlSheet: Variant;
i, x : integer;
begin
 XlApp := CreateOleObject('Excel.Application');
XlBook := XlApp.WorkBooks.Add;
XlSheet := XlBook.worksheets.add;

//memberikan judul pada baris pertama
for i:=0 to CRDBGrid1.FieldCount-1 do

begin
XlSheet.cells[1,i+1].value:=CRDBGrid1.Columns[i].Title.Caption;
end;
//XlSheet.cells[x,y] ==> x = baris dan y = kolom

Qcari.First;
x:=1; //inisialisasi untuk menampilkan no urut
while not Qcari.Eof do
begin
XlSheet.cells[x+1,1].value:=x;
for i:=1 to CRDBGrid1.FieldCount-1 do
begin
XlSheet.cells[x+1,i+1].value:=CRDBGrid1.Fields[i].Text;
end;
Qcari.Next;
inc(x);

end;

XlApp.visible:=true; //menampilkan dalam MS. Excel\</p>
end;


//procedure TFrmImportMasterBrg.BtnBukaFileClick(Sender: TObject);
//var
//Fields,Types: TStringList;
//datafile : string;
//
//begin
//
//    if messagedlg('Import Data Master dibackup'+#13#10+
//'Import Excel Master Barang'+
//#13#10+'dilanjutkan ?'+ cbbgudang.Text , mtConfirmation, [mbyes, mbNo], 0) = mryes then
//begin
//
//dlgOpen1.Filter := 'MS Excel|*.xls*|MS Excel 2007|*.xlsx';
//if dlgOpen1.Execute then
//  begin
//     datafile:=dlgOpen1.FileName;
//     Aturgrid;
//     //Total;
//  //import Excel  : Kode,nama_barang,satuan_jual,harga_jual,tgl_ed,stok_awal
//
//  Fields:=TStringList.Create;
//  //Fields.Text:='id'+#10+'nama'+#10+'alamat'+#10+'tgl'+#10+'nilai';
//
//  Fields.Text:=
//  'kd_obat'+#10+   //1 key
//  'nm_obat'+#10+   //2
//  'sat_obat'+#10+  //3
//  'hrg_obat'+#10+  //4
//  'hrgbeli_obat'+#10+ //5
//  'minstk_obat'+#10+  //6
//  'barcode'+#10+      //7
//  'status_jual'+#10+  //8
//  'stok_obat'+#10+  //9
//  'aktif'+#10+  //10
//  'idrak';      //11
//
//  Types:=TStringList.Create;
//  //Types.Text:='1'+#10+'0'+#10+'0'+#10+'2'+#10+'1';
//
//  Types.Text:=
//  '0'+#10+   //1 key
//  '0'+#10+   //2
//  '0'+#10+   //3
//  '1'+#10+   //4
//  '1'+#10+   //5
//  '1'+#10+   //6
//  '0'+#10+   //7
//  '0'+#10+   //8
//  '0'+#10+   //9
//  '1'+#10+   //10
//  '0';       //11
//  //'1'; //akhir type data : 0 -> string , 1 -> nilai, 2 -> date
//
//  //nama_sheet, table nama
//
//  Screen.cursor := crsqlWait;
//
//  if uDBXls.Import(datafile, 'import', 'tbl_dataobat', Fields, Types) then
//    showmessage('Sukses Import Master Barang')
//  else showmessage('Gagal Import Master Barang');
//   Screen.cursor := crDefault;
//  end;
//   //TampilData;
//end;
//end;


//procedure TFrmImportMasterBrg.BtnimportAwalClick(Sender: TObject);
//var
//Fields,Types: TStringList;
//datafile : string;
//begin
//
//    if messagedlg('Import Data Awal'+#13#10+
//'Import Excel Master Barang'+
//#13#10+'dilanjutkan ?', mtConfirmation, [mbyes, mbNo], 0) = mryes then
//begin
//
//dlgOpen1.Filter := 'MS Excel|*.xls*|MS Excel 2007|*.xlsx';
//if dlgOpen1.Execute then
//  begin
//     datafile:=dlgOpen1.FileName;
//     Aturgrid;
//     //Total;
//  //import Excel  : Kode,nama_barang,satuan_jual,harga_jual,tgl_ed,stok_awal
//
//  Fields:=TStringList.Create;
//  //Fields.Text:='id'+#10+'nama'+#10+'alamat'+#10+'tgl'+#10+'nilai';
//  //tgl_tutup,no_ba
//  Fields.Text:=
//  'tgl_tutup'+#10+    //1 key
//  'no_ba'+#10+       //2
//  'jumlah'+#10+      //3
//  'kode_brg'+#10+       //4
//  'nama_barang'+#10+    //5
//  'merk'+#10+     //6
//  'satuan'+#10+   //7
//  'gudang';    //8
//
//  //'n_t2';  //akhir Fields //9
//  Types:=TStringList.Create;
//  //Types.Text:='1'+#10+'0'+#10+'0'+#10+'2'+#10+'1';
//
//  Types.Text:=
//  '2'+#10+   //1 key
//  '0'+#10+   //2
//  '1'+#10+   //3
//  '0'+#10+   //4
//  '0'+#10+   //5
//  '0'+#10+   //6
//  '0'+#10+   //7
//  '0';       //8
//  //'1'; //akhir type data : 0 -> string , 1 -> nilai, 2 -> date
//
//  //nama_sheet, table nama
//
//  Screen.cursor := crsqlWait;
//
//  if uDBXls.Import(datafile, 'awal', 'detail_awal_tutup_depo', Fields, Types) then
//    showmessage('Sukses Import awal stok')
//  else showmessage('Gagal Import awal stok');
//   Screen.cursor := crDefault;
//  end;
//   //TampilData;
//end;
//end;

procedure TFrmImportMasterBrg.TampilGudang;
var
 q2 : TMyQuery;
begin
 q2 := TMyQuery.Create(nil);
  try
  q2.Connection := DmModul.con1;
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text := 'Select kd_gudang, nama_gudang, CONCAT(kd_gudang, " - ", nama_gudang) as nm  from m_gudang'
  + ' order by kd_gudang';
  {
   q2.SQL.Text := 'Select kd_gudang, nama_gudang from m_gudang'+
   ' where gudang = ' + QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
   'order by kd_gudang';
   }
  //q2.SQL.Text := 'Select nip, CONCAT(gol, " , ", nm_gol) as nm  from r_gol';
  q2.Open;
    if q2.RecordCount > 0 then
  begin
  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString
  ds1.DataSet := q2;
  cbbgudang.Properties.ListSource := ds1;
  cbbgudang.Properties.ListOptions.ShowHeader := False;
  cbbgudang.Properties.ListFieldNames := 'nm';
  cbbgudang.Properties.KeyFieldNames := 'kd_gudang';
  end;
   finally
  //  q2.Close;
  //  q2.Free;
  end;
end;


procedure TFrmImportMasterBrg.btnProsesClick(Sender: TObject);

begin
if MessageDlg('Data dengan'+#13+#10+' Akan Ditampilkan'+#13+#10+
        'master barang : , ?????'
        + cbbgudang.Text, mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
     //tampildataMaster;
     tampilMasterBarang;
  end;

end;

procedure TFrmImportMasterBrg.CRDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

if (Sender as TCRDBGrid).Datasource.Dataset.Fields[6].AsString > '0' then
begin
// CRDBGrid2.Canvas.Font.Color:=clMaroon;
// CRDBGrid2.Canvas.Brush.Color:=clGreen;
//    (Sender as TCRDBGrid).Canvas.Font.Style:=[fsBold]; //clWebPaleGreen
 (Sender as TCRDBGrid).Canvas.Brush.Color:=clGreen;
 CRDBGrid2.DefaultDrawDataCell(Rect, Column.Field, State);
end
   else
   begin
    (Sender as TCRDBGrid).Canvas.Font.Style:=[fsBold];
    (Sender as TCRDBGrid).Canvas.Brush.Color:=clRed;
    CRDBGrid2.DefaultDrawDataCell(Rect, Column.Field, State);
   end;

end;

procedure TFrmImportMasterBrg.FormShow(Sender: TObject);
begin
Aturgrid;
TampilGudang;
end;


Procedure TFrmImportMasterBrg.tampildataMaster;
var
  spdataMbrg : TMyStoredProc;
  datagudang:string;
begin
// DBlookup databidang
   if cbbgudang.Text = '' then
  datagudang := ''
  else
  datagudang :=  cbbgudang.EditValue;


    spdataMbrg  := TMyStoredProc.Create(nil);
    spdataMbrg.Connection := DmModul.con1;
     try

      {
      prcpeg1.Close;
      prcpeg1.StoredProcName := 'SP_peg_aktif';
      prcpeg1.PrepareSQL;
      prcpeg1.ParamByName('cari').AsString := cx_cari_pegawai.Text;
      prcpeg1.Execute;
       }

    spdataMbrg.Close;
    spdataMbrg.StoredProcName := 'SP_cariMasterBarangDepo';
    spdataMbrg.PrepareSQL;
    //spdataMbrg.ParamByName('tgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp_awal.date); //key ba
    //spdataMbrg.ParamByName('tgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key ba
    //spdataMbrg.ParamByName('cariGudang').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    spdataMbrg.ParamByName('cariGudang').AsString := datagudang;
    spdataMbrg.Execute;

    Lbl_nm_jml.Caption := inttostr(spdataMbrg.RecordCount) +' record ' ;

    //Lbl_nm_jml.Caption := inttostr(spdataMbrg.RecordCount) +' record ' + FormatDateTime('yyyy-mm-dd',dtp_awal.date) + ' s/d ' + FormatDateTime('yyyy-mm-dd',dtp_akhir.date);



      if spdataMbrg.Eof then
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
      if spdataMbrg.RecordCount <= 1 then
        Grid1.RowCount := 2
      else
        Grid1.RowCount := spdataMbrg.RecordCount + 1;



      while not spdataMbrg.Eof do
      begin




        Inc(counter);
        // cek
        Grid1.ShowSelection := false;
        for i := 1 to Grid1.RowCount - 1 do
          Grid1.AddCheckBox(1, i, false, false);

        Grid1.Cells[0, counter] := IntToStr(counter);
        Grid1.Cells[1, counter] := spdataMbrg.FieldByName('kode_brg').AsString; // No.
        Grid1.Cells[2, counter] := spdataMbrg.FieldByName('nama_barang').AsString;
        Grid1.Cells[3, counter] := spdataMbrg.FieldByName('satuan').AsString;
        Grid1.Cells[4, counter] := spdataMbrg.FieldByName('aktif').AsString;
        Grid1.Cells[5, counter] := spdataMbrg.FieldByName('bidang_brg').AsString;
        Grid1.Cells[6, counter] := spdataMbrg.FieldByName('gudang').AsString;


       //ambil stok

          {
          spstok.Close;
          spstok.StoredProcName := 'sp_stok' ;
          spstok.PrepareSQL;
          spstok.ParamByName('tgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp_awal.date); //key stok Awal Tahun
          spstok.ParamByName('tgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key Tgl Akhir
          spstok.ParamByName('cari').AsString := dataRow(prcpeg1.FieldByName('kode_brg'),'-');
          spstok.Open;
           }

          //Grid1.Cells[5,counter]:=dataRow(spstok.FieldByName('stok'),'-');
          //spdetailusul.Next;

         //Grid1.Cells[6, counter] := spdataMbrg.FieldByName('bid_nama').AsString;

        {
          jml:=StrToInt(StringGrid3.Cells[2,counter]);
          harga:=StrToInt(StringGrid3.Cells[3,counter]);
          total_harga:=jml*harga;
          StringGrid3.Cells[6,counter]:=IntToStr(total_harga);
          }
        spdataMbrg.Next;
      end;
      // Total;
    finally
      spdataMbrg.Close;
    end;
end;


Procedure TFrmImportMasterBrg.tampilMasterBarang;
  var datagudang:string;
    Stream: TStream;
    JPG: TJpegImage;
    link : String;
begin

// DBlookup databidang
   if cbbgudang.Text = '' then
  datagudang := ''
  else
  datagudang :=  cbbgudang.EditValue;

//    s:='SELECT * '+
//     ' from m_barang '+
//     ' WHERE gudang = '+quotedstr(datagudang) +
//     ' ORDER BY bidang_brg, nama_barang asc';

  s:='SELECT * '+
     ' from tbl_dataobat '+
     //' WHERE gudang = '+quotedstr(datagudang) +
     ' ORDER BY nm_obat asc';

        Qcari.Close;
        Qcari.Connection:=DmModul.con1;
        Qcari.SQL.Text:=s;
        Qcari.Open;

        if(Qcari.RecordCount=0) then
        showmessage('Data tidak ditemukan  :  ' + datagudang );

       ds2.DataSet:=Qcari;
       CRDBGrid1.DataSource:=ds2;
       //CRDBGrid1.Columns.Clear;


//cari(Qcari,'select * from m_barang WHERE gudang = '+
//QuotedStr(''+datagudang+'')+
//' ORDER BY bidang_brg, nama_barang asc');

CRDBGrid1.Columns.Clear;
DBGridAddColumn(CRDBGrid1,'','NO.',100,1);
DBGridAddColumn(CRDBGrid1,'kd_obat','Kode',100,1);
DBGridAddColumn(CRDBGrid1,'nm_obat','Nama',280,1);
DBGridAddColumn(CRDBGrid1,'sat_obat','satuan',70,1);
DBGridAddColumn(CRDBGrid1,'hrg_obat','harga jual',70,3);
DBGridAddColumn(CRDBGrid1,'hrgbeli_obat','harga_beli',70,3);
DBGridAddColumn(CRDBGrid1,'minstk_obat','margin',70,3);
DBGridAddColumn(CRDBGrid1,'barcode','barcode',70,1);
DBGridAddColumn(CRDBGrid1,'exp_obat','exp_oabat',70,1);
DBGridAddColumn(CRDBGrid1,'status','status_jual',70,1);
DBGridAddColumn(CRDBGrid1,'stk_obat','STOK',70,3);
end;

Procedure TFrmImportMasterBrg.tampilAwalBarang;
  var datagudang2:string;
begin

  if cbbgudang.Text = '' then
  datagudang2 := ''
  else
  datagudang2 :=  cbbgudang.EditValue;

    s:='SELECT a.tgl_tutup,a.no_ba,a.gudang,a.kode_brg,b.nama_barang,' +
    ' b.merk,a.jumlah,b.satuan' +
    ' FROM	detail_awal_tutup_depo a ' +
    ' INNER JOIN m_barang b ON a.kode_brg = b.kode_brg ' +
    ' WHERE a.gudang = '+quotedstr(datagudang2) +
    ' ORDER BY b.nama_barang asc';

        Qcari.Close;
        Qcari.Connection:=DmModul.con1;
        Qcari.SQL.Text:=s;
        Qcari.Open;

        if(Qcari.RecordCount=0) then
        showmessage('Data awal tidak ditemukan:  ' + cbbgudang.Text );

       dsAwal.DataSet:=Qcari;
       CRDBGrid2.DataSource:=dsAwal;
     
//cari(Qcari,'select * from m_barang WHERE gudang = '+
//QuotedStr(''+datagudang+'')+
//' ORDER BY bidang_brg, nama_barang asc');

CRDBGrid2.Columns.Clear;
DBGridAddColumn(CRDBGrid2,'tgl_tutup','Tanggal',80,1);
DBGridAddColumn(CRDBGrid2,'no_ba','Nomor',160,1);
DBGridAddColumn(CRDBGrid2,'kode_brg','Kode',80,1);
DBGridAddColumn(CRDBGrid2,'nama_barang','Nama',280,1);
DBGridAddColumn(CRDBGrid2,'merk','Merk/tipe',170,2);
DBGridAddColumn(CRDBGrid2,'jumlah','Jumlah',70,2);
DBGridAddColumn(CRDBGrid2,'satuan','Satuan',80,1);
DBGridAddColumn(CRDBGrid2,'gudang','gudang',70,2);

end;



end.
