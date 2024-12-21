unit UnOpname;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, AdvUtil, Grids, AdvObj, BaseGrid, AdvGrid, ComCtrls,
  cxTextEdit, AdvShapeButton, cxLabel, Buttons, ExtCtrls, DB, DBAccess,
  MyAccess, MemDS, StdCtrls, dxSkinsCore, DBGrids, CRGrid, cxCheckBox,ShellAPI;

type
  TFrmOpname = class(TForm)
    pnl1: TPanel;
    btnCariFaktur: TSpeedButton;
    SpeedButton7: TSpeedButton;
    cxlbl10: TcxLabel;
    pnl2: TPanel;
    grid1: TAdvStringGrid;
    MyQ1: TMyQuery;
    MyDs1: TMyDataSource;
    dtp_awal: TDateTimePicker;
    cxlbl2: TcxLabel;
    dtp_akhir: TDateTimePicker;
    cxLabel1: TcxLabel;
    dtpTglOpname: TDateTimePicker;
    btsimpan: TBitBtn;
    lblJmlData: TLabel;
    qAct: TMyQuery;
    BtnTampilData: TSpeedButton;
    MyQCari: TMyQuery;
    Panel1: TPanel;
    CRDBGrid1: TCRDBGrid;
    cxLabel2: TcxLabel;
    BitBtn3: TBitBtn;
    MyQcrtgl: TMyQuery;
    dscrtgl: TMyDataSource;
    cxnamatanggal: TcxLabel;
    BtnAktifOpname: TBitBtn;
    cxCheckBoxfilter: TcxCheckBox;
    edcaridata: TEdit;
    btnExportStok: TBitBtn;
    procedure grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure btnCariFakturClick(Sender: TObject);
    procedure grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure btsimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnTampilDataClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
    procedure BtnAktifOpnameClick(Sender: TObject);
    procedure cxCheckBoxfilterClick(Sender: TObject);
    procedure edcaridataChange(Sender: TObject);
    procedure btnExportStokClick(Sender: TObject);
  private
    { Private declarations }
    Procedure aturgrid1;
    procedure tampilProsesopname;
    procedure RunSQL(_SQL: string; isOpen: boolean);
    function  GenCode: string;
    procedure SPTampilOpname;
    procedure TampilBtnTGLcari;
  public
    { Public declarations }
  end;

var
  FrmOpname: TFrmOpname;
  FCounter :integer;
  tambah: boolean;
  i1,i2,baris :Integer;
  i,counter,hapus_baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	sql,sql1,sql2,sql3,m1,m2,m3,m4,m5,ppn: String;
  qty,jml,harga,total_harga,disk,total2 : real ; // :integer;
  hrgd,n_t1d,ddisk,n_diskd,n_t2d,n_pajakd,JML_BRG,Ntotal :real;
  a1,a2,a3,a4,a5 ,a6 : real;
  cek_inputan:boolean;
  tgl1,tgl2,ht1:string;
  iRow: integer;  //variabel indikator jumlah baris

implementation
uses UnModul,UFunctions,UF_dbsql,UnCarisp, UnCarisp2, UnMenu,uglobal,nuest;

{$R *.dfm}

procedure TFrmOpname.RunSQL(_SQL: string; isOpen: boolean);
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

function TFrmOpname.GenCode: string;
CONST
zero = '0000';
var
strTemp: string;
begin
//Format Nota adalah N-0001

//liat no.nota terakhir dari tb_pinjam
//RunSQL('SELECT idpinjam FROM tb_pinjam ORDER BY idpinjam DESC LIMIT 1');

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

Procedure TFrmOpname.aturgrid1;
//var counter,hapus_baris : Integer;
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
  Grid1.Cells[4,0]:='Stok';
  Grid1.Cells[5,0]:='Stok Fisik';
  Grid1.Cells[6,0]:='Satuan';
  //Grid1.Cells[6,0]:='Stok';
  //Grid1.Cells[6,0]:='tgl.awal';
  Grid1.ColWidths[0]:=50;
  Grid1.ColWidths[1]:=140;
  Grid1.ColWidths[2]:=370;
  Grid1.ColWidths[3]:=50;
  Grid1.ColWidths[4]:=60;
  Grid1.ColWidths[5]:=60;
  Grid1.ColWidths[6]:=120;

//  //clear grid
  //StringGrid1.ClearRows(1, StringGrid1.RowCount - 1);
  //rata kanan
  //RightEdit(ed_dtotal);



end;

