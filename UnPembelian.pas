unit UnPembelian;

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
  dxSkinXmas2008Blue, StdCtrls, ComCtrls, cxLabel, AdvShapeButton, cxTextEdit,
  cxMaskEdit, cxButtonEdit, Buttons, ExtCtrls, AdvUtil, Grids, AdvObj, BaseGrid,
  AdvGrid,WinSpool,ShellAPI, DB, MemDS, DBAccess, MyAccess;

type
  TFrmPembelian = class(TForm)
    Edkodetransaksi: TAdvShapeButton;
    cxlbljam: TcxLabel;
    cxlbl10: TcxLabel;
    dtp_ed: TDateTimePicker;
    cxlbl1: TcxLabel;
    Label2: TLabel;
    ENamaBarang: TEdit;
    pnl2: TPanel;
    btn1: TSpeedButton;
    cbb_satuan: TComboBox;
    cx_nama_brg: TcxTextEdit;
    edjml: TEdit;
    cxLabel3: TcxLabel;
    cxcari: TcxTextEdit;
    btnsave: TSpeedButton;
    btnBtnHapus: TSpeedButton;
    lbl2: TLabel;
    edt_jml_barang: TcxTextEdit;
    grid1: TAdvStringGrid;
    pnl4: TPanel;
    cxLabel2: TcxLabel;
    cxLabel7: TcxLabel;
    cxButtonEdit1: TcxButtonEdit;
    pnlPnOperasi: TPanel;
    cnama: TcxTextEdit;
    cxLabel1: TcxLabel;
    DateTimePicker1: TDateTimePicker;
    ComboBox2: TComboBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    Ediskper: TEdit;
    cxLabel10: TcxLabel;
    Ediskon: TEdit;
    Etotal2: TEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    btnBaPel: TBitBtn;
    Button1: TButton;
    memo1: TMemo;
    Button2: TButton;
    MyStoredProc1: TMyStoredProc;
    lv1: TListView;
    procedure btnBaPelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cx_nama_brgKeyPress(Sender: TObject; var Key: Char);
    procedure lv1CustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure lv1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lv1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    function Caribrg(nkode_cr: String):string;
  end;

var
  FrmPembelian: TFrmPembelian;

implementation

   uses unMenu, UnModul,UnCarisp,UAwalTahun,UBarangAktif,UUsulan,UImportMasterbarang;

{$R *.dfm}

Procedure Cetak(Const line: string );
Var
  BytesWritten: DWORD;
  hPrinter, DevMod: THandle;
  DocInfo: TDocInfo1; //tipe data record dalam unit WinSpool
  Device, Drv, Port:Array of char;
Begin



//  Printer.PrinterIndex:=-1;
//  Printer.GetPrinter(Device, Drv, Port, DevMod);
  If not WinSpool.OpenPrinter(@Device, hPrinter, nil) Then //tidak pake @ juga bisa
    raise exception.create('Printer tidak ada...');
  Try
    DocInfo.pDocName := 'Struk Penjualan';
    DocInfo.pOutputFile := Nil;
    DocInfo.pDatatype := 'RAW';
    If StartDocPrinter(hPrinter, 1, @DocInfo) = 0 Then
      Abort;
    Try
      If not StartPagePrinter(hPrinter) Then
        Abort;
      try
        //pertimbangkan untuk mencetak dengan Printer.Canvas agar font bisa diganti
        If not WritePrinter(hPrinter, @line[1], Length(line), BytesWritten)
        Then
          Abort;
      Finally
        EndPagePrinter(hPrinter);
      End;
    Finally
      EndDocPrinter(hPrinter);
    End;
  Finally
    WinSpool.ClosePrinter(hPrinter);
  End;
End;
      Procedure CetakSlip;
Const Enter =#13+#10;
begin
  with DmModul.con1 do begin
