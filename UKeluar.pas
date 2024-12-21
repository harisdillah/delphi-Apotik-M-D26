unit UKeluar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver,  dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, ComCtrls,
  AdvShapeButton, StdCtrls, Buttons, DB, DBAccess, MyAccess, Grids,
  BaseGrid, AdvGrid, MemDS, cxCalendar, cxMemo, AdvObj,nuest, AdvUtil;

type
  TFrmKeluar = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    cxlbl1: TcxLabel;
    btnnoreg: TcxButtonEdit;
    SpeedButton2: TSpeedButton;
    cxlbljam: TcxLabel;
    cxlbl6: TcxLabel;
    cbo_gudang: TcxLookupComboBox;
    Edkodetransaksi: TAdvShapeButton;
    tmr1: TTimer;
    ds1: TMyDataSource;
    ds5: TMyDataSource;
    ds3: TMyDataSource;
    ds2: TMyDataSource;
    ds4: TMyDataSource;
    lbl1: TLabel;
    edkode: TcxButtonEdit;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    cxLabel1: TcxLabel;
    btn_ruangan: TcxButtonEdit;
    Panel1: TPanel;
    lbl2: TLabel;
    grid1: TAdvStringGrid;
    pnl4: TPanel;
    lv1: TListView;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    ed2: TcxTextEdit;
    chk1: TCheckBox;
    cxlbl10: TcxLabel;
    lbl_cv: TLabel;
    cbb_satuan: TComboBox;
    cx_nama_brg: TcxTextEdit;
    lbl3: TLabel;
    cxLabel2: TcxLabel;
    cbbpetugas: TcxLookupComboBox;
    SpeedButton1: TSpeedButton;
    cxLabel3: TcxLabel;
    cxcari: TcxTextEdit;
    ds6: TMyDataSource;
    SpeedButton5: TSpeedButton;
    dtp_buat: TDateTimePicker;
    QCari: TMyQuery;
    cxNoBbk: TcxTextEdit;
    cxLabel7: TcxLabel;
    edt_jml_barang: TcxTextEdit;
    cxLabel8: TcxLabel;
    btn_penerima: TcxButtonEdit;
    edjml: TEdit;
    PageControl1: TPageControl;
    btnsave: TSpeedButton;
    btnBtnUbah1: TSpeedButton;
    btnBtnBaru: TSpeedButton;
    btnBtnHapus: TSpeedButton;
    PnOperasi: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Lbl_nm_ruang: TLabel;
    Adv_per: TAdvShapeButton;
    cxLabel9: TcxLabel;
    dtp1: TDateTimePicker;
    cxLabel10: TcxLabel;
    dtp2: TDateTimePicker;
    SpeedButton6: TSpeedButton;
    Grid2: TAdvStringGrid;
    SpeedButton7: TSpeedButton;
    btcari: TBitBtn;
    cxLabel11: TcxLabel;
    cxcariKeluar: TcxTextEdit;
    DTPawal: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    cxLabel12: TcxLabel;
    Label3: TLabel;
    Timer1: TTimer;
    SpeedButton8: TSpeedButton;
    BitBtn1: TBitBtn;
    cxNocrbbk: TcxTextEdit;
    Label4: TLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    procedure FormCreate(Sender: TObject);

    procedure SpeedButton2Click(Sender: TObject);
    procedure btnBtnBaruClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnBtnUbah1Click(Sender: TObject);
    procedure btnBtnHapusClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cxcariKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lv1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lv1KeyPress(Sender: TObject; var Key: Char);
    procedure edjmlKeyPress(Sender: TObject; var Key: Char);
    procedure edjmlKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed2PropertiesChange(Sender: TObject);
    procedure deleterow(mg:TStringGrid;ARow:integer);
    procedure btn2Click(Sender: TObject);
    procedure grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: String);
    procedure ed_dtotalChange(Sender: TObject);
    procedure grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure tmr1Timer(Sender: TObject);
    procedure edjmlPropertiesChange(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure btn_penerimaPropertiesChange(Sender: TObject);
    procedure btn_ruanganPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure lv1CustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure grid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btnnoregPropertiesChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btn_ruanganPropertiesChange(Sender: TObject);
    procedure btcariClick(Sender: TObject);
    procedure Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
     Procedure aturgrid1;
     Procedure aturgrid2;
     procedure hapus_grid;
     Procedure KosongTex(Kunci:Boolean);
     Procedure Tampil_combo_Petugas;
     Procedure Tampil_combo_gudang;
     Procedure cbo_satuan;
     Procedure tambah_grid;
     function  Caribrg(nkode_cr: String):string;
     procedure Total;
     Procedure TampilData;
     Procedure TampilData_permintaan;
     Procedure jumlah_permintaan;
     Procedure ambilRuang;


  public
    { Public declarations }
    Procedure buatno;
    Function GetNoBBK:string;
    Function Lastkasir(s:string):string;
  end;

var
  FrmKeluar: TFrmKeluar;
  FCounter :integer;
  tambah: boolean;
  i1,i2,baris :Integer;
  i,counter,hapus_baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	sql,sql1,sql2,sql3,m1,m2,m3,m4,m5,ppn: String;
  qty,jml,stok_sekarang,stok_mutasi,harga,total_harga,disk,total2 : real ; // :integer;
  hrgd,n_t1d,ddisk,n_diskd,n_t2d,n_pajakd,JML_BRG :real;
  a1,a2,a3,a4,a5 ,a6 : real;
  cek_inputan:boolean;

implementation

uses UnModul,UFunctions,UF_dbsql, UnCarisp,UnCarisp2, UnMenu;

{$R *.dfm}

Procedure TFrmKeluar.ambilRuang;
var
SPcariunit  : TMyStoredProc;
begin
SPcariunit := TMyStoredProc.Create(nil);

  try
    SPcariunit.Connection := DmModul.con1;
    SPcariunit.Close;
    SPcariunit.StoredProcName := 'sp_ambilunit';
    SPcariunit.PrepareSQL;
    SPcariunit.ParamByName('cari').AsString := btn_ruangan.Text; //cv bringin
    //SPcariPeny.Execute;
    SPcariunit.Open;
   if SPcariunit.RecordCount > 0 then
  begin
    Lbl_nm_ruang.Caption :=SPcariunit.FieldByName('nama_user').AsString;
   end
  else
    begin
    Lbl_nm_ruang.Caption :='Unit Blm Dipilih';
    Lbl_nm_ruang.Color := clred ;
    end;

  finally
    SPcariunit.Close;
    SPcariunit.Free;
  end;

end;


procedure TFrmKeluar.deleterow(mg:TStringGrid;ARow:integer);
var i,j,k:integer;
begin
        with mg do begin
                for i:=ARow to RowCount-1 do
                        for j:=0 to ColCount-1 do
                            Cells[j,i]:=Cells[j,i+1];

        RowCount:=RowCount-1;
        for k:=1 to RowCount-1 do
                Cells[0,k]:=IntToStr(k);
        end;
end;


function clearDot(AEdit:string):string;
begin
 Result:=StringReplace(AEdit,'.','',[rfReplaceAll]);
end;




function ExecSQL1(Sql: string): boolean;
var q: TMyQuery;
begin
  q:=TMyQuery.Create(nil);
  q.Connection := DmModul.con1;
  q.ParamCheck:=False;
  q.SQL.Clear;
  q.SQL.Text:=Sql;
  try
  q.ExecSQL;
  Result:=True;
  except
    on e: Exception do begin
      Result:=False;
    end;
  end;
  q.Free;
end;


function formatRp(input:string):string;
begin
 Result:=Format('%.0n',[StrToFloatDef(input,0)]);
end;

function Capital(Value:String):String;
Var i:integer; s:string;
begin
  s:=UpperCase(Value[1]);
  for i:=2 to Length(Value) do
  if (Value[i-1] in [' ',',',':',';','.']) then
  s:=s+UpperCase(Value[i]) else s:=s+LowerCase(Value[i]);
  Result:=s;
end;


procedure TFrmKeluar.FormCreate(Sender: TObject);
begin
  KosongTex(True);
  dtp1.date:= now;
  dtp2.date:= now;
  DTPawal.date:= now;
  //Aturgrid1;

end;


Procedure TFrmKeluar.tambah_grid;
var
    addSat : TMyQuery;
begin
inc(counter);
Grid1.RowCount:=Grid1.RowCount + 1;
Grid1.Cells[0,Grid1.RowCount-1]:=IntToStr(counter);
Grid1.Cells[1,Grid1.RowCount-1]:=IntToStr(counter);
Grid1.Cells[2,Grid1.RowCount-1]:=edkode.text;
Grid1.Cells[3,Grid1.RowCount-1]:=cx_nama_brg.text;
Grid1.Cells[4,Grid1.RowCount-1]:=edjml.Text;//nama barang
Grid1.Cells[5,Grid1.RowCount-1]:=cbb_satuan.Text;//ID Paket

   jml:=StrToFloat(Grid1.Cells[4,Grid1.RowCount-1]);
//   harga:=StrToFloat(Grid1.Cells[5,Grid1.RowCount-1]);
//   total_harga:=jml*harga;
//   Grid1.Cells[6,Grid1.RowCount-1]:=FloatToStr(total_harga);
   Total; //jumlah total

      //tambah Satuan:
      {
      addSat := TMyQuery.Create(nil);
      addSat.Connection := DmModul.con1;
      addSat.Close;
      addSat.SQL.Text:=
      'Select satuan from satuan where satuan='+
      QuotedStr(cbb_satuan.Text);
      addSat.Open;

      if (addSat.RecordCount = 0) then
      begin
        MessageDlg('Kode baru Satuan',mtInformation,[mbok],0);
        addSat.Close;
        addSat.SQL.Text:=
        'insert into satuan(satuan) Values('+
        QuotedStr(cbb_satuan.Text)+')';
        addSat.Execute;
      end;

addSat.Close;
cbo_satuan;

//=====================
Total; //jumlah total
//clear kotak
//cx_nama_brg.Text := '';
//edjml.Text := '0';
//cbo_satuan.Text := '';
//edhrg.Text := '0';
//Ed_disk_d.Text := '0';
//ed_Tdisk.Text := '0';
}
end;


Procedure TFrmKeluar.cbo_satuan;
var
    qcom1 : TMyQuery;
begin
    try
      qcom1 := TMyQuery.Create(nil);
      qcom1.Connection := DmModul.con1;
      qcom1.Close;
      qcom1.SQL.Text:=
      'Select satuan From satuan order by satuan';
      qcom1.Open;
      cbb_satuan.Items.Clear;
while not qcom1.Eof do
begin
cbb_satuan.Items.Add(qcom1.FieldByName('satuan').AsString);
qcom1.Next;
end;

finally
qcom1.Close;
qcom1.Free;
end;
end;

Procedure TFrmKeluar.jumlah_permintaan;
     var qpermintaan : TMyQuery;
begin

qpermintaan := TMyQuery.Create(nil);
qpermintaan.Connection := DmModul.con1;

  qpermintaan.Active := false;
  qpermintaan.SQL.Clear;
  qpermintaan.SQL.Text :='SELECT COUNT(no_trans_u) AS jumlah FROM h_usulan where status = 0  ';
  qpermintaan.Open;
  Adv_per.Text:=qpermintaan.FieldByName('jumlah').AsString;

end;

Procedure TFrmKeluar.aturgrid2;
//var counter,hapus_baris : Integer;
begin
  counter:=0;
  hapus_baris:=0;
  Grid2.ColCount:=8;
  Grid2.RowCount:=1;
  Grid2.FixedRowAlways := True;
  //No|tgl.|No.BBK|Ruangan|Gudang|
  Grid2.Cells[0,0]:='No.';
  Grid2.Cells[1,0]:='No. Trans';
  Grid2.Cells[2,0]:='tgl.';
  Grid2.Cells[3,0]:='No.BBK';
  Grid2.Cells[4,0]:='Ruangan';
  Grid2.Cells[5,0]:='Gudang';
  Grid2.ColWidths[0]:=30;
  Grid2.ColWidths[1]:=130;
  Grid2.ColWidths[2]:=90;
  Grid2.ColWidths[3]:=80;
  Grid2.ColWidths[4]:=180;
  Grid2.ColWidths[5]:=90;



end;


procedure TFrmKeluar.BitBtn1Click(Sender: TObject);
var
  spdata2 : TMyStoredProc;
  i : integer;
begin
   aturgrid2;
   spdata2:= TMyStoredProc.Create(nil);
   spdata2.Connection := DmModul.con1;
  try
    spdata2.Close;
    spdata2.StoredProcName := 'sp_carikeluar_tglNama';
    spdata2.PrepareSQL;
    spdata2.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp1.date); //key ba
    spdata2.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key ba
    spdata2.ParamByName('cari').AsString := cxcariKeluar.text;
    spdata2.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    spdata2.ParamByName('cari3').AsString := cxNocrbbk.text;
    spdata2.Open;

    cxLabel11.Caption := inttostr(spdata2.RecordCount) +' record ';


    if spdata2.Eof then
    begin
    ShowMessage('data YANG DICARI Nama tidak ada :'+ cxcariKeluar.Text);
    exit;
    end;


     for i:=1 to Grid2.RowCount-1 do begin
        Grid2.Cells[0,i]:='';
        Grid2.Cells[1,i]:='';
        Grid2.Cells[2,i]:='';
        Grid2.Cells[3,i]:='';
        Grid2.Cells[4,i]:='';
        Grid2.Cells[5,i]:='';
    end;


    //isi grid

    counter:=0;
      if  spdata2.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= spdata2.RecordCount+1;


    while not spdata2.Eof do begin
          Inc(counter);   //IntToStr(counter);
          Grid2.Cells[0,counter]:=IntToStr(counter); //No.
          Grid2.Cells[1,counter]:=spdata2.FieldByName('no_trans_k').AsString;
          Grid2.Cells[2,counter]:=spdata2.FieldByName('tgl_keluar').AsString;
          Grid2.Cells[3,counter]:=spdata2.FieldByName('no_bbk').AsString;
          Grid2.Cells[4,counter]:=spdata2.FieldByName('ket').AsString;
          Grid2.Cells[5,counter]:=spdata2.FieldByName('gudang').AsString;
          {
          grid2.ShowSelection := True;
          for i := 1 to grid2.RowCount - 1 do
          grid2.AddCheckBox(4, i, false, false);
           }
          spdata2.Next;
    end;

    finally
    spdata2.Close;
    end;