procedure TFrmOpname.BitBtn3Click(Sender: TObject);
begin
TampilBtnTGLcari;
end;

procedure TFrmOpname.BtnAktifOpnameClick(Sender: TObject);
var qv : TMyQuery;

begin


qv := TMyQuery.Create(nil);
       qv.Connection := DmModul.con1;
    qv.SQL.Clear;
    qv.SQL.Text := 'Select * from setting_tanggal where tgl_awal = '+QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date))+'';
    qv.Open;
    if qv.RecordCount > 0 then
      begin

        if MessageDlg('Tanggal Opname Sudah di setting'+#13+#10+FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date)+#13+#10+
        'Hapus Sementara, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
      sql:= 'delete from setting_tanggal'+
        ' where tgl_awal='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date));
        ExecSQL1(sql);

       end;
        exit;
      end;

if MessageDlg('tanggal Opname' + FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date)
         ,
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin



       try

       sql := 'insert into setting_tanggal (tgl_awal,tgl_create,'+
        'ket) Values('+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date))+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
        QuotedStr('OPname')+')';
        ExecSQL1(sql);
       {
        sql1 :='Update setting_tanggal set ' +
        'tgl_awal='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date))+
        ',tgl_create='+QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now));
        ExecSQL1(sql1);
        }


          ShowMessage('Seting Tanggal Sukses :'+ FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date) );
      except
        ShowMessage('Setting Gagal :'+ FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date));
        raise;
      end;

       end;
        exit;
      end;


procedure TFrmOpname.btnCariFakturClick(Sender: TObject);
begin
//tampilProsesopname;
SPTampilOpname;
end;

procedure TFrmOpname.btnExportStokClick(Sender: TObject);
var
  tgl1,tgl2,ht1:string;
begin
  tgl1 := FormatDateTime('yyyy/mm/dd',dtp_awal.Date);
  tgl2 := FormatDateTime('yyyy/mm/dd',dtp_akhir.Date);
  ht1:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/masterstokxls.php?tgl1='+tgl1+'&tgl2='+tgl2;
  ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);
  //ProsesKartuAll;

end;

procedure TFrmOpname.BtnTampilDataClick(Sender: TObject);

var
  spdataEdit : TMyStoredProc;
  i2 : integer;



begin

spdataEdit:= TMyStoredProc.Create(nil);
spdataEdit.Connection := DmModul.con1;
Screen.cursor := crsqlWait;


try

//tgl1 := FormatDateTime('yyyy/mm/dd',dtp_awal.Date);
//tgl2 := FormatDateTime('yyyy/mm/dd',dtp_akhir.Date);
aturgrid1;
spdataEdit.Close;
    spdataEdit.StoredProcName := 'SP_AmbilOpname';
    spdataEdit.PrepareSQL;
    spdataEdit.ParamByName('tglCari').AsString := FormatDateTime('yyyy-mm-dd',dtpTglOpname.date); //key ba
//    spdataAwal.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key ba
    //spdataAwal.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    //spdataAwal.ParamByName('cari').AsString := cxCariNama.text;
    spdataEdit.Open;

   lblJmlData.Caption := inttostr(spdataEdit.RecordCount) +' record ' + FormatDateTime('yyyy-mm-dd',dtpTglOpname.date) ;


    if spdataEdit.Eof then
    begin
    ShowMessage('data tanggal yang dicari tidak ada :'+ FormatDateTime('yyyy-mm-dd',dtpTglOpname.date));
    Screen.cursor := crDefault;
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
      if  spdataEdit.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= spdataEdit.RecordCount+1;

    while not spdataEdit.Eof do begin
          Inc(counter);   //IntToStr(counter);
          Grid1.Cells[0,counter]:=IntToStr(counter); //No.
          Grid1.Cells[1, counter] := spdataEdit.FieldByName('kode_brg').AsString; // No.
          Grid1.Cells[2, counter] := spdataEdit.FieldByName('nama').AsString;
          Grid1.Cells[3, counter] := spdataEdit.FieldByName('rak').AsString;
          Grid1.Cells[4, counter] := spdataEdit.FieldByName('jumlah').AsString;
          Grid1.Cells[5, counter] := spdataEdit.FieldByName('jml_opname').AsString;
          Grid1.Cells[6, counter] := spdataEdit.FieldByName('satuan').AsString;
          spdataEdit.Next;
    end;

 Screen.cursor := crDefault;
finally
  spdataEdit.Close;
end;
end;

procedure TFrmOpname.btsimpanClick(Sender: TObject);
var
i: integer;
_SQL: string;
begin

