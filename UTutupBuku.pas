unit UTutupBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, CRGrid, DB, DBAccess,
  MyAccess, MemDS,nuest, AdvObj, BaseGrid, AdvGrid, Buttons,ShellAPI;

type
  TFrmTutupBuku = class(TForm)
    btnTampil: TButton;
    Label3: TLabel;
    dtpAwal: TDateTimePicker;
    Label4: TLabel;
    dtpAkhir: TDateTimePicker;
    SpTampil: TMyStoredProc;
    ds1: TMyDataSource;
    LJumlahData: TLabel;
    Grid1: TAdvStringGrid;
    btnBtnUbah1: TSpeedButton;
    Label1: TLabel;
    dtpTutup: TDateTimePicker;
    EGudang: TEdit;
    SpeedButton9: TSpeedButton;
    procedure btnTampilClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure btnBtnUbah1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTutupBuku: TFrmTutupBuku;

implementation

uses UnModul,UF_dbsql;

{$R *.dfm}

procedure TFrmTutupBuku.btnTampilClick(Sender: TObject);
var
  spdata : TMyStoredProc;
  counter,i2 : integer;
begin
   spdata:= TMyStoredProc.Create(nil);
   spdata.Connection := DmModul.con1;

  Grid1.ColCount:=9;
  Grid1.RowCount:=1;
  Grid1.FixedRowAlways := True;

  Grid1.Cells[0,0]:='No';
  Grid1.Cells[1,0]:='Kode';
  Grid1.Cells[2,0]:='Nama barang';
  Grid1.Cells[3,0]:='Satuan';
  Grid1.Cells[4,0]:='Awal';
  Grid1.Cells[5,0]:='Masuk';
  Grid1.Cells[6,0]:='Keluar';
  Grid1.Cells[7,0]:='Stok';
  Grid1.Cells[8,0]:='gudang';

  Grid1.ColWidths[0]:=30;
  Grid1.ColWidths[1]:=90;
  Grid1.ColWidths[2]:=250;
  Grid1.ColWidths[3]:=100;
  Grid1.ColWidths[4]:=50;
  Grid1.ColWidths[5]:=50;
  Grid1.ColWidths[6]:=80;
  Grid1.ColWidths[7]:=80;
  Grid1.ColWidths[8]:=80;



  try
    Screen.cursor := crsqlWait;
    spdata.Close;
    spdata.StoredProcName := 'SPDataHarian';
    spdata.PrepareSQL;
    spdata.ParamByName('tgl1').AsString := FormatDateTime('yyyy-mm-dd',dtpAwal.date); //key ba
    spdata.ParamByName('tgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtpAkhir.date); //key ba
    spdata.ParamByName('gudang').AsString := EGudang.text;
    //spdata.ParamByName('tgl2').AsString := tgl2;
    //spdata.ParamByName('cari').AsString := EdNokwi.text;
    spdata.open;
    //datasource1.DataSet:=Qdata;
    //ds1.DataSet := spdata;
    //Grid.DataSource := ds1;


    
if spdata.Eof then exit;

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
    end;

    counter:=0;
    if  spdata.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= spdata.RecordCount+1;

      LJumlahData.Caption := inttostr(spdata.RecordCount) +' record ';

    while not spdata.Eof do begin
          Inc(counter);
          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=dataRow(spdata.FieldByName('kode_brg'),'-');
          Grid1.Cells[2,counter]:=dataRow(spdata.FieldByName('nama_barang'),'-');
          Grid1.Cells[3,counter]:=dataRow(spdata.FieldByName('satuan'),'-');
          Grid1.Cells[4,counter]:=dataRow(spdata.FieldByName('awal'),'0');
          Grid1.Cells[5,counter]:=dataRow(spdata.FieldByName('masuk'),'0');
          Grid1.Cells[6,counter]:=dataRow(spdata.FieldByName('keluar'),'0');
          Grid1.Cells[7,counter]:=dataRow(spdata.FieldByName('stok'),'0');
          Grid1.Cells[8,counter]:=dataRow(spdata.FieldByName('gudang'),'0');
          spdata.Next;
    end;

      Screen.cursor := crDefault;
    finally
    spdata.Close;
    spdata.Free;
    end;
end;

procedure TFrmTutupBuku.FormCreate(Sender: TObject);
begin
dtpAwal.Date := Now;
dtpAkhir.Date := Now;
dtpTutup.Date := Now;
end;

procedure TFrmTutupBuku.Grid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
//warna grid

if ((ACol = 1) and (ARow > 0)) then
  begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

if ((ACol = 2) and (ARow > 0)) then
  begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

if ((ACol = 3) and (ARow > 0)) then
  begin
    ABrush.Color := clLime;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

  {
  if ((ACol = 6) and (ARow > 0)) then
  begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;
  }

    if ((ACol = 4) and (ARow > 0)) then
  begin

   if (Grid1.Cells[ACol, ARow] = '0')
    then
    begin
    ABrush.Color := clRed;
    AFont.Color := clBlue;
    //AFont.Style := [fsBold];
  end;

  end;


  if ((ACol = 5) and (ARow > 0)) then
  begin

   if (Grid1.Cells[ACol, ARow] = '0')
    then
    begin
    ABrush.Color := clRed;
    AFont.Color := clBlue;
    //AFont.Style := [fsBold];
  end;

  end;

    if ((ACol = 6) and (ARow > 0)) then
  begin

   if (Grid1.Cells[ACol, ARow] = '0')
    then
    begin
    ABrush.Color := clRed;
    AFont.Color := clBlue;
    //AFont.Style := [fsBold];
  end;

  end;

  // baris Kolom 7
    if ((ACol = 7) and (ARow > 0)) then
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




procedure TFrmTutupBuku.SpeedButton9Click(Sender: TObject);
var
  tgl1xlsb,tgl2xlsb,ht1xlsb,gudang:string;
begin
  tgl1xlsb := FormatDateTime('yyyy/mm/dd',dtpAwal.Date);
  tgl2xlsb := FormatDateTime('yyyy/mm/dd',dtpAkhir.Date);
  gudang := EGudang.text;
  ht1xlsb:='http://192.168.30.7:88/laporan/tutup_tahun.php?tgl1='+tgl1xlsb+'&tgl2='+tgl2xlsb+'&gudang='+gudang;
  ShellExecute(Handle,'open',PChar(ht1xlsb),'','',SW_NORMAL);
end;

procedure TFrmTutupBuku.Grid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    0: HAlign := taCenter;
    1,2: HAlign := taLeftJustify;
    4,5,6,7: HAlign := taRightJustify;
  end;
end;

procedure TFrmTutupBuku.btnBtnUbah1Click(Sender: TObject);
var
sql,sql2,tglspk,tglfaktur:string;
i1,i2,baris :Integer;
begin

  if messagedlg('Stok Tutup Awal'+#13#10+
      'Mohon di Cek Dulu Tgl '+
      #13#10+'dilanjutkan?', mtConfirmation, [mbyes, mbNo], 0) = mryes then
      begin
        //simpan Detail
       sql:= 'delete from detail_awal_tutup'+
        ' where tgl_tutup='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTutup.Date));
        ExecSQL1(sql);



        //simpan Detail
      try
        for i1:=1 to Grid1.RowCount-1 do begin
             sql2:='INSERT INTO detail_awal_tutup (tgl_tutup,no,kode_brg,nama,jumlah,satuan,gudang)'+
             ' Values('+
             QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTutup.Date))+','+
             QuotedStr(Grid1.Cells[0,i1])+','+
             QuotedStr(Grid1.Cells[1,i1])+','+
             QuotedStr(Grid1.Cells[2,i1])+','+
             QuotedStr(Grid1.Cells[7,i1])+','+
             QuotedStr(Grid1.Cells[3,i1])+','+
             QuotedStr(Grid1.Cells[8,i1])+')';
             ExecSQL1(sql2);
             end;


    // sql3 :='Update h_penjualan set terbilang= tcase(terbilang)'+
    //         ' where no_transaksi='+QuotedStr(btnnoreg.Text);
    //    ExecSQL1(sql3);

          //   m5 := 'Ubah Nama OK';
     // KosongTex(True);
      //--cetak
    //  bayar_tran;

      ShowMessage('Simpan Detail ok :'+ FormatDateTime('yyyy/mm/dd',dtpTutup.Date));
     except
      ShowMessage('Tutup buku gagal ok :'+ FormatDateTime('yyyy/mm/dd',dtpTutup.Date));
        //m1 := 'simpan Baru Gagal';
        raise;
      end;


      end;

  {
  if EPenyedia.Text <> '' then
  begin


     if EPetugas.Text <> '' then
  begin


  end
   else
      begin
        MessageDlg('Petugas HARUS DIISI',mtError,[mbOK],0);
        btncrPetugas.SetFocus;
      end
      end
  else
  begin
    MessageDlg('Penyedia HARUS DIPILIH',mtError,[mbOK],0);
    BtncrPenyedia.SetFocus;
  end;
  }
end;

end.
