unit Un_masuk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, ComCtrls,
  AdvShapeButton, StdCtrls, Buttons, DB, DBAccess, MyAccess, Grids,
  BaseGrid, AdvGrid, MemDS, cxCalendar, cxMemo, AdvObj,nuest, DBGrids, CRGrid,
  AdvUtil;

type
  TFrm_masuk = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    btnnoreg: TcxButtonEdit;
    SpeedButton2: TSpeedButton;
    cxlbljam: TcxLabel;
    cxNoJalan: TcxTextEdit;
    cxlbl6: TcxLabel;
    cbo_gudang: TcxLookupComboBox;
    btnTrans: TAdvShapeButton;
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
    Label1: TLabel;
    cxLabel1: TcxLabel;
    btn_cv: TcxButtonEdit;
    Panel1: TPanel;
    lbl2: TLabel;
    edt_jml_barang: TEdit;
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
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
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
    edjml: TEdit;
    dtp_buat: TDateTimePicker;
    QCari: TMyQuery;
    dtpTglJalan: TDateTimePicker;
    btnBtnBaru: TSpeedButton;
    btnBtnUbah1: TSpeedButton;
    btnBtnHapus: TSpeedButton;
    btnsave: TSpeedButton;
    PnOperasi: TPanel;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    Label2: TLabel;
    dtp_awal: TDateTimePicker;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    dtp_akhir: TDateTimePicker;
    btn_caricv: TcxButtonEdit;
    btn_pencaian: TSpeedButton;
    Label3: TLabel;
    QcariMasuk: TMyQuery;
    dsMasuk: TMyDataSource;
    Grid2: TAdvStringGrid;
    Label4: TLabel;
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
    procedure dtpTglJalanChange(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
//    procedure edhrgPropertiesChange(Sender: TObject);
//    procedure edhrgChange(Sender: TObject);
    
    procedure btn_cvPropertiesChange(Sender: TObject);
    procedure edt_jml_barangChange(Sender: TObject);
    procedure lv1CustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure btnnoregPropertiesChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btn_caricvPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_pencaianClick(Sender: TObject);
    procedure btn_caricvPropertiesChange(Sender: TObject);
    procedure Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);

  private
    { Private declarations }
     Procedure Aturgrid;
     Procedure Aturgrid2;

     procedure hapus_grid;
     Procedure KosongTex(Kunci:Boolean);
     Procedure Tampil_combo_Petugas;
     Procedure Tampil_combo_gudang;
     Procedure cbo_satuan;
     Procedure tambah_grid;
     function Caribrg(nkode_cr: String):string;
     procedure Total;
     Procedure TampilData;


  public
    { Public declarations }
    Procedure buatno;
    Function GetNokasir:string;
    Function Lastkasir(s:string):string;
  end;

var
  Frm_masuk: TFrm_masuk;
  FCounter :integer;
  tambah: boolean;
  i,counter,hapus_baris,i1,i2,baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	sql,sql1,sql2,sql3,sql4,m1,m2,m3,m4,m5,ppn: String;
  qty,jml,harga,total_harga,disk,total2 : real ; // :integer;
  hrgd,n_t1d,ddisk,n_diskd,n_t2d,n_pajakd,JML_BRG :real;
  a1,a2,a3,a4,a5 ,a6 : real;
  cek_inputan:boolean;
  urut : string;
  i_no : integer;
  tgljalan,tglfaktur:string;
  selisih :Real;

implementation

uses UnModul,UFunctions,UF_dbsql,UnCarisp, UnCarisp2, UnMenu;

{$R *.dfm}

procedure TFrm_masuk.deleterow(mg:TStringGrid;ARow:integer);
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


procedure TFrm_masuk.FormCreate(Sender: TObject);
begin
  KosongTex(True);
  //Aturgrid;

end;


Procedure TFrm_masuk.tambah_grid;
//var
//addSat : TMyQuery;
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
  // harga:=StrToFloat(Grid1.Cells[5,Grid1.RowCount-1]);
  // total_harga:=jml*harga;
  // Grid1.Cells[6,Grid1.RowCount-1]:=FloatToStr(total_harga);
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

      //addSat := TMyQuery.Create(nil);
      //addSat.Connection := DmModul.con1;
        addSat.Close;
        addSat.SQL.Text:=
        'insert into satuan(satuan) Values('+
        QuotedStr(cbb_satuan.Text)+')';
        addSat.Execute;

      end;

