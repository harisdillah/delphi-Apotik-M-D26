unit Un_bayarsp15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, StdCtrls, cxTextEdit, cxMaskEdit, cxButtonEdit,
  Grids, BaseGrid, AdvGrid, ExtCtrls, Buttons, cxDropDownEdit, cxCalendar,DBTables, DBAccess, MyAccess,
  MemDS, ComCtrls, cxLabel, EXLReportExcelTLB, EXLReportBand, EXLReport,
  AdvObj;

type
  Tfrm_bayar = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    Grid1: TAdvStringGrid;
    lst1: TListBox;
    lst2: TListBox;
    cxcbocv: TcxButtonEdit;
    ednmcv: TEdit;
    btn2: TSpeedButton;
    btn1: TSpeedButton;
    dtp1: TcxDateEdit;
    cbb_pilih: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    cxLabel1: TcxLabel;
    btn3: TSpeedButton;
    cbo_rek: TcxButtonEdit;
    edt_nama: TEdit;
    edtEd_t1: TEdit;
    lbl3: TLabel;
    btn4: TSpeedButton;
    lbl4: TLabel;
    lbl5: TLabel;
    edtEd_t2: TEdit;
    lbl6: TLabel;
    btnexportdpa: TSpeedButton;
    exlrprt1: TEXLReport;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxcbocvPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Grid1CheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure Grid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cbb_pilihChange(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure cbo_rekPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtEd_t1Change(Sender: TObject);
    procedure edtEd_t2Change(Sender: TObject);
    procedure btnexportdpaClick(Sender: TObject);
    procedure exlrprt1BeforeBuild(Sender: TObject);
    procedure exlrprt1GetFieldValue(Sender: TObject; const Field: String;
      var Value: OleVariant);
    procedure Grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: String);
  private
    { Private declarations }
  procedure Tampildata();
  procedure tampildata_02();
  procedure Total;
  public
    { Public declarations }
  end;

var
  frm_bayar: Tfrm_bayar;
  sel_kt_kunci,sel_table : string;
  FCounter : Integer;

implementation
uses UnModul,UF_dbsql ,UnCarisp,UFunctions,UF_setting, Clipbrd;
{$R *.dfm}


//Total
procedure Tfrm_bayar.Total;
var i :integer;
tot_t1,
tot_disk,tot_t2,tot_pjk,tot_bayar:real;
begin
tot_t1:=0;
//tot_disk:=0;
tot_t2:=0;
//tot_pjk:=0;
//tot_bayar:=0;
{
for i:=1 to Grid1.RowCount-1 do
begin
tot_t1 :=+ tot_t1+strtofloat(Grid1.Cells[6,i]);
end;
ed_tjumlah.Text := floattostr(tot_t1);
 }

   for i:=1 to Grid1.RowCount-1 do begin
        tot_t1:=tot_t1+strtofloat(clearDot(Grid1.Cells[4,i]));
      //  tot_disk:=tot_disk+strtofloat(StringGrid1.Cells[7,i]);
      //  tot_t2:=tot_t2+strtofloat(clearDot(Grid1.Cells[5,i]));
   end;
   edtEd_t1.Text:=floattostr(tot_t1);
 //  Ed_disk.Text:=floattostr(tot_disk);
 //  edtEd_t2.Text:=floattostr(tot_t2);

end;


