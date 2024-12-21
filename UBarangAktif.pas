unit UBarangAktif;

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
  AdvUtil;

type
  TFrmAktif = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    dtp_awal: TDateTimePicker;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    dtp_akhir: TDateTimePicker;
    btcari: TBitBtn;
    MyStoredProc1: TMyStoredProc;
    Lbl_nm_jml: TLabel;
    cxCariNama: TcxTextEdit;
    Label1: TLabel;
    Label7: TLabel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    PnOperasi: TPanel;
    tmr1: TTimer;
    Timer1: TTimer;
    Timer2: TTimer;
    cxlbljam: TcxLabel;
    Grid1: TAdvStringGrid;
    lst1: TListBox;
    Label2: TLabel;
    Label4: TLabel;
    cboBidang: TcxLookupComboBox;
    ds1: TMyDataSource;
    Grid2: TAdvStringGrid;
    Label5: TLabel;
    Image1: TImage;
    Image2: TImage;
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
    procedure Grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure eKodeChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer2Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Grid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure BitBtn2Click(Sender: TObject);

    procedure Grid1CheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
    procedure cxCariNamaKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    Procedure KosongTex(Kunci:Boolean);

  public
    { Public declarations }
    Procedure Aturgrid;
    procedure tampildata();
    Procedure Tampil_combo_bidang;
  end;

var
  FrmAktif: TFrmAktif;
  i,counter,hapus_baris,i1,i2,baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	sql,sql1,sql2,sql3,sql4,m1,m2,m3,m4,m5,ppn: String;

implementation

uses UnModul,UFunctions,UF_dbsql,UnCarisp, UnCarisp2, UnMenu;

{$R *.dfm}

procedure TFrmAktif.tampildata();
var
  spdataAwal : TMyStoredProc;
  prcpeg1: TMyStoredProc;
  //spstok : TMyStoredProc;
  i, counter: Integer;
  databidang:string;

begin

// DBlookup databidang
   if cboBidang.Text = '' then
  databidang := ''
  else
  databidang :=  cboBidang.EditValue;


    prcpeg1 := TMyStoredProc.Create(nil);
    prcpeg1.Connection := DmModul.con1;

    //spstok := TMyStoredProc.Create(nil);
    //spstok.Connection := DmModul.con1;


    try

      {
      prcpeg1.Close;
      prcpeg1.StoredProcName := 'SP_peg_aktif';
      prcpeg1.PrepareSQL;
      prcpeg1.ParamByName('cari').AsString := cx_cari_pegawai.Text;
      prcpeg1.Execute;
       }

    prcpeg1.Close;
    prcpeg1.StoredProcName := 'sp_cariawal';
    prcpeg1.PrepareSQL;
    prcpeg1.ParamByName('tgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp_awal.date); //key ba
    prcpeg1.ParamByName('tgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key ba
    prcpeg1.ParamByName('cariGudang').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    prcpeg1.ParamByName('cariBidang').AsString := databidang;
    prcpeg1.ParamByName('cariNamaBarang').AsString := cxCariNama.text;
    prcpeg1.Execute;
    Lbl_nm_jml.Caption := inttostr(prcpeg1.RecordCount) +' record ' + FormatDateTime('yyyy-mm-dd',dtp_awal.date) + ' s/d ' + FormatDateTime('yyyy-mm-dd',dtp_akhir.date);



      if prcpeg1.Eof then
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
      if prcpeg1.RecordCount <= 1 then
        Grid1.RowCount := 2
      else
        Grid1.RowCount := prcpeg1.RecordCount + 1;



      while not prcpeg1.Eof do
      begin




        Inc(counter);
        // cek
        Grid1.ShowSelection := false;
        for i := 1 to Grid1.RowCount - 1 do
          Grid1.AddCheckBox(1, i, false, false);

        Grid1.Cells[0, counter] := IntToStr(counter);
        Grid1.Cells[1, counter] := prcpeg1.FieldByName('kode_brg').AsString; // No.
        Grid1.Cells[2, counter] := prcpeg1.FieldByName('nama_barang').AsString;
        Grid1.Cells[3, counter] := prcpeg1.FieldByName('satuan').AsString;
        Grid1.Cells[4, counter] := prcpeg1.FieldByName('aktif').AsString;
        Grid1.Cells[5, counter] := prcpeg1.FieldByName('stok').AsString;


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

         Grid1.Cells[6, counter] := prcpeg1.FieldByName('bid_nama').AsString;

        {
          jml:=StrToInt(StringGrid3.Cells[2,counter]);
          harga:=StrToInt(StringGrid3.Cells[3,counter]);
          total_harga:=jml*harga;
          StringGrid3.Cells[6,counter]:=IntToStr(total_harga);
          }
        prcpeg1.Next;
      end;
      // Total;
    finally
      prcpeg1.Close;
    end;

end;

 Procedure TFrmAktif.Tampil_combo_bidang;
 var
 q2 : TMyQuery;

begin
//QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
  q2 := TMyQuery.Create(nil);
  try
  q2.Connection := DmModul.con1;
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text := 'Select * from ref_bidang'+
   //' where gudang = ' + QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
   ' where aktif = ' + QuotedStr('1')+
   ' order by kd_bidang';
  //q2.SQL.Text := 'Select nip, CONCAT(gol, " , ", nm_gol) as nm  from r_gol';
  q2.Open;
    if q2.RecordCount > 0 then
  begin
  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString
  ds1.DataSet := q2;
  cboBidang.Properties.ListSource := ds1;
  cboBidang.Properties.ListOptions.ShowHeader := False;
  cboBidang.Properties.ListFieldNames := 'bid_nama';
  cboBidang.Properties.KeyFieldNames := 'kd_bidang';
  end;
   finally
  //  q2.Close;
  //  q2.Free;
  end;

 end;

 Procedure TFrmAktif.KosongTex(Kunci:Boolean);
Begin
  if Kunci=True then
  begin
  {
  eKode.Text  := '';
  eNamaBarang.Text := '';
  eJumlah.Text := '0';
  LabelSatuan.Caption := '-';
   }
  //cxcari.SetFocus;
 end;
end;


Procedure TFrmAktif.Aturgrid;
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
    Grid1.Cells[5, 0] := 'stok';
    Grid1.Cells[6, 0] := 'Bidang';

    Grid1.ColWidths[0] := 30;
    Grid1.ColWidths[1] := 90; // 1
    Grid1.ColWidths[2] := 280;
    Grid1.ColWidths[3] := 120;
    Grid1.ColWidths[4] := 40;
    Grid1.ColWidths[5] := 40;
    Grid1.ColWidths[6] := 220;

end;


procedure TFrmAktif.BitBtn2Click(Sender: TObject);
var
  ht,kodecari:string;
    i: Integer;
    State: Boolean;
    sql: string;
begin
if MessageDlg('Data dengan'+#13+#10+' Akan Di Proses'+#13+#10+
        'tidak aktif , ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
  lst1.Items.Clear;
  for i := 1 to Grid1.RowCount - 1 do
  begin
    if grid1.GetCheckBoxState(1, i, state) then
    begin
      if state then
      begin
        try

        Grid1.SetCheckBoxState(1, i, false);
        sql := 'update m_barang set aktif = 0 where kode_brg = '+QuotedStr(grid1.Cells[1, i]);
        ExecSQL1(sql);
        lst1.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i]+'-'+grid1.Cells[4, i]+ ' sukses ');
      except
        lst1.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i] + ' gagal ' );
        end;
      end;
    end;
  end;
  Grid1.Invalidate;
  end;
  Tampildata;