addSat.Close;
}
//cbo_satuan;
//Total; //jumlah total
end;


Procedure TFrm_masuk.cbo_satuan;
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


Procedure TFrm_masuk.Aturgrid;
begin
  counter:=0;
  hapus_baris:=0;

  Grid1.ColCount:=8;
  Grid1.RowCount:=1;
  Grid1.FixedRowAlways := True;
  Grid1.Cells[0,0]:='No';	
  Grid1.Cells[1,0]:='No';
  Grid1.Cells[2,0]:='Kode';
  Grid1.Cells[3,0]:='Nama';
  Grid1.Cells[4,0]:='Jumlah';
  Grid1.Cells[5,0]:='Satuan';
  Grid1.Cells[6,0]:='stok Riil';
  Grid1.Cells[7,0]:='stok mutasi';
  Grid1.ColWidths[0]:=30;
  Grid1.ColWidths[1]:=30;
  Grid1.ColWidths[2]:=130;
  Grid1.ColWidths[3]:=450;
  Grid1.ColWidths[4]:=90;
  Grid1.ColWidths[5]:=60;
  Grid1.ColWidths[6]:=50;
  Grid1.ColWidths[7]:=80;
      //rata kanan
  //  RightEdit(ed_dtotal);
  
end;



Procedure TFrm_masuk.Aturgrid2;
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
  Grid2.Cells[3,0]:='No.Usulan';
  Grid2.Cells[4,0]:='CV';
  Grid2.Cells[5,0]:='Gudang';
  Grid2.ColWidths[0]:=30;
  Grid2.ColWidths[1]:=130;
  Grid2.ColWidths[2]:=90;
  Grid2.ColWidths[3]:=80;
  Grid2.ColWidths[4]:=180;
  Grid2.ColWidths[5]:=90;
      //rata kanan
  //  RightEdit(ed_dtotal);

end;


Procedure TFrm_masuk.KosongTex(Kunci:Boolean);
Begin
  if Kunci=True then
  begin
  btnnoreg.Text := '';
  btnnoreg.Text:=GetNokASIR;
  Tampil_combo_gudang;
  Tampil_combo_Petugas;
  dtp_buat.date:= now;

  //ed3.Text := FormatDateTime('yy-',dtglbuat.date);
  dtpTglJalan.date:= now;
  dtpTglJalan.ShowCheckbox :=true;
  dtpTglJalan.Checked := false;
  dtpTglJalan.Color := clred;
  cxNoJalan.Text := '';
  btn_cv.Text := '';
  aturgrid;
  cbo_satuan;
  btnnoreg.Enabled:=False;
  cbo_gudang.ItemIndex:=0;
  //cxcari.SetFocus;
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


Procedure TFrm_masuk.buatno;
var
  q_no: TMyQuery;