end;

Procedure TFrmKeluar.aturgrid1;
//var counter,hapus_baris : Integer;
begin
  counter:=0;
  hapus_baris:=0;
  Grid1.ColCount:=8;
  Grid1.RowCount:=1;
  Grid1.FixedRowAlways := True;
  Grid1.Cells[0,0]:='No';
  Grid1.Cells[1,0]:='No. Urut';
  Grid1.Cells[2,0]:='Kode';
  Grid1.Cells[3,0]:='Nama';
  Grid1.Cells[4,0]:='Jumlah';
  Grid1.Cells[5,0]:='Satuan';
  Grid1.Cells[6,0]:='stok Riil';
  Grid1.Cells[7,0]:='stok mutasi';
  Grid1.ColWidths[0]:=30;
  Grid1.ColWidths[1]:=30;
  Grid1.ColWidths[2]:=110;
  Grid1.ColWidths[3]:=350;
  Grid1.ColWidths[4]:=90;
  Grid1.ColWidths[5]:=50;
  Grid1.ColWidths[6]:=50;
  Grid1.ColWidths[7]:=80;
  //clear grid
  //StringGrid1.ClearRows(1, StringGrid1.RowCount - 1);
  //rata kanan
  //RightEdit(ed_dtotal);



end;

Procedure TFrmKeluar.KosongTex(Kunci:Boolean);
//var
//j:Integer;
Begin
  if Kunci=True then
  begin
  btnnoreg.Text := '';
  btnnoreg.Text:=GetNoBBK;
  Tampil_combo_gudang;
  Tampil_combo_Petugas;
  dtp_buat.date:= now;



  {
  dtp_faktur.date:= now;
  dtp_faktur.ShowCheckbox :=true;
  dtp_faktur.Checked := false;
  dtp_faktur.Color := clred;
   }
  //ed_spk.Text := '';
  cxNoBbk.Text := '';
  btn_ruangan.Text := '';
  cbo_satuan;
  btnnoreg.Enabled:=False;
  aturgrid1;
  cbo_gudang.ItemIndex:=0;

 end;