//munculkan nota
//edNota.Text := GenCode;

if MessageDlg('Anda yakin ingin Proses opname ...?'+FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date),mtConfirmation,[mbYes,mbNo],0)=mryes then
begin

    _SQL := 'Delete From detail_opname WHERE tgl_opname = '
    + QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date)) + '';
    RunSQL(_SQL,False); //eksekusi SQL
    ShowMessage('Data Hapus data Sementara Opname berhasil Disimpan'+ FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date));
  try
//simpan ke tabel tb_detpinjam dlu ya

for i:=1 to grid1.RowCount - 1 do  //ini nih cara nyimpen massal yang sederhana, pake looping aja
  begin                             //jadi disimpen per baris gitu, inget mulai baris 1 pada stringgrid karena baris 0 adalah judul kolom!!!
    _SQL := 'INSERT INTO detail_opname(no,kode_brg,tgl_opname,tgl_create,nama,rak,jumlah,jml_opname,satuan)VALUES(' + QuotedStr(grid1.Cells[0,i]) + ','
    + QuotedStr(grid1.Cells[1,i]) + ','
    + QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date)) + ','
    + QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','
    + QuotedStr(grid1.Cells[2,i]) + ','
    + QuotedStr(grid1.Cells[3,i]) + ','
    + QuotedStr(grid1.Cells[4,i]) + ','
    + QuotedStr(grid1.Cells[5,i]) + ','
    + QuotedStr(grid1.Cells[6,i]) + ')';
    RunSQL(_SQL,False); //eksekusi SQL
  end;
ShowMessage('Data berhasil Tanggal Opname Disimpan'+ FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date));
  iRow := 2;
with grid1 do
  begin
  Aturgrid1;
  end;

  except
  Application.MessageBox('Data gagal disimpan dengan sempurna!!!','Peringatan',MB_OK or MB_ICONERROR);
end;

end;
end;

procedure TFrmOpname.CRDBGrid1DblClick(Sender: TObject);
var kodecari : string;
 //fs: TFormatSettings;

begin
if MyQcrtgl.RecordCount<=0 then exit;
  kodecari := MyQcrtgl['tgl_opname'];
  cxnamatanggal.Caption :=kodecari ;
//  fs:FormatSettings;
//  fs.LongDateFormat :='yyyy-mm-dd';

  dtpTglOpname.Date := MyQcrtgl['tgl_opname'];
  BtnTampilDataClick(Sender);

end;

procedure TFrmOpname.cxCheckBoxfilterClick(Sender: TObject);
begin
      if cxCheckBoxfilter.Checked   THEN
      BEGIN
      edcaridata.Visible := True;
      END
    else
    BEGIN
     edcaridata.Visible := False;
  end;
end;

procedure TFrmOpname.edcaridataChange(Sender: TObject);
begin
if cxCheckBoxfilter.checked then
    Grid1.NarrowDown(edcaridata.Text,2)
  else
    Grid1.NarrowDown(edcaridata.Text);
end;

procedure TFrmOpname.FormCreate(Sender: TObject);
begin
dtp_awal.date := now;
dtp_akhir.date := now;
dtpTglOpname.date := now;
end;

procedure TFrmOpname.grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    0: HAlign := taCenter;
    1,2,6: HAlign := taLeftJustify;
    4,5: HAlign := taRightJustify;
  end;
end;

procedure TFrmOpname.grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
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

    if (Grid1.Cells[ACol, ARow] < '0') then
      begin
        ABrush.Color := clWebOrangeRed;
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

    // baris Kolom 5
    if ((ACol = 5) and (ARow > 0)) then
    begin

    if (Grid1.Cells[ACol, ARow] < '0') then
      begin
        ABrush.Color := clWebOrangeRed;
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
 {
    if ((ACol = 6) and (ARow > 0)) then
  begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;
  }
end;

procedure TFrmOpname.grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
  var IsFloat: Boolean; var FloatFormat: string);
begin
isFloat := Acol in [4,5];
case ACol of
  4: Floatformat :='%.0n';
  5: Floatformat :='%.0n';
end;
end;

procedure TFrmOpname.grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  input_box : string;
begin
hapus_baris:=ARow;
cek_baris:=Grid1.Cells[1,arow];