procedure Tfrm_bayar.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_tcv';
  LsvSetCol('No|Nama|',
  '20|230|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('NoVendor');
  FCarisp.LsField.Items.Add('namaperusahaan');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    cxcbocv.Text:=nFieldCari[0];
    cxcbocv.SetFocus;
  end;

end;

procedure Tfrm_bayar.cxcbocvPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_tcv';
  LsvSetCol('No|Nama|',
  '90|230|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('NoVendor');
  FCarisp.LsField.Items.Add('namaperusahaan');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    cxcbocv.text:=nFieldCari[0];
    ednmcv.text:=nFieldCari[1];
    dtp1.SetFocus;
    Tampildata;
  end;

end;

procedure Tfrm_bayar.tampildata();
var
 spbyr: TMyStoredProc;
 i,counter : Integer;
 begin
  Grid1.Cells[0,0]:='No.';
  Grid1.Cells[1,0]:='No. peng';
  Grid1.Cells[2,0]:='No. Faktur';
  Grid1.Cells[3,0]:='No. SP';
  Grid1.Cells[4,0]:='Nilai';
  Grid1.Cells[5,0]:='Nilai SPJ';
  Grid1.Cells[6,0]:='tglbayar';
  Grid1.Cells[7,0]:='tgl verif';

  Grid1.ColWidths[0]:=30;
  Grid1.ColWidths[1]:=100; //1
  Grid1.ColWidths[2]:=140;
  Grid1.ColWidths[3]:=80;
  Grid1.ColWidths[4]:=90;
  Grid1.ColWidths[5]:=90;
  Grid1.ColWidths[6]:=90;
  Grid1.ColWidths[7]:=90;

    spbyr:= TMyStoredProc.Create(nil);
    spbyr.Connection := DmModul.con1;

  try
    spbyr.Close;
    spbyr.StoredProcName := 'sp_obatfakturbayar';
    spbyr.PrepareSQL;
    spbyr.ParamByName('jns').AsString := lbl2.Caption;
    spbyr.ParamByName('cari').AsString := cxcbocv.text;
    spbyr.Execute;

    if spbyr.Eof then
    begin
    ShowMessage('data tidak ada...');
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
    end;
    //isi grid
    counter:=0;
    if  spbyr.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= spbyr.RecordCount+1;
    while not spbyr.Eof do begin
          Inc(counter);
        //cek
		    Grid1.ShowSelection := false;
        for i := 1 to Grid1.RowCount - 1 do
        Grid1.AddCheckBox(1, i, false, false);

          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=spbyr.FieldByName('no_peng').AsString; //No.
          Grid1.Cells[2,counter]:=spbyr.FieldByName('no_faktur').AsString;
          Grid1.Cells[3,counter]:=spbyr.FieldByName('SPK_No').AsString;
          Grid1.Cells[4,counter]:= spbyr.FieldByName('KWITANSI').AsString;
          //Grid1.Cells[4,counter]:= formatRp(spbyr.FieldByName('KWITANSI').AsString);
          Grid1.Cells[5,counter]:= formatRp(spbyr.FieldByName('spj').AsString);
          Grid1.Cells[6,counter]:=spbyr.FieldByName('tglbayar').AsString;

          {
          jml:=StrToInt(StringGrid3.Cells[2,counter]);
          harga:=StrToInt(StringGrid3.Cells[3,counter]);
          total_harga:=jml*harga;
          StringGrid3.Cells[6,counter]:=IntToStr(total_harga);
          }
          spbyr.Next;
    end;

    Total;

    finally
    spbyr.Close;
    end;
end;

procedure Tfrm_bayar.tampildata_02();
var
 spbyr1: TMyStoredProc;
 i,counter : Integer;
 begin
  Grid1.Cells[0,0]:='No.';
  Grid1.Cells[1,0]:='No. peng';
  Grid1.Cells[2,0]:='No. Faktur';
  Grid1.Cells[3,0]:='No. SP';
  Grid1.Cells[4,0]:='Nilai';
  Grid1.Cells[5,0]:='Nilai SPJ';
  Grid1.Cells[6,0]:='tglbayar';
  Grid1.Cells[7,0]:='tgl verif';

  Grid1.ColWidths[0]:=30;
  Grid1.ColWidths[1]:=100; //1
  Grid1.ColWidths[2]:=140;
  Grid1.ColWidths[3]:=80;
  Grid1.ColWidths[4]:=90;
  Grid1.ColWidths[5]:=90;
  Grid1.ColWidths[6]:=90;
  Grid1.ColWidths[7]:=90;

    spbyr1:= TMyStoredProc.Create(nil);
    spbyr1.Connection := DmModul.con1;

  try
    spbyr1.Close;
    spbyr1.StoredProcName := 'sp_obatfaktur_rek16';
    spbyr1.PrepareSQL;
    spbyr1.ParamByName('jns').AsString := lbl2.Caption;
    spbyr1.ParamByName('cari').AsString := cxcbocv.text;
    spbyr1.ParamByName('rekening').AsString := cbo_rek.text;
    spbyr1.Execute;

    if spbyr1.Eof then
    begin
    ShowMessage('data tidak ada...');
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
    end;
    //isi grid
    counter:=0;
    if  spbyr1.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= spbyr1.RecordCount+1;
    while not spbyr1.Eof do begin
          Inc(counter);
        //cek
		    Grid1.ShowSelection := false;
        for i := 1 to Grid1.RowCount - 1 do
        Grid1.AddCheckBox(1, i, false, false);

          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=spbyr1.FieldByName('no_peng').AsString; //No.
          Grid1.Cells[2,counter]:=spbyr1.FieldByName('no_faktur').AsString;
          Grid1.Cells[3,counter]:=spbyr1.FieldByName('SPK_No').AsString;
          //Grid1.Cells[4,counter]:= spbyr.FieldByName('KWITANSI').AsString;
          Grid1.Cells[4,counter]:= formatRp(spbyr1.FieldByName('KWITANSI').AsString);
          Grid1.Cells[5,counter]:= formatRp(spbyr1.FieldByName('spj').AsString);
          Grid1.Cells[6,counter]:=spbyr1.FieldByName('tglbayar').AsString;

          {
          jml:=StrToInt(StringGrid3.Cells[2,counter]);
          harga:=StrToInt(StringGrid3.Cells[3,counter]);
          total_harga:=jml*harga;
          StringGrid3.Cells[6,counter]:=IntToStr(total_harga);
          }
          spbyr1.Next;
    end;
      total;
    finally
    spbyr1.Close;
    end;
end;

procedure Tfrm_bayar.Grid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
  state: boolean;

  begin
 if Grid1.GetCheckBoxState(1, ARow, state) then
  begin
    if state then
      ABrush.Color := Grid1.SelectionColor;
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

procedure Tfrm_bayar.Grid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  case ACol of
    0: HAlign := taCenter;
    2: HAlign := taLeftJustify;
    3,4,5: HAlign := taRightJustify;
  end;
end;

procedure Tfrm_bayar.Grid1CheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
grid1.RowSelect[Arow] := State;
end;

procedure Tfrm_bayar.Grid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
CanEdit := ACol = 1;
end;

procedure Tfrm_bayar.btn2Click(Sender: TObject);
var
  i: Integer;
  state: boolean;
  sql: string;

begin

  if trim(dtp1.Text) ='' then
      begin
         dtp1.SetFocus;
         ShowMessage('Tanggal Bayar Belum di isi...');
         //Result:=False;
         exit
      end;

  if MessageDlg('Data dengan'+#13+#10+' Akan Di Proses'+#13+#10+
        'Pembayaran / spj , ?????',
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
        //updatebayar  : '+sel_kt_kunci+'

          case cbb_pilih.ItemIndex of
        0:sel_Table:='i_pjbt';  //sp
        1:sel_Table:='i_header'; //spk
        2:sel_Table:='kwiu'; //kwi
        3:sel_Table:='kwimanual'; //kwi
        //2:sel_kt_kunci:='3'; //
        //3:sel_kt_kunci:='4'; //
          end;

        SQL := 'update '+sel_table+' set tglbayar = ' +
        //SQL := 'update i_pjbt set tglbayar = ' +
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtp1.Date))+
        ' where no_peng = '+QuotedStr(grid1.Cells[1, i]);
        ExecSQL1(sql);

        lst1.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i]+'-'+grid1.Cells[4, i]);
        //Tampildata;
        except
        lst2.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i] + ' gagal ' );
        end;
      end;
    end;
  end;
  Grid1.Invalidate;
  end;