end;


  procedure deleterow(mg:TStringGrid;ARow:integer);
var i,j,k:integer;
begin
        with mg do begin
                for i:=ARow to RowCount-1 do
                        for j:=0 to ColCount-1 do
                            Cells[j,i]:=Cells[j,i+1];

        RowCount:=RowCount-1;
        for k:=1 to RowCount-2 do
                Cells[0,k]:=IntToStr(k);
              // Cells[1,k]:=IntToStr(k);
        end;
end;


Procedure TFrmKeluar.buatno;
var
  tgl,urut : string;
  i_no : integer;
  q_no: TMyQuery;
begin

tgl := FormatDateTime('yyMMdd',dtp_buat.Date) + '';
q_no := TMyQuery.Create(nil);

try
   q_no.Connection := DmModul.con1;
   q_no.Active := false;
   q_no.SQL.Clear;
   q_no.SQL.Add('Select Max(right(no_trans_k, 4)) from h_keluar ' +
              'Where Mid(no_trans_m, 3,6) = ' + QuotedStr(tgl) + ';'); //JUMLAH NOMOR
   q_no.Active := true;

  if q_no.Fields[0].AsString = '' then
    urut := '0001'
  else
    urut := IntToStr(q_no.Fields[0].AsInteger + 1);
  if length(urut) < 4 then              //4
  begin
    for i_no := length(urut) to 3 do       // 4 = 3
      urut := '0' + urut;
  end;
  btnnoreg.Text := 'K' + tgl + urut;
   finally
    q_no.Close;
    q_no.Free;
  end;
end;

procedure TFrmKeluar.SpeedButton2Click(Sender: TObject);
begin
btnnoreg.Text:=GetNoBBK;
end;

procedure TFrmKeluar.btnBtnBaruClick(Sender: TObject);
begin
PnOperasi.Caption := 'Tambah Data';
btnnoreg.Text:=GetNoBBK;
btnnoreg.Enabled:=False;
KosongTex(True);
cxNoBbk.SetFocus;
end;

procedure TFrmKeluar.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='SP_caripegawai';
  LsvSetCol('No|Nama|',
  '350|420|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('NIP');
  FCarisp.LsField.Items.Add('Nama');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    btn_penerima.Text:=nFieldCari[0];
    btn_penerima.Style.Color:=clMoneyGreen;
    cxcari.SetFocus;
  end;
end;

 Procedure TFrmKeluar.Tampil_combo_gudang;
 var
 q2,q3,q4,q5 : TMyQuery;

begin
//QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
  q2 := TMyQuery.Create(nil);
  try
  q2.Connection := DmModul.con1;
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text := 'Select kd_gudang, nama_gudang from m_gudang'+
   ' where gudang = ' + QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
   'order by kd_gudang';
  //q2.SQL.Text := 'Select nip, CONCAT(gol, " , ", nm_gol) as nm  from r_gol';
  q2.Open;
    if q2.RecordCount > 0 then
  begin
  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString
  ds1.DataSet := q2;
  cbo_gudang.Properties.ListSource := ds1;
  cbo_gudang.Properties.ListOptions.ShowHeader := False;
  cbo_gudang.Properties.ListFieldNames := 'nama_gudang';
  cbo_gudang.Properties.KeyFieldNames := 'kd_gudang';
  end;
   finally
  //  q2.Close;
  //  q2.Free;
  end;

 end;

  Procedure TFrmKeluar.Tampil_combo_Petugas;
 var
 q6,q7,q8,q9 : TMyQuery;

begin

  q6 := TMyQuery.Create(nil);
  try
  q6.Connection := DmModul.con1;
  q6.Active := false;
  q6.SQL.Clear;
  //q6.SQL.Text := 'Select nip,NM_p from m_petugas order by nip';
  q6.SQL.Text := 'Select nip,NM_p from m_petugas '+
   ' where gudang = ' + QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
   ' AND aktif =1 order by NM_p';

  //q2.SQL.Text := 'Select nip, CONCAT(gol, " , ", nm_gol) as nm  from r_gol';
  q6.Open;
    if q6.RecordCount > 0 then
  begin
  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString
  ds6.DataSet := q6;
  cbbpetugas.Properties.ListSource := ds6;
  cbbpetugas.Properties.ListOptions.ShowHeader := False;
  cbbpetugas.Properties.ListFieldNames := 'NM_p';
  cbbpetugas.Properties.KeyFieldNames := 'nip';
  end;
   finally
  //  q2.Close;
  //  q2.Free;
  end;
  end;


procedure TFrmKeluar.Timer1Timer(Sender: TObject);
begin
label3.Caption :=
//formatdatetime('"Tanggal : "dd/mm/yyyy',now)+chr(10)+
//formatdatetime('"Pukul : "hh:nn:ss',now);
formatdatetime('yyyy/mm/dd',now)+chr(2)+formatdatetime('hh:nn:ss',now);


label3.Refresh;

{
dtp_buat.DateTime := formatdatetime('dd/mm/yyyy',now)+chr(10)+ formatdatetime('hh:nn:ss',now);
dtp_buat.Refresh;
 }
end;

procedure TFrmKeluar.FormShow(Sender: TObject);
  var Qambilawal : TMyQuery;

begin

    Qambilawal := TMyQuery.Create(nil);
    Qambilawal.Connection := DmModul.con1;
    Qambilawal.SQL.Clear;
    Qambilawal.SQL.Text := 'SELECT * FROM setting';
    Qambilawal.Open;
    DTPawal.date:=Qambilawal.FieldByName('tglawal').AsDateTime;

jumlah_permintaan;


KosongTex(True);
PnOperasi.Caption := 'Tambah Data';




end;

procedure TFrmKeluar.btnBtnUbah1Click(Sender: TObject);
begin
PnOperasi.Caption := 'Ubah Data';

  FCarisp2:=TFCarisp2.Create(Application);
  FCarisp2.Label4.Caption :='SP_ambilKeluar';
  FCarisp2.EGudang.Text := FMenu.dxStatusBar1.Panels[2].Text;
  LsvSetCol('No|tgl.|No.BBK|Ruangan|Gudang|',
  '250|140|100|260|80|',FCarisp2.LsCari);
  FCarisp2.LsField.Items.Clear;
  FCarisp2.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp2.LsField.Items.Add('no_trans_k');
  FCarisp2.LsField.Items.Add('tgl_keluar');
  FCarisp2.LsField.Items.Add('no_bbk');
  FCarisp2.LsField.Items.Add('ket');
  FCarisp2.LsField.Items.Add('gudang');
  FCarisp2.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    btnnoreg.Text:=nFieldCari[0];
    btnnoreg.Style.Color:=clLtGray;
    TampilData;
    PnOperasi.Caption := 'Ubah Data';
    btnnoreg.Style.Color:=clcxLightGray;
    cxNoBbk.SetFocus;
    btnnoreg.Enabled:=False;
    //btnnoreg.SetFocus;
  end;
end;

procedure TFrmKeluar.btnBtnHapusClick(Sender: TObject);
begin
PnOperasi.Caption := 'Hapus Data';
end;

procedure TFrmKeluar.btcariClick(Sender: TObject);
var
  spdata : TMyStoredProc;
  i : integer;
begin
   aturgrid2;
   spdata:= TMyStoredProc.Create(nil);
   spdata.Connection := DmModul.con1;
  try
    spdata.Close;
    spdata.StoredProcName := 'sp_carikeluar_tgl';
    spdata.PrepareSQL;
    spdata.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp1.date); //key ba
    spdata.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key ba
    spdata.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    spdata.ParamByName('cari').AsString := cxcariKeluar.text;
    spdata.Open;

    cxLabel11.Caption := inttostr(spdata.RecordCount) +' record ';


    if spdata.Eof then
    begin
    ShowMessage('data YANG DICARI tidak ada :'+ cxcariKeluar.Text);
    exit;
    end;
  

     for i:=1 to Grid2.RowCount-1 do begin
        Grid2.Cells[0,i]:='';
        Grid2.Cells[1,i]:='';
        Grid2.Cells[2,i]:='';
        Grid2.Cells[3,i]:='';
        Grid2.Cells[4,i]:='';
        Grid2.Cells[5,i]:='';
    end;


    //isi grid

    counter:=0;
      if  spdata.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= spdata.RecordCount+1;


    while not spdata.Eof do begin
          Inc(counter);   //IntToStr(counter);
          Grid2.Cells[0,counter]:=IntToStr(counter); //No.
          Grid2.Cells[1,counter]:=spdata.FieldByName('no_trans_k').AsString;
          Grid2.Cells[2,counter]:=spdata.FieldByName('tgl_keluar').AsString;
          Grid2.Cells[3,counter]:=spdata.FieldByName('no_bbk').AsString;
          Grid2.Cells[4,counter]:=spdata.FieldByName('ket').AsString;
          Grid2.Cells[5,counter]:=spdata.FieldByName('gudang').AsString;
          {
          grid2.ShowSelection := True;
          for i := 1 to grid2.RowCount - 1 do
          grid2.AddCheckBox(4, i, false, false);
           }
          spdata.Next;
    end;

    finally
    spdata.Close;
    end;

