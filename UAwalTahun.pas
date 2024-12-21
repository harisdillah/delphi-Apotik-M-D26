unit UAwalTahun;

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
  AdvUtil;

type
  TFrmAwal = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    dtp_awal: TDateTimePicker;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    dtp_akhir: TDateTimePicker;
    Grid1: TAdvStringGrid;
    btcari: TBitBtn;
    MyStoredProc1: TMyStoredProc;
    Lbl_nm_jml: TLabel;
    cxCariNama: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    eNamaBarang: TEdit;
    Label11: TLabel;
    eJumlah: TEdit;
    Label9: TLabel;
    DtpTanggal: TDateTimePicker;
    Label7: TLabel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    lSatuan: TLabel;
    Label12: TLabel;
    eKode: TEdit;
    bGudang: TSpeedButton;
    LabelSatuan: TLabel;
    SpeedButton1: TSpeedButton;
    PnOperasi: TPanel;
    tmr1: TTimer;
    Timer1: TTimer;
    Timer2: TTimer;
    cxlbljam: TcxLabel;
    dlgOpen1: TOpenDialog;
    BtnimportAwal: TBitBtn;
    procedure btcariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Grid1DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure Grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure Grid1DblClick(Sender: TObject);
    procedure Grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure eKodeChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer2Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
//    procedure BtnimportAwalClick(Sender: TObject);
  private
    { Private declarations }
    Procedure KosongTex(Kunci:Boolean);

  public
    { Public declarations }
    Procedure Aturgrid;
  end;

var
  FrmAwal: TFrmAwal;
  i,counter,hapus_baris,i1,i2,baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	sql,sql1,sql2,sql3,sql4,m1,m2,m3,m4,m5,ppn: String;

implementation

uses UnModul,UFunctions,UF_dbsql,UnCarisp, UnCarisp2, UnMenu,nuest,ComObj;

{$R *.dfm}

 Procedure TFrmAwal.KosongTex(Kunci:Boolean);
Begin
  if Kunci=True then
  begin

  eKode.Text  := '';
  eNamaBarang.Text := '';
  eJumlah.Text := '0';
  LabelSatuan.Caption := '-';

  //cxcari.SetFocus;
 end;
end;


Procedure TFrmAwal.Aturgrid;
begin
  counter:=0;
  hapus_baris:=0;

  Grid1.ColCount:=7;
  Grid1.RowCount:=1;
  Grid1.FixedRowAlways := True;
  Grid1.Cells[0,0]:='No';
  Grid1.Cells[1,0]:='Kode';
  Grid1.Cells[2,0]:='Nama';
  Grid1.Cells[3,0]:='Gudang';
  Grid1.Cells[4,0]:='Satuan';
  Grid1.Cells[5,0]:='Awal';
  Grid1.Cells[6,0]:='Stok';
  //Grid1.Cells[6,0]:='tgl.awal';
  Grid1.ColWidths[0]:=50;
  Grid1.ColWidths[1]:=90;
  Grid1.ColWidths[2]:=370;
  Grid1.ColWidths[3]:=50;
  Grid1.ColWidths[4]:=120;
  Grid1.ColWidths[5]:=60;
  Grid1.ColWidths[6]:=60;
  //Grid1.ColWidths[6]:=60;
      //rata kanan
  //  RightEdit(ed_dtotal);

end;


procedure TFrmAwal.BitBtn3Click(Sender: TObject);
var
  ht,kodecari:string;

begin