end;

procedure Tfrm_bayar.FormCreate(Sender: TObject);
begin
cbb_pilih.Items.Add('Surat Pesanan');
cbb_pilih.Items.Add('SPK');
cbb_pilih.Items.Add('Kwitansi');
cbb_pilih.Items.Add('Kwitansi Manual');

RightEdit(edtEd_t1);
RightEdit(edtEd_t2);
end;

procedure Tfrm_bayar.btn1Click(Sender: TObject);
begin
Tampildata;
end;

procedure Tfrm_bayar.cbb_pilihChange(Sender: TObject);
begin
case cbb_pilih.ItemIndex of
        0:sel_kt_kunci:='1';  //gaji pokok
        1:sel_kt_kunci:='2'; //
        2:sel_kt_kunci:='3'; //
        3:sel_kt_kunci:='4'; //
      end;
lbl2.Caption := sel_kt_kunci;
cxcbocv.Text := '';
Tampildata;

end;

procedure Tfrm_bayar.btn3Click(Sender: TObject);
var
  i: Integer;
  state: boolean;
  sql: string;
begin

  if MessageDlg('Data dengan'+#13+#10+' Akan Di Proses'+#13+#10+
        'Dibatalkan Pembayaran / spj , ?????',
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
        //updatebayar  : '+sel_kt_kunci+'

          case cbb_pilih.ItemIndex of
        0:sel_Table:='i_pjbt';  //sp
        1:sel_Table:='i_header'; //spk
        2:sel_Table:='kwiu'; //kwi
        3:sel_Table:='kwimanual'; //kwi
        //cbb_pilih.Items.Add('Kwitansi');
        //2:sel_kt_kunci:='3'; //
        //3:sel_kt_kunci:='4'; //
          end;

        SQL := 'update '+sel_table+' set tglbayar = null where no_peng = '+QuotedStr(grid1.Cells[1, i]);
        ExecSQL1(sql);
        lst1.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i]+'-'+grid1.Cells[4, i]);
        //Tampildata;
        except
        lst2.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i] + ' gagal ' );
        end;
      end;
    end;
  end;
  Grid1.Invalidate;
  end;