end;

procedure TFrmKeluar.btn1Click(Sender: TObject);
begin
tambah_grid;
end;

procedure TFrmKeluar.cxcariKeyPress(Sender: TObject; var Key: Char);
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


function TFrmKeluar.Caribrg(nkode_cr: String):string;
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
  ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
  ParamByName('cari').AsString := cxcari.text;
  Execute;
  cxLabel4.Caption := 'Jumlah Data : ' + inttostr(RecordCount) +' baris ';

  //Open;
  //ShowMessage(SQL.Text);
  lv1.Clear;
  if not IsEmpty then
  begin
     while not Eof do
     begin
      dt:=lv1.Items.Add;
      dt.Caption:=(dmmodul.dataRow(Q6.FieldByName('kode_brg'),'-'));
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('nama_barang'),'-'));
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('satuan'),'-'));
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('stok'),'-'));
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

procedure TFrmKeluar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmKeluar:=nil;
  Action:=caFree;
end;

procedure TFrmKeluar.lv1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=40)then  // panah bawah
      lv1.SetFocus;
  if (Key=13)then  //enter
      lv1.SetFocus;
  if (Key = 27)then //tombol END 35 , esc 27
    begin
      pnl4.Visible:=false;
      cxcari.SetFocus;
      //edjml.SetFocus;
    end;
end;