{
  try
      // ubah detail_awal_tutup where kode_brg
      sql1 :='UPDATE detail_awal_tutup SET jumlah='+ QuotedStr(eJumlah.Text)+
      ' where kode_brg='+QuotedStr(eKode.Text);
      ExecSQL1(sql1);

  kodecari := eKode.Text;
  ht:='http://192.168.30.7/gudang22/modul/laporan/lap_bulanan/kartu_barang_pdf_delphi.php?cari='+kodecari;
  ShellExecute(Handle,'open',PChar(ht),'','',SW_NORMAL);

      except
        ShowMessage('Simpan Edit / ubah Gagal :'+ eKode.Text);
        raise;
      end;
 }

 If PnOperasi.Caption='Tambah Data' then
   begin
      try
      // tambah data
      {
      sql1 :='UPDATE detail_awal_tutup SET jumlah='+ QuotedStr(eJumlah.Text)+
      ' where kode_brg='+QuotedStr(eKode.Text);
       }
      sql1:='INSERT INTO detail_awal_tutup (tgl_tutup,tgl_create,gudang,kode_brg,nama,jumlah,satuan)'+
             ' Values('+
             QuotedStr(FormatDateTime('yyyy/mm/dd',DtpTanggal.Date))+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
             QuotedStr(bGudang.Caption)+','+
             QuotedStr(eKode.Text)+','+
             QuotedStr(eNamaBarang.Text)+','+
             QuotedStr(eJumlah.Text)+','+
             //QuotedStr(RealFormat(StrToFloat(Grid1.Cells[4,i1])))+','+// jumlah 0,00
             QuotedStr(LabelSatuan.Caption)+')';
      ExecSQL1(sql1);
      ShowMessage('Simpan Baru Berhasil :'+ eKode.Text);


  kodecari := eKode.Text;
  ht:='http://192.168.30.7:88/cetak_delphi/cetak/kartu_barang_pdf_delphi.php?cari='+kodecari;
  ShellExecute(Handle,'open',PChar(ht),'','',SW_NORMAL);
  KosongTex(True);
      except
        ShowMessage('Simpan Tambah Gagal :'+ eKode.Text);
        raise;
      end;
   end
      else if PnOperasi.Caption='Ubah Data' then
   begin

     try
      // ubah detail_awal_tutup where kode_brg
      sql1 :='UPDATE detail_awal_tutup SET jumlah='+ QuotedStr(eJumlah.Text)+
      ' where kode_brg='+QuotedStr(eKode.Text);
      ExecSQL1(sql1);
      ShowMessage('Simpan Edit Berhasil :'+ eKode.Text);


  kodecari := eKode.Text;
  ht:='http://192.168.30.7:88/cetak_delphi/cetak/kartu_barang_pdf_delphi.php?cari='+kodecari;
  ShellExecute(Handle,'open',PChar(ht),'','',SW_NORMAL);
  KosongTex(True);
      except
           ShowMessage('Simpan Edit / ubah Gagal :'+ eKode.Text);
        raise;
      end;

   end

end;

procedure TFrmAwal.btcariClick(Sender: TObject);
var
  spdataAwal : TMyStoredProc;
  i : integer;
begin
   aturgrid;
   spdataAwal:= TMyStoredProc.Create(nil);
   spdataAwal.Connection := DmModul.con1;
  try
    spdataAwal.Close;
    spdataAwal.StoredProcName := 'sp_cariAwalTahun';
    spdataAwal.PrepareSQL;
    spdataAwal.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp_awal.date); //key ba
    spdataAwal.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key ba
    spdataAwal.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    spdataAwal.ParamByName('cari').AsString := cxCariNama.text;
    spdataAwal.Open;

    Lbl_nm_jml.Caption := inttostr(spdataAwal.RecordCount) +' record ' + FormatDateTime('yyyy-mm-dd',dtp_awal.date) + ' s/d ' + FormatDateTime('yyyy-mm-dd',dtp_akhir.date);


    if spdataAwal.Eof then
    begin
    ShowMessage('data tanggal yang dicari tidak ada :'+ FormatDateTime('yyyy-mm-dd',dtp_awal.date) + ' s/d ' + FormatDateTime('yyyy-mm-dd',dtp_akhir.date) +''  );
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
      if  spdataAwal.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= spdataAwal.RecordCount+1;


    while not spdataAwal.Eof do begin
          Inc(counter);   //IntToStr(counter);
          Grid1.Cells[0,counter]:=IntToStr(counter); //No.
          Grid1.Cells[1,counter]:=spdataAwal.FieldByName('kode_brg').AsString;
          Grid1.Cells[2,counter]:=spdataAwal.FieldByName('nama_barang').AsString;
          Grid1.Cells[3,counter]:=spdataAwal.FieldByName('gudang').AsString;
          Grid1.Cells[4,counter]:=spdataAwal.FieldByName('satuan').AsString;
          Grid1.Cells[5,counter]:=spdataAwal.FieldByName('jumlah').AsString;
          Grid1.Cells[6,counter]:=spdataAwal.FieldByName('stok').AsString;
         // Grid1.Cells[6,counter]:=spdataAwal.FieldByName('tgl_tutup').AsDateTime;

          {
          grid2.ShowSelection := True;
          for i := 1 to grid2.RowCount - 1 do
          grid2.AddCheckBox(4, i, false, false);
           }
          spdataAwal.Next;
    end;

    finally
    spdataAwal.Close;
    end;

end;

//procedure TFrmAwal.BtnimportAwalClick(Sender: TObject);
//
//var
//Fields,Types: TStringList;
//datafile : string;
//
//begin
//
//
//
//
//    if messagedlg('Import Data Awal dibackup'+#13#10+
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
////  if uDBXls.Import(datafile, 'awal', 'detail_awal_tutup_depo', Fields, Types) then
////    showmessage('Sukses Import awal stok')
////  else showmessage('Gagal Import awal stok');
////   Screen.cursor := crDefault;
////  end;
//   //TampilData;
//end;
//end;

procedure TFrmAwal.eKodeChange(Sender: TObject);
var
    q1 : TMyQuery;