if not (Grid1.Cells[ACol,ARow]='') then begin

   //jumlah brg
    if ACol=5 then  begin
    if not (Grid1.RowCount=1) then begin
       input_box:=InputBox('jml','Fisik Opname : '+Grid1.Cells[2,arow]+' -> '+Grid1.Cells[6,arow],Grid1.Cells[5,arow]);
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

       Grid1.Cells[ACol,ARow]:=FloatToStr(qty);
      //    jml:=StrToFloat(Grid1.Cells[4,arow]);
      //harga:=StrToFloat(Grid1.Cells[5,arow]);
      //total_harga:=jml*harga;
      //Grid1.Cells[6,arow]:=FloatToStr(total_harga);


        //  Total;
      end;
      end;
 end;

end;


procedure TFrmOpname.SPTampilOpname;
var
  spdataAwal : TMyStoredProc;
  i : integer;
begin
   aturgrid1;
   spdataAwal:= TMyStoredProc.Create(nil);
   spdataAwal.Connection := DmModul.con1;
   Screen.cursor := crsqlWait;
  try
    spdataAwal.Close;
    spdataAwal.StoredProcName := 'sp_stoktglnama';
    spdataAwal.PrepareSQL;
    spdataAwal.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp_awal.date); //key ba
    spdataAwal.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key ba
    //spdataAwal.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    //spdataAwal.ParamByName('cari').AsString := cxCariNama.text;
    spdataAwal.Open;

   lblJmlData.Caption := inttostr(spdataAwal.RecordCount) +' record ' + FormatDateTime('yyyy-mm-dd',dtp_awal.date) + ' s/d ' + FormatDateTime('yyyy-mm-dd',dtp_akhir.date);


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
          Grid1.Cells[1, counter] := spdataAwal.FieldByName('kd_obat').AsString; // No.
          Grid1.Cells[2, counter] := spdataAwal.FieldByName('nm_obat').AsString;
          Grid1.Cells[3, counter] := spdataAwal.FieldByName('idrak').AsString;
          Grid1.Cells[4, counter] := spdataAwal.FieldByName('StokAkhir').AsString;
          Grid1.Cells[5, counter] := '0';
          Grid1.Cells[6, counter] := spdataAwal.FieldByName('sat_obat').AsString;
          spdataAwal.Next;
    end;
    Screen.cursor := crDefault;
    finally
    spdataAwal.Close;
    end;

  end;

procedure TFrmOpname.tampilProsesopname;
begin

try

tgl1 := FormatDateTime('yyyy/mm/dd',dtp_awal.Date);
tgl2 := FormatDateTime('yyyy/mm/dd',dtp_akhir.Date);
aturgrid1;
Screen.cursor := crsqlWait;


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
              '      LEFT JOIN	                           ' +
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
        Grid1.Cells[4, counter] := MyQ1.FieldByName('StokAkhir').AsString;
        Grid1.Cells[5, counter] := '0';
        Grid1.Cells[6, counter] := MyQ1.FieldByName('sat_obat').AsString;
        MyQ1.Next;
      end;
 Screen.cursor := crDefault;
finally
  MyQ1.Close;
end;
end;

procedure TFrmOpname.TampilBtnTGLcari;
var
//qvr : TMyQuery;
cr_SQL : string;
//ds1my : TMyDataSource;
begin

//qvr := TMyQuery.Create(nil);
//ds1my := TMyDataSource.Create(nil);


cr_SQL := 'Select tgl_opname From detail_opname GROUP BY tgl_opname';
//WHERE tgl_opname = '
//    + QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date)) + 'GROUP BY tgl_opname';
    //RunSQL(cr_SQL,False); //eksekusi SQL
//    ShowMessage('Data Opname berhasil Tanggal :'+ FormatDateTime('yyyy/mm/dd',dtpTglOpname.Date));
ShowMessage('Data Opname berhasil');

cari(MyQcrtgl,cr_SQL);
//ds1my.DataSet := MyQcrtgl;
//CRDBGrid1.DataSource := ds1my;

CRDBGrid1.Columns.Clear;
DBGridAddColumn(CRDBGrid1,'tgl_opname','Tanggal Opname',120,1);
//DBGridAddColumn(CRDBGrid1,'nm_obat','Nama',280,1);
//DBGridAddColumn(CRDBGrid1,'idrak','rak',30,1);
//DBGridAddColumn(CRDBGrid1,'sat_obat','satuan',80,1);
//DBGridAddColumn(CRDBGrid1,'exp_obat','Tgl. ED',80,2);
//DBGridAddColumn(CRDBGrid1,'hrgbeli_obat','@Hrg Beli',80,3);
//DBGridAddColumn(CRDBGrid1,'hrg_obat','@Hrg Jual',80,3);

end;


end.