begin
{
tgl := FormatDateTime('yyMMdd',dtp_buat.Date) + '';
q_no := TMyQuery.Create(nil);

try
   q_no.Connection := DmModul.con1;
   q_no.Active := false;
   q_no.SQL.Clear;
   q_no.SQL.Add('Select Max(right(no_trans_m, 4)) from h_masuk ' +
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
  btnnoreg.Text := 'M' + tgl + urut;
   finally
    q_no.Close;
    q_no.Free;
  end;
  }
end;

procedure TFrm_masuk.SpeedButton2Click(Sender: TObject);
begin
btnnoreg.Text:=GetNokASIR;
end;

procedure TFrm_masuk.btnBtnBaruClick(Sender: TObject);
begin
KosongTex(True);
PnOperasi.Caption := 'Tambah Data';
//DtgMasuk.Date:=now();
btnnoreg.Text:=GetNokASIR;
btnnoreg.Enabled:=False;
cxNoJalan.SetFocus;
end;

procedure TFrm_masuk.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cv';
  LsvSetCol('No|Nama|',
  '150|370|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('kode');
  FCarisp.LsField.Items.Add('nama');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    btn_cv.Text:=nFieldCari[0];
    //lbl_cv.Caption:=nFieldCari[1];
    btn_cv.Style.Color:=clLime;
    btn_cv.SetFocus;
  end;
end;

 Procedure TFrm_masuk.Tampil_combo_gudang;
 var
 q2 : TMyQuery;

begin

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

  Procedure TFrm_masuk.Tampil_combo_Petugas;
 var
 q6 : TMyQuery;
begin

  q6 := TMyQuery.Create(nil);
  try
  q6.Connection := DmModul.con1;
  q6.Active := false;
  q6.SQL.Clear;
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


procedure TFrm_masuk.FormShow(Sender: TObject);
var Qambilawal : TMyQuery;
begin

  Qambilawal := TMyQuery.Create(nil);
    Qambilawal.Connection := DmModul.con1;
    Qambilawal.SQL.Clear;
    Qambilawal.SQL.Text := 'SELECT * FROM setting';
    Qambilawal.Open;
    dtp_awal.date:=Qambilawal.FieldByName('tglawal').AsDateTime;
    dtp_akhir.Date := now();


KosongTex(True);
PnOperasi.Caption := 'Tambah Data';
end;

procedure TFrm_masuk.btnBtnUbah1Click(Sender: TObject);
begin
  FCarisp2:=TFCarisp2.Create(Application);
  FCarisp2.Label4.Caption :='SP_Ambilmasuk';
  FCarisp2.EGudang.Text := FMenu.dxStatusBar1.Panels[2].Text;
  LsvSetCol('No|tgl.|No. Jalan|CV/PBF|Gudang|',
  '240|120|120|280|180|',FCarisp2.LsCari);
  FCarisp2.LsField.Items.Clear;
  FCarisp2.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp2.LsField.Items.Add('no_trans_m');
  FCarisp2.LsField.Items.Add('tgl_masuk');
  FCarisp2.LsField.Items.Add('no_jalan');
  FCarisp2.LsField.Items.Add('NamaPerusahaan');
  FCarisp2.LsField.Items.Add('nama_gudang');
  //FCarisp.LsField.Items.Add('N_t1');
  FCarisp2.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    btnnoreg.Text:=nFieldCari[0];
    btnnoreg.Style.Color:=clLtGray;
    TampilData;
    PnOperasi.Caption := 'Ubah Data';
    btnnoreg.Style.Color:=clcxLightGray;
    cxNoJalan.SetFocus;
  end;
end;

procedure TFrm_masuk.btnBtnHapusClick(Sender: TObject);
begin
PnOperasi.Caption := 'Hapus Data';
end;

procedure TFrm_masuk.btn1Click(Sender: TObject);
begin
tambah_grid;
end;

procedure TFrm_masuk.cxcariKeyPress(Sender: TObject; var Key: Char);
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


function TFrm_masuk.Caribrg(nkode_cr: String):string;
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

procedure TFrm_masuk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frm_masuk:=nil;
  Action:=caFree;
end;

procedure TFrm_masuk.lv1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_masuk.lv1KeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_masuk.edjmlKeyPress(Sender: TObject; var Key: Char);
begin
//if not(Key in ['0'..'9',#8,#46,#39,#37]) then
//   Key:=#0;
end;

procedure TFrm_masuk.edjmlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key=13) then
   BEGIN
    btn1Click(Sender);
    cxcari.SetFocus;
    cxcari.Text:='';
    end;
    
end;


procedure TFrm_masuk.Total;

begin
JML_BRG:=0;
   for i:=1 to Grid1.RowCount-1 do begin
        JML_BRG:=JML_BRG+strtofloat(Grid1.Cells[4,i]);
   end;
   edt_jml_barang.Text:=floattostr(JML_BRG);
end;

procedure TFrm_masuk.ed2PropertiesChange(Sender: TObject);
begin
if chk1.checked then
    grid1.NarrowDown(ed2.Text,2)
  else
    grid1.NarrowDown(ed2.Text);
end;


procedure TFrm_masuk.hapus_grid;
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




procedure TFrm_masuk.btn2Click(Sender: TObject);
begin
 if (cek_baris='') then begin
    ShowMessage('Silahkan pilih grid di hapus/Urutkan');
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

procedure TFrm_masuk.grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
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
    //      harga:=StrToFloat(Grid1.Cells[5,arow]);
    //  total_harga:=jml*harga;
    //  Grid1.Cells[6,arow]:=FloatToStr(total_harga);
      Total;
      end;
      end;
 end;
end;

procedure TFrm_masuk.Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
    btnnoreg.Text:=Grid2.Cells[1,AROW];
    btnnoreg.Style.Color:=clLtGray;
    TampilData;
    PnOperasi.Caption := 'Ubah Data';
    btnnoreg.Style.Color:=clcxLightGray;
    //cxNoBbk.SetFocus;
    btnnoreg.Enabled:=False;
end;

procedure TFrm_masuk.grid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    1: HAlign := taCenter;
    2,3: HAlign := taLeftJustify;
    4,6,7: HAlign := taRightJustify;
  end;
end;

procedure TFrm_masuk.grid1GetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
begin
isFloat := Acol in [4];
case ACol of
  4: Floatformat :='%.2n';

end;
end;

procedure TFrm_masuk.ed_dtotalChange(Sender: TObject);
begin
  // formatRupiah(ed_dtotal);
  // edtotal.Text := ed_dtotal.Text;
end;

procedure TFrm_masuk.grid1GetCellColor(Sender: TObject; ARow,
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
procedure TFrm_masuk.tmr1Timer(Sender: TObject);
begin
cxlbljam.caption:=TimeToStr(Now);
PnOperasi.Font.Color := Trunc(clBLUE*random);
end;

procedure TFrm_masuk.edjmlPropertiesChange(Sender: TObject);
begin
if edjml.Text = '' then Exit;
a1 := StrToFloat(edjml.Text);
//a2 := StrToFloat(clearDot(edhrg.Text));
//a3 := a1 * a2;
//cxtotal.Text := FloatToStr(a3);
end;

procedure TFrm_masuk.chk1Click(Sender: TObject);
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
procedure TFrm_masuk.dtpTglJalanChange(Sender: TObject);
begin
if dtpTglJalan.Checked THEN
      BEGIN
       dtpTglJalan.Color := clGreen;
       cxLabel9.Style.Font.Color := clGreen;
      END
    else
    BEGIN
     dtpTglJalan.Color := clRed;
     cxLabel9.Style.Font.Color := clRED;
  end;

end;

procedure TFrm_masuk.btnsaveClick(Sender: TObject);
var
// simpan cbb
cbogudang,cbopetugas:string;
selisih :Real;
sp_sim : TMyQuery;
qv : TMyQuery;

begin

//if Validasi=False then exit;
    for i1:=1 to Grid1.RowCount-1 do begin
    Grid1.Cells[0,i1]:=IntToStr(i1);
    Grid1.Cells[1,i1]:=IntToStr(i1);
  end;


  if dtpTglJalan.Checked then
   tgljalan:=FormatDateTime('yyyy/mm/dd',dtpTglJalan.Date)
   else
   tgljalan:='';

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


   if (Trim(btn_cv.Text)='')  then
  //or (Trim(edt2.Text)='') or (Trim(edt3.Text)='') or (Trim(edt4.Text)='') or (Trim(edt5.Text)=�) then
        begin
        ShowMessage('nama PBF/CV Yang Kosong..??');
        btn_cv.SetFocus;
        Exit;
        end;

  if (Trim(cbbpetugas.Text)='')  then
  //or (Trim(edt2.Text)='') or (Trim(edt3.Text)='') or (Trim(edt4.Text)='') or (Trim(edt5.Text)=�) then
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

   //Simpan data
  sp_sim := TMyQuery.Create(nil);
  qv := TMyQuery.Create(nil);

  if MessageDlg('Data dengan'+#13+#10+btnnoreg.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin

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
       btnnoreg.Text:=GetNokasir;

       end;
        exit;
      end;
      try
         sql1 := 'insert into h_masuk (no_trans_m,tgl_create,tgl_masuk,'+
        'petugas,gudang,cv,tgljalan,no_jalan) Values('+
        QuotedStr(btnnoreg.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_buat.Date))+','+
        QuotedStr(cbopetugas)+','+
        QuotedStr(cbogudang)+','+
        QuotedStr(btn_cv.Text)+','+
        QuotedStr(tgljalan)+','+
        QuotedStr(cxNoJalan.Text)+')';
        ExecSQL1(sql1);

       //ShowMessage('Simpan Baru sukses :'+ btnnoreg.Text);
       //KosongTex(True);
       //AktifControl(Self,PnInput,False);
         except
        ShowMessage('Simpan baru gagal :'+ btnnoreg.Text);
        raise;
      end;


      //simpan Detail
      try
        for i1:=1 to Grid1.RowCount-1 do begin
             sql2:='INSERT INTO detail_masuk (no_masuk,tgl_create,tgl_masuk,no,kode_brg,nama,jumlah,satuan)'+
             ' Values('+
             QuotedStr(btnnoreg.Text)+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_buat.Date))+','+
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
      sql1 :='Update h_masuk set no_trans_m='+ QuotedStr(btnnoreg.Text)+
      ',tgl_masuk='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_buat.Date))+
      ',no_jalan='+QuotedStr(cxNoJalan.Text)+
      ',tgljalan='+QuotedStr(tgljalan)+
      ',gudang='+QuotedStr(cbogudang)+
      ',petugas='+QuotedStr(cbopetugas)+
      ',cv='+QuotedStr(btn_cv.Text)+
      ' where no_trans_m='+QuotedStr(btnnoreg.Text);
      ExecSQL1(sql1);

      except
        ShowMessage('Simpan Edit / ubah Gagal :'+ btnnoreg.Text);
        raise;
      end;

      //simpan Detail
       sql:= 'delete from detail_masuk'+
        ' where no_masuk='+QuotedStr(btnnoreg.Text);
        ExecSQL1(sql);

         try

                for i1:=1 to Grid1.RowCount-1 do begin
              sql2:='INSERT INTO detail_masuk (no_masuk,tgl_create,tgl_masuk,no,kode_brg,nama,jumlah,satuan)'+
             ' Values('+
             QuotedStr(btnnoreg.Text)+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_buat.Date))+','+
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
         SQL := 'delete from h_Masuk where no_trans_m='+
        QuotedStr(btnnoreg.Text)+'';
        ExecSQL1(sql); //Hapus

        sql:= 'delete from detail_masuk'+
        ' where no_masuk='+QuotedStr(btnnoreg.Text);
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