begin
 q1 := TMyQuery.Create(nil);
    q1.Connection := DmModul.con1;

    try
      q1.Active := false;
      q1.SQL.Clear;
      q1.SQL.Text :='select * from detail_awal_tutup where kode_brg='+QuotedStr(eKode.Text)+'';
      q1.Open;

       //tanggal SPK
    if VarIsNull(q1['tgl_tutup']) then
      begin
    DtpTanggal.ShowCheckbox :=true;
    DtpTanggal.Checked := false;
    DtpTanggal.Color := clred;
    end
   else
      begin
      DtpTanggal.Date:=q1.FieldByName('tgl_tutup').AsDateTime;
      DtpTanggal.Color := clMenu;
    end;


    //DtpTanggal.date:=q1.FieldByName('tgl_tutup').AsDateTime;


    finally
    q1.Close;
    q1.Free;
   end;


end;

procedure TFrmAwal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmAwal:=nil;
Action:=caFree;
end;

procedure TFrmAwal.FormCreate(Sender: TObject);
  var
  qsetting : TMyQuery;
begin

  qsetting := TMyQuery.Create(nil);
  qsetting.Connection := DmModul.con1;
  try
  qsetting.Active := false;
  qsetting.SQL.Clear;
  qsetting.SQL.Text :='SELECT * FROM setting WHERE aktif=1';
  qsetting.Open;

  if qsetting.RecordCount > 0 then
  begin

  dtp_awal.date:=qsetting.FieldByName('tglawal').AsDateTime;
     end
  else
    begin
    ShowMessage( 'data Setting  Tidak ADA ');
    end;



  finally
  qsetting.Close;

  end;

//dtp_Awal.Date := Now;
dtp_Akhir.Date := Now;
DtpTanggal.Date := Now;







end;

procedure TFrmAwal.Grid1DblClick(Sender: TObject);
begin
    {
    Grid1.Cells[0,0]:='No';
    Grid1.Cells[1,0]:='Kode';
    Grid1.Cells[2,0]:='Nama';
    Grid1.Cells[3,0]:='gudang';
    Grid1.Cells[4,0]:='satuan';
    Grid1.Cells[5,0]:='jumlah';
    }


    //btnnoreg.Style.Color:=clcxLightGray;

end;

procedure TFrmAwal.Grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);


begin

   


    eKode.Text:=Grid1.Cells[1,AROW];
    eNamaBarang.Text:=Grid1.Cells[2,AROW];
    bGudang.Caption :=Grid1.Cells[3,AROW];
    LabelSatuan.Caption  :=Grid1.Cells[4,AROW];
    eJumlah.Text:=Grid1.Cells[5,AROW];
    PnOperasi.Caption := 'Ubah Data';


    //cxNoBbk.Text:=q1.FieldByName('no_bbk').AsString;
    //:= dataRow(qd2.FieldByName('no'),'');



end;

procedure TFrmAwal.Grid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
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

procedure TFrmAwal.Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin

{
  Grid1.Cells[0,0]:='No';
  Grid1.Cells[1,0]:='Kode';
  Grid1.Cells[2,0]:='Nama';
  Grid1.Cells[3,0]:='gudang';
  Grid1.Cells[4,0]:='satuan';
  Grid1.Cells[5,0]:='jumlah';
}


case ACol of
    0,1: HAlign := taCenter;
    2: HAlign := taLeftJustify;
    5,6: HAlign := taRightJustify;
  end;
end;

procedure TFrmAwal.Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin

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

    // baris Kolom 6
    if ((ACol = 6) and (ARow > 0)) then
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
end;
procedure TFrmAwal.Grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
  var IsFloat: Boolean; var FloatFormat: string);
begin
isFloat := Acol in [5];
case ACol of
  5: Floatformat :='%.0n';
end;
end;

procedure TFrmAwal.SpeedButton1Click(Sender: TObject);
begin
  FCarisp2:=TFcarisp2.Create(Application);
  FCarisp2.Label4.Caption :='sp_namabarang';
  FCarisp2.EGudang.Text := FMenu.dxStatusBar1.Panels[2].Text;

  LsvSetCol('Kode Brg|Nama|Satuan|Gudang|',
  '140|370|110|120|',FCarisp2.LsCari);
  FCarisp2.LsField.Items.Clear;
  FCarisp2.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp2.LsField.Items.Add('kode_brg');
  FCarisp2.LsField.Items.Add('nama_barang');
  FCarisp2.LsField.Items.Add('satuan');
  FCarisp2.LsField.Items.Add('gudang');
  //FCarisp.LsField.Items.Add('nama');
  FCarisp2.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    eKode.Text:=nFieldCari[0];
    eNamaBarang.Text:=nFieldCari[1];
    LabelSatuan.Caption:=nFieldCari[2];
    bGudang.Caption :=nFieldCari[3];
    PnOperasi.Caption := 'Tambah Data';
    eJumlah.SetFocus;

  end;
end;

procedure TFrmAwal.Timer2Timer(Sender: TObject);
begin
cxlbljam.caption:=TimeToStr(Now);
PnOperasi.Font.Color := Trunc(clBLUE*random);
end;

end.