procedure TFrmKeluar.lv1KeyPress(Sender: TObject; var Key: Char);
begin
try
		if(Key=#13)then
	begin
    // edkode.Text:=lv1.Selected.Caption;
     with lv1.Selected do
      begin
        edkode.Text:=lv1.Selected.Caption;
        cx_nama_brg.Text:=SubItems.Strings[0];
        cbb_satuan.Text:=SubItems.Strings[1];
      end;
     edjml.SetFocus;
     pnl4.Visible:=false;
	end;
		except
	end;
end;

procedure TFrmKeluar.edjmlKeyPress(Sender: TObject; var Key: Char);
begin
//if not(Key in ['0'..'9',#8,#46,#39,#37]) then
//   Key:=#0;


end;

procedure TFrmKeluar.edjmlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      {
 if edjml.Text ='' then                                   // answer is a number
    begin
      ShowMessage('jumlah belum di isi ??  ' + edjml.Text);
      edjml.SetFocus;
      Exit;

    end
    else
     begin
       }
    if (Key=13) then
   BEGIN
    btn1Click(Sender);
    cxcari.SetFocus;
    cxcari.Text:='';
    end;
   // end
end;


procedure TFrmKeluar.Total;
begin
JML_BRG:=0;

   for i:=1 to Grid1.RowCount-1 do begin
        JML_BRG:=JML_BRG+strtofloat(Grid1.Cells[4,i]);
   end;
   edt_jml_barang.Text:=floattostr(JML_BRG);

end;

procedure TFrmKeluar.ed2PropertiesChange(Sender: TObject);
begin
if chk1.checked then
    grid1.NarrowDown(ed2.Text,2)
  else
    grid1.NarrowDown(ed2.Text);
end;


procedure TFrmKeluar.hapus_grid;
begin
  if (cek_baris='') then begin
    ShowMessage('Silahkan pilih grid di hapus');
    exit;
  end else
      if MessageDlg('Hapus item kode: '+Grid1.Cells[1,hapus_baris]+' ?',mtConfirmation,mbOKCancel,0)=mrok then begin
         deleterow(Grid1,hapus_baris);
         Total;
         cek_baris:='';
         counter:=counter-1;
         edt_jml_barang.text := IntToStr(counter);
end
else ShowMessage('Inputan Detail masih kosong');
end;




procedure TFrmKeluar.btn2Click(Sender: TObject);
begin
 if (cek_baris='') then begin
    ShowMessage('Silahkan pilih grid di hapus/urutkan');
     for i2:=1 to Grid1.RowCount-1 do begin
    Grid1.Cells[0,i2]:=IntToStr(i2);
    Grid1.Cells[1,i2]:=IntToStr(i2);
  end;

    exit;
  end else
      if MessageDlg('Hapus item kode: '+Grid1.Cells[1,hapus_baris]+' ?' +Grid1.Cells[2,hapus_baris],mtConfirmation,mbOKCancel,0)=mrok then begin
         deleterow(Grid1,hapus_baris);
         Total;
         cek_baris:='';
         counter:=counter-1;
         edt_jml_barang.text := IntToStr(counter);
end
else ShowMessage('Inputan Detail masih kosong');
end;

procedure TFrmKeluar.grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
  var
    input_box : string;
begin
hapus_baris:=ARow;
cek_baris:=Grid1.Cells[1,arow];

  {
if (aCol = 4) then
   begin
   Grid1.Options := Grid1.Options + [Goediting];

   jml:=StrToFloat(Grid1.Cells[3,arow]);
          harga:=StrToFloat(Grid1.Cells[5,arow]);
      total_harga:=jml*harga;
      Grid1.Cells[6,arow]:=FloatToStr(total_harga);
      Total;
  end;

  }

   if not (Grid1.Cells[ACol,ARow]='') then begin

   //jumlah brg
    if ACol=4 then  begin
    if not (Grid1.RowCount=1) then begin
       input_box:=InputBox('qty','Jumlah Barang : '+Grid1.Cells[3,arow]+' -> '+Grid1.Cells[5,arow],Grid1.Cells[4,arow]);
       qty:=StrToFloat(input_box);
       Grid1.Cells[ACol,ARow]:=FloatToStr(qty);
          jml:=StrToFloat(Grid1.Cells[4,arow]);
          stok_sekarang:=StrToFloat(Grid1.Cells[6,arow]);//stok sekarang
          stok_mutasi:=stok_sekarang-jml;
          Grid1.Cells[7,arow]:=FloatToStr(stok_mutasi); //stok_mutasi
          //stok_sekarang,stok_mutasi

          //harga:=StrToFloat(Grid1.Cells[5,arow]);
      //total_harga:=jml*harga;
      //Grid1.Cells[6,arow]:=FloatToStr(total_harga);
      Total;
      end;
      end;
 end;
end;

procedure TFrmKeluar.Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
    btnnoreg.Text:=Grid2.Cells[1,AROW];
    btnnoreg.Style.Color:=clLtGray;
    TampilData;
    PnOperasi.Caption := 'Ubah Data';
    btnnoreg.Style.Color:=clcxLightGray;
    cxNoBbk.SetFocus;
    btnnoreg.Enabled:=False;
end;

procedure TFrmKeluar.grid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    1: HAlign := taCenter;
    2,3: HAlign := taLeftJustify;
    4,6,7: HAlign := taRightJustify;
  end;
end;

procedure TFrmKeluar.grid1GetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
begin
isFloat := Acol in [4];
case ACol of
  4: Floatformat :='%.2n';
end;
end;

procedure TFrmKeluar.ed_dtotalChange(Sender: TObject);
begin
   //formatRupiah(ed_dtotal);
   //edtotal.Text := ed_dtotal.Text;
end;

procedure TFrmKeluar.grid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
//warna grid
if ((ACol = 2) and (ARow > 0)) then
  begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

  if ((ACol = 6) and (ARow > 0)) then
  begin
   if (grid1.Cells[ACol, ARow] < '0,1' )
    then
    begin
    ABrush.Color:= $00BCA5B8;
    AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

   if (grid1.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := $98FB98;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;
  end;



 if ((ACol = 7) and (ARow > 0)) then
  begin
   if (grid1.Cells[ACol, ARow] < '0,1' )
    then
    begin
    ABrush.Color:= $00BCA5B8;
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end;

   if (grid1.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := $98FB98;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;
  end;

// kolom 4
if ((ACol = 4) and (ARow > 0)) then
  begin
   if (grid1.Cells[ACol, ARow] < '0,1' )
    then
    begin
    //ABrush.Color:= $00BCA5B8;
    AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

   if (grid1.Cells[ACol, ARow] > '0')
    then
    begin
    //ABrush.Color := $00E9B69A;
    AFont.Color := clBlack;
    //AFont.Style := [fsBold];
  end;
  end;

  end;
procedure TFrmKeluar.tmr1Timer(Sender: TObject);
begin
cxlbljam.caption:=TimeToStr(Now);

PnOperasi.Font.Color := Trunc(clBLUE*random);
//jumlah_permintaan;
end;

procedure TFrmKeluar.edjmlPropertiesChange(Sender: TObject);
begin
{
if edjml.Text = '' then Exit;
a1 := StrToFloat(edjml.Text);
//a2 := StrToFloat(clearDot(edhrg.Text));
a3 := a1 * a2;
cxtotal.Text := FloatToStr(a3);
}
end;

procedure TFrmKeluar.chk1Click(Sender: TObject);
begin
      if chk1.Checked   THEN
      BEGIN
      ed2.Visible := True;
      END
    else
    BEGIN
     ed2.Visible := False;
  end;
  end;


procedure TFrmKeluar.btnsaveClick(Sender: TObject);
var
// simpan cbb
cbogudang,cbopetugas,tglsekarang:string;
selisih :Real;
sp_sim : TMyQuery;
qv : TMyQuery;

begin

//if Validasi=False then exit;
    for i1:=1 to Grid1.RowCount-1 do begin
    Grid1.Cells[0,i1]:=IntToStr(i1);
    Grid1.Cells[1,i1]:=IntToStr(i1);
  end;

   // simpan gudang
   if cbo_gudang.Text = '' then
  cbogudang := ''
  else
  cbogudang :=  cbo_gudang.EditValue;

   // simpan petugas
   if cbbpetugas.Text = '' then
      cbopetugas := ''
  else
  cbopetugas :=  cbbpetugas.EditValue;

   if (Trim(btn_ruangan.Text)='')  then
  //or (Trim(edt2.Text)='') or (Trim(edt3.Text)='') or (Trim(edt4.Text)='') or (Trim(edt5.Text)=”) then
        begin
        ShowMessage('nama Penerima Yang Kosong..??');
        btn_ruangan.SetFocus;
        Exit;
        end;

  if (Trim(cbbpetugas.Text)='')  then
  //or (Trim(edt2.Text)='') or (Trim(edt3.Text)='') or (Trim(edt4.Text)='') or (Trim(edt5.Text)=”) then
        begin
        ShowMessage('nama Petugas Kosong..??');
        cbbpetugas.SetFocus;
        Exit;
        end;

  if (Trim(cbo_gudang.Text)='')  then
        begin
        ShowMessage('nama Gudang Kosong..??');
        cbo_gudang.SetFocus;
        Exit;
        end;
  if (Trim(cxNoBbk.Text)='')  then
        begin
        ShowMessage('Nomor BBK Kosong..??');
        cxNoBbk.SetFocus;
        Exit;
        end;

   //Simpan data
  sp_sim := TMyQuery.Create(nil);
  qv := TMyQuery.Create(nil);

  if MessageDlg('Data dengan'+#13+#10+btnnoreg.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin
   //tglsekarang := dtp_buat.Date + + cxlbljam.Caption;

   //hitung_tran;

   If PnOperasi.Caption='Tambah Data' then
   begin
	    //validasi
      //if Validasi=False then exit;

    qv.Connection := DmModul.con1;
    qv.SQL.Clear;
    qv.SQL.Text := 'Select * from h_keluar where no_trans_k = '+QuotedStr(btnnoreg.Text)+'';
    qv.Open;
    if qv.RecordCount > 0 then
      begin

        if MessageDlg('Kode Sudah ada'+#13+#10+btnnoreg.Text+#13+#10+
        'Buat Nomor Baru (Register), ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
       btnnoreg.Text:=GetNoBBK;

       end;
        exit;
      end;
      try
         sql := 'insert into h_keluar (no_trans_k,tgl_create,tgl_keluar,no_bbk,'+
        'kd_ruang,kd_memberi,kd_menerima,ket,gudang) Values('+
        QuotedStr(btnnoreg.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_buat.Date))+','+
        QuotedStr(cxNoBbk.Text)+','+
        QuotedStr(btn_ruangan.Text)+','+
        QuotedStr(cbopetugas)+','+
        QuotedStr(btn_penerima.Text)+','+
        QuotedStr(Lbl_nm_ruang.Caption)+','+
        QuotedStr(cbogudang)+')';
        ExecSQL1(sql);

        // datetimetostr(now);  nomor_bbk

        sql3 :='UPDATE h_usulan SET status = 1'+
             ',tgl_create='+QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+
             ',jam='+QuotedStr(FormatDateTime('hh:nn:ss',now))+
             ',nomor_bbk='+QuotedStr(cxNoBbk.Text)+
             ' WHERE no_trans_u='+QuotedStr(btnnoreg.Text);
        ExecSQL1(sql3);
        ShowMessage('Simpan Baru sukses / status Usul :'+ btnnoreg.Text);

       //KosongTex(True);
       //AktifControl(Self,PnInput,False);
         except
        ShowMessage('Simpan baru gagal :'+ btnnoreg.Text);
        raise;
      end;


      //simpan Detail
      try
        for i1:=1 to Grid1.RowCount-1 do begin
             sql2:='INSERT INTO detail_keluar (no_keluar,tgl_keluar,tgl_create,no,kode_brg,nama,jumlah,satuan)'+
             ' Values('+
             QuotedStr(btnnoreg.Text)+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_buat.Date))+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
             QuotedStr(Grid1.Cells[1,i1])+','+
             QuotedStr(Grid1.Cells[2,i1])+','+
             QuotedStr(Grid1.Cells[3,i1])+','+
             QuotedStr(RealFormat(StrToFloat(Grid1.Cells[4,i1])))+','+// jumlah 0,00
             QuotedStr(Grid1.Cells[5,i1])+')';
             ExecSQL1(sql2);
             end;


    // sql3 :='Update h_penjualan set terbilang= tcase(terbilang)'+
    //         ' where no_transaksi='+QuotedStr(btnnoreg.Text);
    //    ExecSQL1(sql3);

     //   m5 := 'Ubah Nama OK';
     KosongTex(True);
     //--cetak
     //  bayar_tran;
     ShowMessage('Simpan Detail ok :'+ btnnoreg.Text);
     jumlah_permintaan;
     except
      ShowMessage('Simpan Detail gagal ok :'+ btnnoreg.Text);
        //m1 := 'simpan Baru Gagal';
        raise;
      end;



   end    //end tambah

   else if PnOperasi.Caption='Ubah Data' then
   begin
        //if Validasi=False then exit;
        try
      // ubah
      sql1 :='Update h_keluar set no_trans_k='+ QuotedStr(btnnoreg.Text)+
      ',tgl_keluar='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_buat.Date))+
      ',no_bbk='+QuotedStr(cxNoBbk.Text)+
      ',kd_ruang='+QuotedStr(btn_ruangan.Text)+
      ',ket='+QuotedStr(Lbl_nm_ruang.Caption)+
      ',kd_memberi='+QuotedStr(cbopetugas)+
      ',kd_menerima='+QuotedStr(btn_penerima.Text)+

      ',gudang='+QuotedStr(cbogudang)+
      ' where no_trans_k='+QuotedStr(btnnoreg.Text);
      ExecSQL1(sql1);

      sql3 :='UPDATE h_usulan SET status = 1'+
             ',nomor_bbk='+QuotedStr(cxNoBbk.Text)+
             ',jam='+QuotedStr(FormatDateTime('hh:nn:ss',now))+
             ',tgl_create='+QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+
             ' WHERE no_trans_u='+QuotedStr(btnnoreg.Text);
        ExecSQL1(sql3);
        ShowMessage('Simpan Baru sukses / status Usul :'+ btnnoreg.Text);


      except
        ShowMessage('Simpan Edit / ubah Gagal :'+ btnnoreg.Text);
        raise;
      end;

      //simpan Detail
       sql:= 'delete from detail_keluar'+
        ' where no_keluar='+QuotedStr(btnnoreg.Text);
        ExecSQL1(sql);

         try

           for i1:=1 to Grid1.RowCount-1 do begin
             sql2:='INSERT INTO detail_keluar (no_keluar,tgl_keluar,tgl_create,no,kode_brg,nama,jumlah,satuan)'+
             ' Values('+
             QuotedStr(btnnoreg.Text)+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_buat.Date))+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
             QuotedStr(Grid1.Cells[1,i1])+','+
             QuotedStr(Grid1.Cells[2,i1])+','+
             QuotedStr(Grid1.Cells[3,i1])+','+
             QuotedStr(RealFormat(StrToFloat(Grid1.Cells[4,i1])))+','+// jumlah 0,00
             QuotedStr(Grid1.Cells[5,i1])+')';
             ExecSQL1(sql2);
             end;
     //--cetak
    // bayar_tran;
           ShowMessage('Simpan Perubahan ok :'+ btnnoreg.Text);
           KosongTex(True);
           btcariClick(Sender);
     except
        raise;
      end;

       //KosongTex(True);
   end //end Update
   else if PnOperasi.Caption='Hapus Data' then
   begin
      if MessageDlg('Data dengan'+#13+#10+btnnoreg.Text+#13+#10+
        'akan di Hapus, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
        begin
      try
      // delete
        SQL := 'delete from h_keluar where no_trans_k='+
        QuotedStr(btnnoreg.Text)+'';
        ExecSQL1(sql); //Hapus

        sql:= 'delete from detail_keluar'+
        ' where no_keluar='+QuotedStr(btnnoreg.Text);
        ExecSQL1(sql);


        ShowMessage('Hapus / :'+ btnnoreg.Text);
        //KosongTex(True);
        //AktifControl(Self,PnInput,False);
      except
             ShowMessage('Hapus Keluar Gagal :'+ btnnoreg.Text);
        raise;
      end;
        end;
    end; //selesai Proses
      KosongTex(True);

end; //end tanya

  end;




  Procedure TFrmKeluar.TampilData_permintaan;
  var
    q2p,q3p : TMyQuery;
    qd2p : TMyQuery;
    spdetailusul : TMyStoredProc;
    spstok : TMyStoredProc;

    i2 : Integer;
  Begin
    q2p := TMyQuery.Create(nil);
    q2p.Connection := DmModul.con1;
  try
  q2p.Active := false;
  q2p.SQL.Clear;
  q2p.SQL.Text :='select * from h_usulan where no_trans_u='+QuotedStr(btnnoreg.Text)+'';
  q2p.Open;

  if q2p.RecordCount > 0 then
  begin



  if PnOperasi.Caption='Tambah Data' then
   begin
    //    AktifControl(Self,PnInput,True);
    //    AktifControl(Self,Pn_list,True);
    //BtnProses.Enabled:=True;

    end;
    KosongTex(True);
    btnnoreg.Text:=q2p.FieldByName('no_trans_u').AsString;
    dtp_buat.date:=q2p.FieldByName('tgl_usulan').AsDateTime;
    cxNoBbk.Text:=q2p.FieldByName('no_usulan').AsString;
    btn_ruangan.Text:=q2p.FieldByName('kd_ruang').AsString;
    //cbbpetugas.EditValue:=q2p.FieldByName('kd_memberi').AsString;
    //btn_penerima.Text:=q2p.FieldByName('kd_menerima').AsString;
    //cbo_gudang.EditValue:=q2p.FieldByName('gudang').AsString;

  end
  else
    begin
    ShowMessage( 'data kosong permintaan / Tidak ADA : ' + btnnoreg.Text );
    end;

  finally
    q2p.Close;
    q2p.Free;
  end;

  //tampil detail permintaan  SP
  spdetailusul := TMyStoredProc.Create(nil);
  spdetailusul.Connection := DmModul.con1;

  try
    //qd2p.Active := false;
    //qd2p.SQL.Clear;
    //qd2p.SQL.Text :='SELECT a.no_usul,a.kode_brg,a.no,b.nama_barang AS nama,a.jumlah,a.satuan' +
    //' FROM detail_usul a INNER JOIN m_barang b ON a.kode_brg = b.kode_brg WHERE a.no_usul LIKE'+
    //QuotedStr(btnnoreg.Text)+' ORDER BY id_usul';
    //qd2p.Open;
    spdetailusul.Close;
    spdetailusul.StoredProcName := 'SP_ambilpermintaandetail' ;
    spdetailusul.PrepareSQL;
    spdetailusul.ParamByName('cari').AsString := btnnoreg.Text;
    spdetailusul.Open;
  //Execute;

    if spdetailusul.Eof then
    begin
    Total;
    //Edtotal.Text := '0';
    Exit;
    end;

    for i2:=1 to Grid1.RowCount-1 do begin
        Grid1.Cells[0,i2]:='';
        Grid1.Cells[1,i2]:='';
        Grid1.Cells[2,i2]:='';
        Grid1.Cells[3,i2]:='';
        Grid1.Cells[4,i2]:='';
        Grid1.Cells[5,i2]:='';
        Grid1.Cells[6,i2]:='';
        Grid1.Cells[7,i2]:='';
    end;

    counter:=0;
    if  spdetailusul.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= spdetailusul.RecordCount+1;

  spstok := TMyStoredProc.Create(nil);
  spstok.Connection := DmModul.con1;



	//no_transaksi,no,kode_brg,nama,qty,satuan,harga,total
    while not spdetailusul.Eof do begin
          Inc(counter);
          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=dataRow(spdetailusul.FieldByName('id_usul'),'');
          Grid1.Cells[2,counter]:=dataRow(spdetailusul.FieldByName('kode_brg'),'-');
          Grid1.Cells[3,counter]:=dataRow(spdetailusul.FieldByName('nama'),'-');
          Grid1.Cells[4,counter]:=dataRow(spdetailusul.FieldByName('jumlah'),'0');
          Grid1.Cells[5,counter]:=dataRow(spdetailusul.FieldByName('satuan'),'-');

          //ambil stok
          spstok.Close;
          spstok.StoredProcName := 'sp_stok' ;
          spstok.PrepareSQL;
          spstok.ParamByName('tgl1').AsString := FormatDateTime('yyyy-mm-dd',DTPawal.date); //key stok Awal Tahun
          spstok.ParamByName('tgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key Tgl Akhir
          spstok.ParamByName('cari').AsString := dataRow(spdetailusul.FieldByName('kode_brg'),'-');
          //spstok.ParamByName('cari').AsString := dataRow(spdetailusul.FieldByName('kode_brg'),'-');
          spstok.Open;

          Grid1.Cells[6,counter]:=dataRow(spstok.FieldByName('stok'),'-');
          spdetailusul.Next;

          // data ambil dari permintaan
          jml:=StrToFloat(Grid1.Cells[4,counter]);
          stok_sekarang:=StrToFloat(Grid1.Cells[6,counter]);//stok sekarang
          stok_mutasi:=stok_sekarang-jml;
          //Grid1.Cells[7,counter]:=FloatToStr(stok_mutasi); //stok_mutasi


    end;
   Total;
   //urut grid otomatis
   for i2:=1 to Grid1.RowCount-1 do begin
    Grid1.Cells[0,i2]:=IntToStr(i2);
    Grid1.Cells[1,i2]:=IntToStr(i2);
  end;

  finally
    spdetailusul.Close;
    spdetailusul.Free;
  end;
  //hitung_tran;
  end;



  Procedure TFrmKeluar.TampilData;
  var
    q2,q3 : TMyQuery;
    qd2 : TMyQuery;
    qd3 : TMyStoredProc;
    i2 : Integer;
  Begin
    q2 := TMyQuery.Create(nil);
    q2.Connection := DmModul.con1;
  try
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text :='select * from h_keluar where no_trans_k='+QuotedStr(btnnoreg.Text)+'';
  q2.Open;

  if q2.RecordCount > 0 then
  begin



  if PnOperasi.Caption='Ubah Data' then
   begin
    //    AktifControl(Self,PnInput,True);
    //    AktifControl(Self,Pn_list,True);
    //BtnProses.Enabled:=True;

    end;
    KosongTex(True);
    ambilRuang;
    btnnoreg.Text:=q2.FieldByName('no_trans_k').AsString;
    dtp_buat.date:=q2.FieldByName('tgl_keluar').AsDateTime;
    cxNoBbk.Text:=q2.FieldByName('no_bbk').AsString;
    btn_ruangan.Text:=q2.FieldByName('kd_ruang').AsString;
    cbbpetugas.EditValue:=q2.FieldByName('kd_memberi').AsString;
    btn_penerima.Text:=q2.FieldByName('kd_menerima').AsString;
    cbo_gudang.EditValue:=q2.FieldByName('gudang').AsString;

  end
  else
    begin
    ShowMessage( 'data kosong BBK / Tidak ADA : ' + btnnoreg.Text );
    end;

  finally
    q2.Close;
    q2.Free;
  end;

  //tampil detail
  qd2 := TMyQuery.Create(nil);
  qd2.Connection := DmModul.con1;

  try
    qd2.Active := false;
    qd2.SQL.Clear;
    qd2.SQL.Text :='select * from detail_keluar WHERE no_keluar like'+
    QuotedStr(btnnoreg.Text)+' order by no';
    qd2.Open;

    if qd2.Eof then
    begin
    Total;
    //Edtotal.Text := '0';
    Exit;
    end;

    for i2:=1 to Grid1.RowCount-1 do begin
        Grid1.Cells[0,i2]:='';
        Grid1.Cells[1,i2]:='';
        Grid1.Cells[2,i2]:='';
        Grid1.Cells[3,i2]:='';
        Grid1.Cells[4,i2]:='';
        Grid1.Cells[5,i2]:='';
        Grid1.Cells[6,i2]:='';
        Grid1.Cells[7,i2]:='';
    end;

    counter:=0;
    if  qd2.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= qd2.RecordCount+1;


	//no_transaksi,no,kode_brg,nama,qty,satuan,harga,total
  qd3 := TMyStoredProc.Create(nil);
  qd3.Connection := DmModul.con1;

    while not qd2.Eof do begin
          Inc(counter);
          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=dataRow(qd2.FieldByName('no'),'');
          Grid1.Cells[2,counter]:=dataRow(qd2.FieldByName('kode_brg'),'-');
          Grid1.Cells[3,counter]:=dataRow(qd2.FieldByName('nama'),'-');
          Grid1.Cells[4,counter]:=dataRow(qd2.FieldByName('jumlah'),'0');
          Grid1.Cells[5,counter]:=dataRow(qd2.FieldByName('satuan'),'-');


          //ambil stok
          qd3.Close;
          qd3.StoredProcName := 'sp_stok_real' ;
          qd3.PrepareSQL;
          qd3.ParamByName('tgl1').AsString := FormatDateTime('yyyy-mm-dd',DTPawal.date); //key stok Awal Tahun
          qd3.ParamByName('tgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key Tgl Akhir
          qd3.ParamByName('cari').AsString := Grid1.Cells[2,counter]; //dataRow(qd2.FieldByName('kode_brg'),'-')
          qd3.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
          qd3.Open;

          Grid1.Cells[6,counter]:=dataRow(qd3.FieldByName('stok'),'0');
          // data ambil dari permintaan
          jml:=StrToFloat(Grid1.Cells[4,counter]);
          stok_sekarang:=StrToFloat(Grid1.Cells[6,counter]);//stok sekarang
          stok_mutasi:=stok_sekarang-jml;

          if stok_mutasi <= 0  then
          begin
           Grid1.Cells[7,counter]:='0';
          end
        ELSE
        begin
          Grid1.Cells[7,counter]:=FloatToStr(stok_mutasi);
        end;


          //Grid1.Cells[7,counter]:=FloatToStr(stok_mutasi); //stok_mutasi
          qd2.Next;
    end;
   Total;

  finally
    qd2.Close;
    qd2.Free;
  end;
  //hitung_tran;
  end;

{
procedure TFrmKeluar.edhrgPropertiesChange(Sender: TObject);
begin
if edhrg.text = '' then Exit;
//hitung_total;
formatRupiah(edhrg);
end;
 }
{
 procedure TFrmKeluar.edhrgChange(Sender: TObject);
begin
if edhrg.text = '' then Exit;
//hitung_total;
formatRupiah(edhrg);
end;
 }
Function TFrmKeluar.GetNoBBK:string;
var nomor,faktur:string;
NO:integer;
begin
// nomor:='';
 nomor:=lastKASIR('BK'+formatdatetime('yymmdd',now())+'%');
 if nomor='' then
 faktur:='BK'+formatdatetime('yymmdd',now())+'-0001'
 else
 begin
   nomor:=copy(nomor,10,4);
   no:=strtoint(nomor);
   nomor:='0000'+inttostr(no+1);
   nomor:=copy(nomor,length(nomor)-3,4);
   faktur:='BK'+formatdatetime('yymmdd',now())+'-'+nomor;
 end;
result:=faktur;
end;

Function TFrmKeluar.Lastkasir(s:string):string;
begin
QCari.Close;
QCari.Connection:=DmModul.con1;
QCari.SQL.text:='SELECT MAX(no_trans_k) AS NOTA'+
     ' FROM h_keluar'+
     ' WHERE no_trans_k LIKE '+quotedstr(s);
QCari.Open;
if not QCari.IsEmpty then
result:=QCari.fieldbyname('NOTA').AsString
else
result:='';
end;

procedure TFrmKeluar.btn_penerimaPropertiesChange(Sender: TObject);
var
  SPcariPeg  : TMyStoredProc;
begin
SPcariPeg := TMyStoredProc.Create(nil);

  try
    SPcariPeg.Connection := DmModul.con1;
    SPcariPeg.Close;
    SPcariPeg.StoredProcName := 'SPAmbilPegawai';
    SPcariPeg.PrepareSQL;
    SPcariPeg.ParamByName('cari').AsString := btn_penerima.Text; //cv bringin
    //SPcariPeny.Execute;
    SPcariPeg.Open;
   if SPcariPeg.RecordCount > 0 then
  begin
    lbl_cv.Caption :=SPcariPeg.FieldByName('nama').AsString;
   end
  else
    begin
    lbl_cv.Caption :='Pegawai Blm Dipilih';
    end;

  finally
    SPcariPeg.Close;
    SPcariPeg.Free;
  end;

end;

procedure TFrmKeluar.btn_ruanganPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_user';
  LsvSetCol('Id|Nama|',
  '120|270|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('id_user');
  FCarisp.LsField.Items.Add('nama_user');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    btn_ruangan.Text:=nFieldCari[0];
    Lbl_nm_ruang.Caption:=nFieldCari[1];
    btn_ruangan.Style.Color:=clMoneyGreen;
    //cxButton.SetFocus;
  end;
end;

procedure TFrmKeluar.btn_ruanganPropertiesChange(Sender: TObject);
begin
ambilRuang;
end;

procedure TFrmKeluar.lv1CustomDrawItem(Sender: TCustomListView;
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

procedure TFrmKeluar.grid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
  //var   S: string;
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

procedure TFrmKeluar.btnnoregPropertiesChange(Sender: TObject);
begin
Edkodetransaksi.Text := btnnoreg.Text;
end;

procedure TFrmKeluar.SpeedButton3Click(Sender: TObject);
begin
// uRUT
   for i2:=1 to Grid1.RowCount-1 do begin
    Grid1.Cells[0,i2]:=IntToStr(i2);
    Grid1.Cells[1,i2]:=IntToStr(i2);
  end;
end;

procedure TFrmKeluar.SpeedButton4Click(Sender: TObject);
begin
PnOperasi.Caption := 'Tambah Data';
//btnnoreg.Text:=GetNoBBK;
btnnoreg.Enabled:=False;
KosongTex(True);
cxNoBbk.SetFocus;

  FCarisp2:=TFCarisp2.Create(Application);
  FCarisp2.Label4.Caption :='SP_permintaanruang';
  FCarisp2.EGudang.Text := FMenu.dxStatusBar1.Panels[2].Text;
  LsvSetCol('No|tgl.|No.permintaan|Ruangan|status|kode unit|kode_peminta|',
  '250|130|230|260|80|120|50|',FCarisp2.LsCari);
  FCarisp2.LsField.Items.Clear;
  FCarisp2.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp2.LsField.Items.Add('no_trans_u');
  FCarisp2.LsField.Items.Add('tgl_usulan');
  FCarisp2.LsField.Items.Add('no_usulan');
  FCarisp2.LsField.Items.Add('nama_user');
  FCarisp2.LsField.Items.Add('status');
  FCarisp2.LsField.Items.Add('kd_ruang');
  FCarisp2.LsField.Items.Add('nama_peminta');
  FCarisp2.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    btnnoreg.Text:=nFieldCari[0];
    btnnoreg.Style.Color:=clLtGray;
    //btn_ruangan.Text:= nFieldCari[5];
    //btn_ruangan.Text:= 'cccc';
    btn_ruangan.Style.Color:=clLtGray;
    Lbl_nm_ruang.Color:=clLtGray;
    Lbl_nm_ruang.Caption:=nFieldCari[3];
    btn_penerima.Text:= nFieldCari[6];

    TampilData_permintaan; // tampil dari Permintaan
    PnOperasi.Caption := 'Tambah Data';
    btnnoreg.Style.Color:=clcxLightGray;
    cxNoBbk.Text := '';
    cxNoBbk.SetFocus;
    btnnoreg.Enabled:=False;
  end;
end;

procedure TFrmKeluar.SpeedButton5Click(Sender: TObject);
begin
//showmessage(DateTimeToStr(dtp_buat.Date));

//Label3.Caption := FormatDateTime('yyyy/mm/dd hh:nn:ss',dtp_buat.Date +':'+cxlbljam.Caption);

end;

end.