end;

procedure Tfrm_bayar.btn4Click(Sender: TObject);
begin
tampildata_02;
end;

procedure Tfrm_bayar.cbo_rekPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_agr';
  LsvSetCol('Rekening|Nama|Jenis|',
  '90|330|120|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('no_a');
  FCarisp.LsField.Items.Add('rek_nama');
  FCarisp.LsField.Items.Add('nm_jns');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    cbo_rek.text:=nFieldCari[0];
    edt_nama.text:=nFieldCari[1];
    edt_nama.SetFocus;
    tampildata_02;
  end;
end;

procedure Tfrm_bayar.edtEd_t1Change(Sender: TObject);
begin
formatRupiah(edtEd_t1);
end;

procedure Tfrm_bayar.edtEd_t2Change(Sender: TObject);
begin
formatRupiah(edtEd_t2);
end;

procedure Tfrm_bayar.btnexportdpaClick(Sender: TObject);
var
  spxlsrekap1: TMyStoredProc;
  begin
  if MessageDlg('Data dengan'+'xx'+#13+#10+'xx'+#13+#10+
        'akan di Cetak excel SPK, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
    //-----
    spxlsrekap1:= TMyStoredProc.Create(nil);
    spxlsrekap1.Connection := DmModul.con1;
  try
    Screen.cursor := crsqlWait;
    spxlsrekap1.Close;
    spxlsrekap1.StoredProcName := 'sp_obatfaktur_rek16';
    spxlsrekap1.PrepareSQL;
    spxlsrekap1.ParamByName('jns').AsString := lbl2.Caption;
    spxlsrekap1.ParamByName('cari').AsString := cxcbocv.text;
    spxlsrekap1.ParamByName('rekening').AsString := cbo_rek.text;
    spxlsrekap1.Execute;
    Screen.cursor := crDefault;
    if spxlsrekap1.Eof then exit;

      exlrprt1.template :=ExtractFilePath(Application.ExeName)
      + '\xls_rpt\export16\'+'detail16_rek_pbf.xlsx';
      //kompxls.template :=ExtractFilePath(Application.ExeName) + '\xls_rpt\'+'import_excel_SPK_v15_detail_sp.xls';
      exlrprt1.Dataset:=spxlsrekap1;
      exlrprt1.TemplSheet :='rek';
      exlrprt1.Show();
  finally
    spxlsrekap1.Close;
  end;
end;

end;

procedure Tfrm_bayar.exlrprt1BeforeBuild(Sender: TObject);

begin
FCounter := 1;
end;

procedure Tfrm_bayar.exlrprt1GetFieldValue(Sender: TObject;
  const Field: String; var Value: OleVariant);
begin
if AnsiCompareText(Field, 'No') = 0 then
  begin
    Value := FCounter;
    Inc(FCounter);
  end;

  //kode rek
  if AnsiCompareText(Field, 'cv') = 0 then
    Value := ednmcv.text;
  //nama rek
  if AnsiCompareText(Field, 'rekening') = 0 then
    Value := edt_nama.text;

  //tgl bulan :
 //   if AnsiCompareText(Field, 'tgl_bulan') = 0 then
 //   Value := FormatDateTime('mmmm-yyyy',dtp_awal.date);

  //tgl 1
 //     if AnsiCompareText(Field, 'tgl1') = 0 then
 //   Value := FormatDateTime('yyyy-mm-dd',dtp_awal.date);

  //tgl 2
  //    if AnsiCompareText(Field, 'tgl2') = 0 then
  //  Value := FormatDateTime('yyyy-mm-dd',dtp_akhir.date);

end;

procedure Tfrm_bayar.Grid1GetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
begin
isFloat := Acol in [4];
case ACol of
  4: Floatformat :='%.0n';
 // 5: Floatformat :='%.0n';
 // 6: Floatformat :='%.0n';
 // 7: Floatformat :='%.0n';
 // 8: Floatformat :='%.0n';
end;
end;

end.