//    Cetak(Modul.tCompanyNama.AsString+Enter);
//    Cetak(Modul.tCompanyBisnis.AsString+Enter+Enter);
//    tJualBeliDetil.First;
//    While not tJualBeliDetil.Eof do begin
//      Cetak(tJualBeliDetilluNama.AsString+Enter);
//      Cetak(tJualBeliDetilQty.AsString+' x '+
//      tJualBeliDetilHarga.AsString+' = '+
//      tJualBeliDetilclJumlah.AsString+Enter);
//      tJualBeliDetil.Next;
//    end;
    Cetak('--------------------------');
    //Cetak('Jumlah       '+tJualBeliJumlah.AsString+Enter+Enter);
    Cetak('Terima kasih atas kunjungan Anda');
  end;
end;
procedure TFrmPembelian.btnBaPelClick(Sender: TObject);
begin
CetakSlip;
end;

procedure TFrmPembelian.Button1Click(Sender: TObject);
begin
memo1.Clear;
  with memo1.Lines do
  begin
    add('<courier><center><b>BUSANA BANGET</center></b></courier>');
    add('<courier><center>Busana Indah & Trendy</center></courier>');
    add('<center>&&&&&</center>');
//    add('<courier>No. Nota'+#09+'<b>'+dm.TPenjualanKodeFaktur.AsString+'</b></courier>');
//    add('<courier>Tgl'+#09#09+formatdatetime('dd/MMM/yyyy',dm.TPenjualanTglFaktur.AsDateTime)+'</courier>');
//    dm.TPenjualan.DisableControls;
//    dm.TPenjualan.First;
//      while not dm.TPenjualan.Eof do
//      begin
//        add('<courier>'+dm.TPenjualanKodeBarang.AsString+#09#09+dm.TPenjualanJumlah.AsString+#09#09+
//            formatfloat('Rp #,##0',DM.TPenjualanTotal.Value)+'</courier>');
//        dm.TPenjualan.Next;
//      end;
//    dm.TPenjualan.EnableControls;
//    add(#09#09+'Total  :'+#09+label9.Caption);
//    add(#09#09+'Cash   :'+#09+edit2.Text);
//    add(''+#09#09+'Change :'+#09+label10.Caption+'');
    add('<center>&&&&&&&&</center>');
    add('<courier><center><b>TERIMA KASIH</center></b></courier>');
end;
  end;
procedure TFrmPembelian.Button2Click(Sender: TObject);
var
  tgl1,tgl2,ht1:string;
begin
  //tgl1 := FormatDateTime('yyyy/mm/dd',dtp_buat.Date);
  //tgl2 := FormatDateTime('yyyy/mm/dd',dtp_akhir.Date);
  //ht1:='http://192.168.30.7/bidang23/tampil_barang_stok_tgl.php?tgl1='+tgl1+'&tgl2='+tgl2;
   ht1:='http://localhost/struk/struk.php';
   ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);

end;

procedure TFrmPembelian.cx_nama_brgKeyPress(Sender: TObject; var Key: Char);
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
      cx_nama_brg.SetFocus;
      //edjml.SetFocus;
    end;
end;

procedure TFrmPembelian.lv1KeyPress(Sender: TObject; var Key: Char);
begin
if(Key=#13)then
	begin
    try
    Caribrg(cx_nama_brg.Text);
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
  StoredProcName := 'SP_AmbilBarang' ;
  PrepareSQL;
  //ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
  ParamByName('cari').AsString := cx_nama_brg.text;
  Execute;
  cxLabel7.Caption := 'Jumlah Data : ' + inttostr(RecordCount) +' baris ';

  //Open;
  //ShowMessage(SQL.Text);
  lv1.Clear;
  if not IsEmpty then
  begin
     while not Eof do
     begin
      dt:=lv1.Items.Add;
      dt.Caption:=(dmmodul.dataRow(Q6.FieldByName('kd_obat'),'-'));
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('nm_obat'),'-'));
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('sat_obat'),'-'));
      //dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('stok'),'-'));
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



end.