Procedure TFrm_masuk.TampilData;
  var
    q2,q3 : TMyQuery;
    qd2 : TMyQuery;
    qd4 : TMyStoredProc;
    i2,stok_sekarang,stok_mutasi : Integer;
  Begin
    q2 := TMyQuery.Create(nil);
    q2.Connection := DmModul.con1;
  try
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text :='select * from h_masuk where no_trans_m='+QuotedStr(btnnoreg.Text)+'';
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
    // cv briging
    //lbl_cv.Caption:=q3.FieldByName('NamaPerusahaan').AsString;
    btnnoreg.Text:=q2.FieldByName('no_trans_m').AsString;
    dtp_buat.date:=q2.FieldByName('tgl_masuk').AsDateTime;


    //tanggal SPK
    if VarIsNull(q2['tgljalan']) then
      begin
    dtpTglJalan.ShowCheckbox :=true;
    dtpTglJalan.Checked := false;
    dtpTglJalan.Color := clred;
    end
   else
      begin
      dtpTglJalan.Date:=q2.FieldByName('tgljalan').AsDateTime;
      dtpTglJalan.Color := clMenu;
    end;
   cxNoJalan.Text:=q2.FieldByName('no_jalan').AsString;
   cbo_gudang.EditValue:=q2.FieldByName('gudang').AsString;
   cbbpetugas.EditValue:=q2.FieldByName('petugas').AsString;
   btn_cv.Text:=q2.FieldByName('cv').AsString;

  end
  else
    begin
    ShowMessage( 'data kosong Masuk / Tidak ADA : ' + btnnoreg.Text );
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
    qd2.SQL.Text :='select * from detail_masuk WHERE no_masuk like'+
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

    qd4 := TMyStoredProc.Create(nil);
    qd4.Connection := DmModul.con1;

	//no_transaksi,no,kode_brg,nama,qty,satuan,harga,total
    while not qd2.Eof do begin
          Inc(counter);
          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=dataRow(qd2.FieldByName('no'),'');
          Grid1.Cells[2,counter]:=dataRow(qd2.FieldByName('kode_brg'),'-');
          Grid1.Cells[3,counter]:=dataRow(qd2.FieldByName('nama'),'-');
          Grid1.Cells[4,counter]:=dataRow(qd2.FieldByName('jumlah'),'0');
          Grid1.Cells[5,counter]:=dataRow(qd2.FieldByName('satuan'),'-');

          //ambil stok
          qd4.Close;
          qd4.StoredProcName := 'sp_stok_real' ;
          qd4.PrepareSQL;
          qd4.ParamByName('tgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp_awal.date); //key stok Awal Tahun
          qd4.ParamByName('tgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key Tgl Akhir
          qd4.ParamByName('cari').AsString := Grid1.Cells[2,counter];
          qd4.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
          qd4.Open;

          Grid1.Cells[6,counter]:=dataRow(qd4.FieldByName('stok'),'0');
          // data ambil dari permintaan
          jml:=StrToFloat(Grid1.Cells[4,counter]);

      {
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
       }
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
procedure TFrm_masuk.edhrgPropertiesChange(Sender: TObject);
begin
if edhrg.text = '' then Exit;
//hitung_total;
formatRupiah(edhrg);
end;
 }
 {
 procedure TFrm_masuk.edhrgChange(Sender: TObject);
begin
if edhrg.text = '' then Exit;
//hitung_total;
formatRupiah(edhrg);
end;
  }
Function TFrm_masuk.GetNokASIR:string;
var nomor,faktur:string;
NO:integer;
begin
// nomor:='';
 nomor:=lastKASIR('SJ'+formatdatetime('yymmdd',now())+'%');
 if nomor='' then
 faktur:='SJ'+formatdatetime('yymmdd',now())+'-0001'
 else
 begin
   nomor:=copy(nomor,10,4);
   no:=strtoint(nomor);
   nomor:='0000'+inttostr(no+1);
   nomor:=copy(nomor,length(nomor)-3,4);
   faktur:='SJ'+formatdatetime('yymmdd',now())+'-'+nomor;
 end;
result:=faktur;
end;

Function TFrm_masuk.Lastkasir(s:string):string;
begin
QCari.Close;
QCari.Connection:=DmModul.con1;
QCari.SQL.text:='SELECT MAX(no_trans_m) AS NOTA'+
     ' FROM h_masuk'+
     ' WHERE no_trans_m LIKE '+quotedstr(s);
QCari.Open;
if not QCari.IsEmpty then
result:=QCari.fieldbyname('NOTA').AsString
else
result:='';
end;


procedure TFrm_masuk.btn_cvPropertiesChange(Sender: TObject);
var
  SPcariPeny  : TMyStoredProc;
begin
SPcariPeny := TMyStoredProc.Create(nil);

  try
    SPcariPeny.Connection := DmModul.con1;
    SPcariPeny.Close;
    SPcariPeny.StoredProcName := 'sp_ambilCV';
    SPcariPeny.PrepareSQL;
    SPcariPeny.ParamByName('cari').AsString := btn_cv.Text; //cv bringin
    //SPcariPeny.Execute;
    SPcariPeny.Open;
   if SPcariPeny.RecordCount > 0 then
  begin
    lbl_cv.Caption :=SPcariPeny.FieldByName('nama').AsString;
   end
  else
    begin
    lbl_cv.Caption :='Perusahaan Blm Dipilih';
    end;

  finally
    SPcariPeny.Close;
    SPcariPeny.Free;
  end;

end;

procedure TFrm_masuk.edt_jml_barangChange(Sender: TObject);
begin
//edtotal.Text := edt_jml_barang.Text;
end;

procedure TFrm_masuk.lv1CustomDrawItem(Sender: TCustomListView;
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

procedure TFrm_masuk.btnnoregPropertiesChange(Sender: TObject);
begin
btnTrans.Text := btnnoreg.Text;
end;

procedure TFrm_masuk.SpeedButton3Click(Sender: TObject);
begin
// uRUT
   for i2:=1 to Grid1.RowCount-1 do begin
    Grid1.Cells[0,i2]:=IntToStr(i2);
    Grid1.Cells[1,i2]:=IntToStr(i2);
  end;

end;

procedure TFrm_masuk.btn_caricvPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cv';
  LsvSetCol('No|Nama|',
  '150|370|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('kode');
  FCarisp.LsField.Items.Add('nama');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    btn_caricv.Text:=nFieldCari[0];
    //lbl_cv.Caption:=nFieldCari[1];
    btn_caricv.Style.Color:=clLime;
    btn_caricv.SetFocus;
  end;
end;

procedure TFrm_masuk.btn_pencaianClick(Sender: TObject);
var
  spdatam : TMyStoredProc;
  i : integer;
begin
  spdatam:= TMyStoredProc.Create(nil);
  spdatam.Connection := DmModul.con1;

  try

    spdatam.Close;
    spdatam.StoredProcName := 'sp_cariMasuk_tgl';
    spdatam.PrepareSQL;
    spdatam.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp_awal.date); //key ba
    spdatam.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key ba
    spdatam.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    //spdatam.ParamByName('cari').AsString := cxcariKeluar.text;
    spdatam.Open;

    if spdatam.Eof then
    begin
    ShowMessage('data tidak ada :');
    exit;
    end;

     Aturgrid2;


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
      if  spdatam.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= spdatam.RecordCount+1;


    while not spdatam.Eof do begin
          Inc(counter);   //IntToStr(counter);
          Grid2.Cells[0,counter]:=IntToStr(counter); //No.
          Grid2.Cells[1,counter]:=spdatam.FieldByName('no_trans_m').AsString;
          Grid2.Cells[2,counter]:=spdatam.FieldByName('tgl_masuk').AsString;
          Grid2.Cells[3,counter]:=spdatam.FieldByName('no_jalan').AsString;
          Grid2.Cells[4,counter]:=spdatam.FieldByName('Nmcv').AsString;
          Grid2.Cells[5,counter]:=spdatam.FieldByName('gudang').AsString;
          {
          grid2.ShowSelection := True;
          for i := 1 to grid2.RowCount - 1 do
          grid2.AddCheckBox(4, i, false, false);
           }
          spdatam.Next;
    end;

   {
    crGrid.Columns.Clear;
    DBGridAddColumn(crGrid,'no_trans_m','Trans',70,1);
    DBGridAddColumn(crGrid,'tgl_masuk','tgl',70,1);
    //DBGridAddColumn(crGrid,'kode_brg','KODE',60,1);
    //DBGridAddColumn(crGrid,'nama','NAMA BARANG',230,1);
    //DBGridAddColumn(crGrid,'jumlah','Qty',30,3);
    DBGridAddColumn(crGrid,'no_jalan','No. Masuk',50,3);
    DBGridAddColumn(crGrid,'NamaPerusahaan','CV/PBF',140,1);
    }
    Label4.Caption := inttostr(spdatam.RecordCount) +' record ';

  finally
     spdatam.Close;
  end;

  {
  sql:='SELECT b.cv,a.tgl_masuk,a.kode_brg,a.nama,a.jumlah,a.satuan,b.no_jalan,b.gudang,c.NamaPerusahaan'+
        ' FROM detail_masuk a '+
        ' INNER JOIN h_masuk b ON a.no_masuk = b.no_trans_m '+
        ' INNER JOIN db_peng23.m_perusahaan c ON c.NoVendor = b.cv '+
        ' WHERE b.cv = '+quotedstr(btn_caricv.Text) +
        ' ORDER BY a.tgl_masuk desc';

        QcariMasuk.Close;
        QcariMasuk.Connection:=DmModul.con1;
        QcariMasuk.SQL.Text:=sql;
        QcariMasuk.Open;

       dsMasuk.DataSet:=QcariMasuk;
       crGrid.DataSource:=dsMasuk;
  }


end;

procedure TFrm_masuk.btn_caricvPropertiesChange(Sender: TObject);
var
  SPcariPeny2  : TMyStoredProc;
begin
SPcariPeny2 := TMyStoredProc.Create(nil);

  try
    SPcariPeny2.Connection := DmModul.con1;
    SPcariPeny2.Close;
    SPcariPeny2.StoredProcName := 'sp_ambilCV';
    SPcariPeny2.PrepareSQL;
    SPcariPeny2.ParamByName('cari').AsString := btn_caricv.Text; //cv bringin
    //SPcariPeny.Execute;
    SPcariPeny2.Open;
   if SPcariPeny2.RecordCount > 0 then
  begin
    Label2.Caption :=SPcariPeny2.FieldByName('nama').AsString;
   end
  else
    begin
    Label2.Caption :='Perusahaan Blm Dipilih';
    end;

  finally
    SPcariPeny2.Close;
    SPcariPeny2.Free;
  end;

end;

end.