end;

procedure TFrmAktif.BitBtn3Click(Sender: TObject);
var
  ht,kodecari:string;
    i: Integer;
    State: Boolean;
    sql: string;
begin

if MessageDlg('Data dengan'+#13+#10+' Akan Di Proses'+#13+#10+
        'Aktif , ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
  lst1.Items.Clear;
  for i := 1 to Grid1.RowCount - 1 do
  begin
    if grid1.GetCheckBoxState(1, i, state) then
    begin
      if state then
      begin
        try

        Grid1.SetCheckBoxState(1, i, false);
        sql := 'update m_barang set aktif = 1 where kode_brg = '+QuotedStr(grid1.Cells[1, i]);
        ExecSQL1(sql);
        lst1.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i]+'-'+grid1.Cells[4, i]+ ' sukses ' );
        //Tampildata;
        except
        lst1.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i] + ' aktif gagal ' );
        end;
      end;
    end;
  end;
  Grid1.Invalidate;
  end;
   Tampildata;

end;





procedure TFrmAktif.btcariClick(Sender: TObject);
begin
tampildata();
end;

procedure TFrmAktif.cxCariNamaKeyPress(Sender: TObject; var Key: Char);
begin
if(Key=#13)then
	begin
    try
      tampildata();
    finally
    //cxLookupbrg.SetFocus;
    //cxLookupbrg.OnClick(Sender);
    end;
	end;
end;

procedure TFrmAktif.eKodeChange(Sender: TObject);
var
    q1 : TMyQuery;
begin
 {

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
  }

end;

procedure TFrmAktif.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmAktif:=nil;
Action:=caFree;
end;

procedure TFrmAktif.FormCreate(Sender: TObject);
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
//DtpTanggal.Date := Now;
 Tampil_combo_bidang;
 Aturgrid;






end;


procedure TFrmAktif.Grid1CheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
grid1.RowSelect[Arow] := State;
end;


procedure TFrmAktif.Grid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
CanEdit := ACol = 1;
end;

procedure TFrmAktif.Grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);


begin

   
{

    eKode.Text:=Grid1.Cells[1,AROW];
    eNamaBarang.Text:=Grid1.Cells[2,AROW];
    bGudang.Caption :=Grid1.Cells[3,AROW];
    LabelSatuan.Caption  :=Grid1.Cells[4,AROW];
    eJumlah.Text:=Grid1.Cells[5,AROW];
    PnOperasi.Caption := 'Ubah Data';
 }

end;

procedure TFrmAktif.Grid1DrawCell(Sender: TObject; ACol, ARow: Integer;
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

procedure TFrmAktif.Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin

case ACol of
    0,1: HAlign := taCenter;
    2,6: HAlign := taLeftJustify;
    5: HAlign := taRightJustify;
  end;
end;

procedure TFrmAktif.Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
  var
    State: Boolean;
begin
if Grid1.GetCheckBoxState(1, ARow, State) then
    begin
      if State then
        ABrush.Color := Grid1.SelectionColor;
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


end;
procedure TFrmAktif.Grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
  var IsFloat: Boolean; var FloatFormat: string);
begin
isFloat := Acol in [5];
case ACol of
  5: Floatformat :='%.0n';
end;
end;

procedure TFrmAktif.SpeedButton1Click(Sender: TObject);
begin
  {

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
  }
end;

procedure TFrmAktif.Timer2Timer(Sender: TObject);
begin
cxlbljam.caption:=TimeToStr(Now);
PnOperasi.Font.Color := Trunc(clBLUE*random);
end;

end.
