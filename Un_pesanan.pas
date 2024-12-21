unit Un_pesanan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,jpeg,uDBXls,DBTables, DBAccess, MyAccess,
  MemDS, Buttons, ComCtrls, Grids, BaseGrid, AdvGrid,DB, ADODB,
  ekbasereport, ekrtf, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Green, cxTextEdit, cxMaskEdit, cxButtonEdit, cxMemo,
  cxLabel, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
    dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, EditBtn, EXLReportExcelTLB,
  EXLReportBand, EXLReport, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, AdvObj,nuest, AdvUtil, cxCheckBox,ShellAPI;

type
  Tfrm_pesanan = class(TForm)
    Panel4: TPanel;
    BtnBaru: TSpeedButton;
    BtnUbah1: TSpeedButton;
    BtnHapus: TSpeedButton;
    BtnProses: TSpeedButton;
    PnOperasi: TSpeedButton;
    EkRTF2: TEkRTF;
    Psd: TMyQuery;
    PSc: TMyQuery;
    EkRTF1: TEkRTF;
    qheader: TMyStoredProc;
    qdetail: TMyStoredProc;
    btn1: TSpeedButton;
    BitBtn8: TBitBtn;
    dlgOpen1: TOpenDialog;
    lbl1: TLabel;
    exlrprt1: TEXLReport;
    ds1: TDataSource;
    mycmnd1: TMyCommand;
    ds2: TMyDataSource;
    ds3: TMyDataSource;
    ds4: TMyDataSource;
    cxlbl6: TcxLabel;
    tmr1: TTimer;
    pgc1: TPageControl;
    ts1: TTabSheet;
    lbl3: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label7: TLabel;
    ed_no: TEdit;
    ed_jml: TEdit;
    ed_hrg: TEdit;
    Ed_t1: TEdit;
    ed_nama: TcxButtonEdit;
    ed_satuan: TComboBox;
    pnl1: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SpeedButton3: TSpeedButton;
    Grid1: TAdvStringGrid;
    ed_tjumlah: TEdit;
    ed_perpjk: TEdit;
    ed_pajak: TEdit;
    Edtotal: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    eddana: TEdit;
    pgc2: TPageControl;
    ts4: TTabSheet;
    Pn1: TPanel;
    Label1: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label51: TLabel;
    Label18: TLabel;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    ed_total: TEdit;
    dtglb: TDateTimePicker;
    ed_cvnm: TEdit;
    cbo_cv: TcxButtonEdit;
    edterbilang: TcxMemo;
    cbo_no: TEditBtn;
    Ed_nomor: TEdit;
    cbb_jenis: TcxLookupComboBox;
    Button1: TButton;
    cxcari: TcxTextEdit;
    ts5: TTabSheet;
    pnl2: TPanel;
    Label23: TLabel;
    Label4: TLabel;
    Label19: TLabel;
    cbb_ppk: TcxLookupComboBox;
    cbb_pejabat: TcxLookupComboBox;
    cbb_pejabat_ba: TcxLookupComboBox;
    ts2: TTabSheet;
    Panel3: TPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton1: TSpeedButton;
    lblProses: TLabel;
    ed_k1: TEdit;
    ed_k2: TEdit;
    BitBtn17: TBitBtn;
    btnsama: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Ed_nmcv: TEdit;
    rg_cetak: TRadioGroup;
    cxBtnK1: TcxButtonEdit;
    cxBtnK2: TcxButtonEdit;
    ts3: TTabSheet;
    Label6: TLabel;
    dtglu: TDateTimePicker;
    ds5: TMyDataSource;
    pnl4: TPanel;
    cxlblcxcaribrg: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    lv1: TListView;
    Panel2: TPanel;
    cxlbl1: TcxLabel;
    dtp1: TDateTimePicker;
    cxlbl4: TcxLabel;
    dtp2: TDateTimePicker;
    btcari: TBitBtn;
    cxlbl5: TcxLabel;
    edcarinomor: TEdit;
    BitBtn1: TBitBtn;
    cxlbl7: TcxLabel;
    cbb_carijenis: TcxLookupComboBox;
    cxCheckBoxfilter: TcxCheckBox;
    edcaridata: TEdit;
    Grid2: TAdvStringGrid;
    BitBtn4: TBitBtn;
    btn2: TButton;
    btn3: TButton;
    BitBtn5: TBitBtn;
    lblcari: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure BtnBaruClick(Sender: TObject);
    procedure BtnProsesClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ed_totalChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ed_jmlChange(Sender: TObject);
    procedure ed_hrgChange(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure EdtotalChange(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure edcariChange(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure btnsamaClick(Sender: TObject);
    procedure btnlaodClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ed_tjumlahChange(Sender: TObject);
    procedure ed_perpjkChange(Sender: TObject);
    procedure cbo_noClick(Sender: TObject);
    procedure cbo_cvPropertiesChange(Sender: TObject);
    procedure cbo_cvPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ed_namaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtnUbah1Click(Sender: TObject);
    procedure cbo_noClickBtn(Sender: TObject);
    procedure Grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: String);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Edit(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure eddanaChange(Sender: TObject);
    procedure cbo_cvChange(Sender: TObject);
    procedure ed_namaKeyPress(Sender: TObject; var Key: Char);
    procedure lv1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lv1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_jmlKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxBtnK1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxBtnK2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxcariKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure btcariClick(Sender: TObject);
    procedure Grid2GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure cbb_jenisPropertiesChange(Sender: TObject);
    procedure Grid2GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure cxcbb_jenisPropertiesChange(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxCheckBoxfilterClick(Sender: TObject);
    procedure edcaridataChange(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }

  function dataRow(Field:TField;res:string):string;
  procedure Total;
  procedure deleterow(mg:TStringGrid; ARow:integer);
  procedure showData(cari:boolean;kt_kunci:string;nilai:string);
   //procedure cari_total(cari:boolean;kt_kunci:string;nilai:string);
  procedure KosongTex(Kunci: Boolean);
  Procedure cx_jenis;
  procedure cari;
  procedure tampildata;
  procedure hitung_brg;
  Procedure buatno;
  Procedure aturgrid;
  Procedure panggil_sat;
  function Caribrg(nkode_cr: String):string;
  Procedure cari_cv;
  Procedure buatno_sp;
  Function Lastkasir(s:string):string;
  Procedure TampilDatacariTanggal;
  Procedure aturgrid2;
  Procedure TampilDatacariNomor;
  procedure hitungTotal;
  Procedure cx_jenis2;
  Procedure TampilDataJenis;
  Procedure TampilDatacariJenis;
   //procedure cari_total;
  public
    { Public declarations }
   Procedure cx_peb_ppk;
   Procedure cx_pejabat;
   Procedure cx_pejabat_BA;
  end;

var
  frm_pesanan: Tfrm_pesanan;
  FCounter,i2 :integer;
  tambah: boolean;
  counter,hapus_baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	sql,sql1,sql2,sql3,m1,m2,m3,m4,m5,ppn: String;
  fileku,dir : string;
  trs : Boolean;
  datajenis:string;

implementation

uses Unmenu,uconfig,UnModul,
UnCarisp,UnCarisp2,UFunctions,UF_dbsql,UF_setting;

{$R *.dfm}

Procedure Tfrm_pesanan.cari_cv;
begin
FCarisp:=TFCarisp.Create(Application);

  FCarisp.Label4.Caption :='sp_cari_cv'; //nama sp
  LsvSetCol('No |nama|alamat|pemilik|kota|sebagai|',
  '120|340|220|170|80|120|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  //FCarisp.EdSearch.SetFocus;
  FCarisp.LsField.Items.Add('xxxx');
  FCarisp.LsField.Items.Add('code');
  FCarisp.LsField.Items.Add('nama');
  FCarisp.LsField.Items.Add('alamat');
  FCarisp.LsField.Items.Add('pemilik');
  //FCarisp.LsField.Items.Add('npwp');
  FCarisp.LsField.Items.Add('kota');
  FCarisp.LsField.Items.Add('sebagai');
  FCarisp.ShowModal;



  if nFieldCari[0]<>'' then
  begin
    cbo_cv.Text:=nFieldCari[0];
    ed_cvnm.Text:=nFieldCari[1];
    end;
end;


// procedure Tfrm_kwiu.cari_total(cari:boolean;kt_kunci:string;nilai:string);
Procedure Tfrm_pesanan.cx_peb_ppk;
var
  q_ppk : TMyQuery;
begin
  q_ppk := TMyQuery.Create(nil);
  try
  q_ppk.Connection := DmModul.con1;
  q_ppk.Active := false;
  q_ppk.SQL.Clear;
  q_ppk.SQL.Text := 'Select * from m_ppk';
  q_ppk.Open;
    if q_ppk.RecordCount > 0 then
  begin
    ds4.DataSet := q_ppk;
    cbb_ppk.Properties.ListSource := ds4;
    cbb_ppk.Properties.ListOptions.ShowHeader := False;
    cbb_ppk.Properties.ListFieldNames := 'nama';
    cbb_ppk.Properties.KeyFieldNames := 'nip';

  end;
   finally


end;
end;


Procedure Tfrm_pesanan.cx_pejabat;
var
  q_j1 : TMyQuery;
begin
  q_j1 := TMyQuery.Create(nil);
  try
  q_j1.Connection := DmModul.con1;
  q_j1.Active := false;
  q_j1.SQL.Clear;
  q_j1.SQL.Text := 'Select * from m_pejabat';
  q_j1.Open;
    if q_j1.RecordCount > 0 then
  begin
  ds2.DataSet := q_j1;
  cbb_pejabat.Properties.ListSource := ds2;
  cbb_pejabat.Properties.ListOptions.ShowHeader := False;
  cbb_pejabat.Properties.ListFieldNames := 'nama';
  cbb_pejabat.Properties.KeyFieldNames := 'nip';

  end;
   finally


end;
end;


Procedure Tfrm_pesanan.cx_pejabat_BA;
var
  q_j2 : TMyQuery;
begin
  q_j2 := TMyQuery.Create(nil);
  try
  q_j2.Connection := DmModul.con1;
  q_j2.Active := false;
  q_j2.SQL.Clear;
  q_j2.SQL.Text := 'Select * from m_pejabatba';
  q_j2.Open;
    if q_j2.RecordCount > 0 then
  begin
  ds3.DataSet := q_j2;
  cbb_pejabat_ba.Properties.ListSource := ds3;
  cbb_pejabat_ba.Properties.ListOptions.ShowHeader := False;
  cbb_pejabat_ba.Properties.ListFieldNames := 'namab';
  cbb_pejabat_ba.Properties.KeyFieldNames := 'nipb';

  end;
   finally

end;
end;




procedure Tfrm_pesanan.cxBtnK1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin

 FCarisp2:=TFCarisp2.Create(Application);
 FCarisp2.Label4.Caption :='sp_cari_pesanan_SP';
 FCarisp2.EGudang.Text := FMenu.StatusBar1.Panels[1].Text;
  LsvSetCol('No|Pelaksana|tgl|no. sp.|Jenis|total|',
  '150|350|100|120|170|120|',FCarisp2.LsCari);
  FCarisp2.LsField.Items.Clear;
  FCarisp2.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp2.LsField.Items.Add('no_trans_p'); //0
  FCarisp2.LsField.Items.Add('namaperusahaan');
  FCarisp2.LsField.Items.Add('tgl_pesanan');
  FCarisp2.LsField.Items.Add('Pesanan_No');
  FCarisp2.LsField.Items.Add('nmjenis');
  FCarisp2.LsField.Items.Add('total');
  FCarisp2.ShowModal;


//  FCarisp:=TFCarisp.Create(Application);
//  FCarisp.Label4.Caption :='sp_cari_pesanan_SP';
//  LsvSetCol('No|Pelaksana|tgl|no. sp.|Jenis|total|',
//  '150|250|100|120|170|120|',FCarisp.LsCari);
//  FCarisp.LsField.Items.Clear;
//  FCarisp.LsField.Items.Add('xxx'); //sp
//  //nama colom
//  FCarisp.LsField.Items.Add('no_trans_p'); //0
//  FCarisp.LsField.Items.Add('namaperusahaan');
//  FCarisp.LsField.Items.Add('tgl_pesanan');
//  FCarisp.LsField.Items.Add('Pesanan_No');
//  FCarisp.LsField.Items.Add('nmjenis');
//  FCarisp.LsField.Items.Add('total');
//  //FCarisp.LsField.Items.Add('total');
//  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    cxBtnK1.Text:=nFieldCari[0];
    Ed_nmcv.Text:=nFieldCari[1]+'-'+nFieldCari[0];//+'-'+FormatDateTime('yyyy/mm/dd',nFieldCari[2]);
    //KosongTex(False);
    //AktifControl(Self,Pn1,True);
    //ednokwi.Enabled:=True;
    ed_k1.Color:=clWhite;
    //ed_k1.SetFocus;
    //tampildata;
    //PnOperasi.Caption:='Ubah Data';
  end;
end;

procedure Tfrm_pesanan.cxBtnK2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_pesanan_SP';
  LsvSetCol('No|Pelaksana|tgl|no. sp.|Jenis|total|',
  '150|250|100|120|170|120|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('no_trans_p');
  FCarisp.LsField.Items.Add('namaperusahaan');
  FCarisp.LsField.Items.Add('tgl_pesanan');
  FCarisp.LsField.Items.Add('Pesanan_No');
  FCarisp.LsField.Items.Add('nmjenis');
  FCarisp.LsField.Items.Add('total');
  //FCarisp.LsField.Items.Add('total');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    cxBtnK2.Text:=nFieldCari[0];
  end;
end;

procedure Tfrm_pesanan.cxcariKeyPress(Sender: TObject; var Key: Char);
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




procedure Tfrm_pesanan.cxcbb_jenisPropertiesChange(Sender: TObject);
begin
  TampilDataJenis;
end;

procedure Tfrm_pesanan.cxCheckBoxfilterClick(Sender: TObject);
//var
//  i:integer;
begin
      if cxCheckBoxfilter.Checked   THEN
      BEGIN
      edcaridata.Visible := True;
      END
    else
    BEGIN
     edcaridata.Visible := False;
  end;

//  with Grid2 do
//  begin
//    filteractive:=false;
//    filter.Clear;
//    for i:=fixedcols to colcount-1 do
//    begin
//      if (cells[i,0]<>'') then
//      with filter.add do
//      begin
//        condition := Cells[i,0];
//        column:= i;
//      end;
//    end;
//    filteractive := True;
//  end;

end;

procedure Tfrm_pesanan.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
tampildatajenis;
end;

Procedure Tfrm_pesanan.cx_jenis;
var
  q_jns : TMyQuery;
begin
  q_jns := TMyQuery.Create(nil);
  try
  q_jns.Connection := DmModul.con1;
  q_jns.Active := false;
  q_jns.SQL.Clear;
  q_jns.SQL.Text := 'Select * from m_jenis where ak =' + QuotedStr(''+FMenu.StatusBar1.Panels[1].Text+'')+
   ' order by U_jenis';
  q_jns.Open;
    if q_jns.RecordCount > 0 then
  begin
  ds1.DataSet := q_jns;
  cbb_jenis.Properties.ListSource := ds1;
  cbb_jenis.Properties.ListOptions.ShowHeader := False;
  cbb_jenis.Properties.ListFieldNames := 'U_jenis';
  cbb_jenis.Properties.KeyFieldNames := 'no_jns';

  end;
   finally

end;
end;

Procedure Tfrm_pesanan.cx_jenis2;
var
  q_jns2 : TMyQuery;
begin
  q_jns2 := TMyQuery.Create(nil);
  try
  q_jns2.Connection := DmModul.con1;
  q_jns2.Active := false;
  q_jns2.SQL.Clear;
  q_jns2.SQL.Text := 'Select * from m_jenis where ak =' + QuotedStr(''+FMenu.StatusBar1.Panels[1].Text+'')+
   ' order by U_jenis';
  q_jns2.Open;
    if q_jns2.RecordCount > 0 then
  begin
  ds5.DataSet := q_jns2;
  cbb_carijenis.Properties.ListSource := ds5;
  cbb_carijenis.Properties.ListOptions.ShowHeader := False;
  cbb_carijenis.Properties.ListFieldNames := 'U_jenis';
  cbb_carijenis.Properties.KeyFieldNames := 'no_jns';

  end;
   finally

end;
end;

Procedure Tfrm_pesanan.panggil_sat;
var
    qcom1c : TMyQuery;
begin
    try
      qcom1c := TMyQuery.Create(nil);
      qcom1c.Connection := DmModul.con1;
      qcom1c.Close;
      qcom1c.SQL.Text:=
      'Select satuan From satuan order by satuan';
      qcom1c.Open;
      ed_satuan.Items.Clear;
while not qcom1c.Eof do
begin
ed_satuan.Items.Add(qcom1c.FieldByName('satuan').AsString);
qcom1c.Next;
end;

finally
qcom1c.Close;
qcom1c.Free;
end;
end;



Procedure Tfrm_pesanan.KosongTex(Kunci:Boolean);
var
j:Integer;

Begin
  if Kunci=True then
  begin
  buatno;
  //cbo_no.Text :='';
  Ed_nomor.Text :='';
  cbo_cv.Text :='';
  ed_cvnm.Text :='silakan pilih Supplier';

  dtglb.date :=date;
  ed_tjumlah.Text :='0';
  ed_perpjk.Text :='0';

  ed_total.Text :='0';
  edtotal.Text :='0';

  aturgrid;

 end;
  end;

procedure Tfrm_pesanan.cari;
var
 sel_kt_kunci : string;
begin
 {
 case CMB_CARI_KAT.ItemIndex of
     0:sel_kt_kunci:='no_peng';
     1:sel_kt_kunci:='NamaPerusahaan';
     2:sel_kt_kunci:='no_faktur';
     //3:sel_kt_kunci:='telp';
 end;
 }
 //showData(true,sel_kt_kunci,EdCari.Text);
 //showData(true,,EdCari.Text);

 end;



procedure Tfrm_pesanan.showData(cari:boolean;kt_kunci:string;nilai:string);
//var
// dt:TListItem;
// no:integer;
// //QJenisDDL : TMyQuery;
// sp_linkK: TMyStoredProc;


begin
// no:=0;
// ListView1.Clear;
//
// sp_linkK:= TMyStoredProc.Create(nil);
// sp_linkK.Connection := DmModul.con1;
//
// //QJenisDDL := TMyQuery.Create(nil);
//
// try
//    with sp_linkK do
// begin
//
//    Close;
//    StoredProcName := 'SP_pesanan';
//    PrepareSQL;
//    ParamByName('cari').AsString := EdCari.Text;
//    Execute;
//
//    label7.Caption := inttostr(recordcount); //jumlah
//
//   if not IsEmpty then
//      begin
//       while not Eof do
//       begin
//        Inc(no);
//        dt:=ListView1.Items.Add;
//        dt.Caption:=IntToStr(no);
//        dt.SubItems.Add(DmModul.dataRow(FieldByName('no_trans_p'),'-'));
//        dt.SubItems.Add(DmModul.dataRow(FieldByName('tgl_pesanan'),'-'));
//        dt.SubItems.Add(DmModul.dataRow(FieldByName('Pesanan_No'),'-'));
//        dt.SubItems.Add(dataRow(FieldByName('NamaPerusahaan'),'-'));
//        dt.SubItems.Add(formatRp(DmModul.dataRow(FieldByName('total'),'0')));
//        Next;
//       end;
//        //ListView1.SetFocus;
//        ListView1.Items.Item[0].Selected:=true;
//     end;
// end;
// finally
//    //sp_linkK.close;
// end;

end;



///Data Kosong///
function Tfrm_pesanan.dataRow(Field:TField;res:string):string;
begin
 if Field.IsNull then
    Result:=res
 else
    Result:=Field.Text;
end;

procedure Tfrm_pesanan.Total;
var i :integer;
tot_t1,tot_disk,tot_t2,tot_pjk,tot_bayar:real;
begin
tot_t1:=0;
for i:=1 to Grid1.RowCount-1 do
begin
tot_t1 :=tot_t1+strtofloat(Grid1.Cells[6,i]);
end;
ed_tjumlah.Text := floattostr(tot_t1);
end;


//Hapus grid
procedure Tfrm_pesanan.deleterow(mg:TStringGrid;ARow:integer);
var i,j,k:integer;
begin
        with mg do begin
                for i:=ARow to RowCount-1 do
                        for j:=0 to ColCount-1 do
                            Cells[j,i]:=Cells[j,i+1];

        RowCount:=RowCount-1;
        for k:=1 to RowCount-2 do
                Cells[0,k]:=IntToStr(k);
        end;
end;


//atur grid
Procedure Tfrm_pesanan.Aturgrid;
begin
  counter:=0;
  hapus_baris:=0;

  Grid1.ColCount:=7;
  Grid1.RowCount:=1;
  Grid1.FixedRowAlways := True;

  Grid1.Cells[0,0]:='NO';
  Grid1.Cells[1,0]:='No.';
  Grid1.Cells[2,0]:='Nama';
  Grid1.Cells[3,0]:='Jumlah';
  Grid1.Cells[4,0]:='Satuan';
  Grid1.Cells[5,0]:='Harga';
  Grid1.Cells[6,0]:='Total';

  Grid1.ColWidths[0]:=1;
  Grid1.ColWidths[1]:=20;
  Grid1.ColWidths[2]:=360;
  Grid1.ColWidths[3]:=80;
  Grid1.ColWidths[4]:=80;
  Grid1.ColWidths[5]:=90;
  Grid1.ColWidths[6]:=90;
  //clear grid
  //Grid1.ClearRows(1, Grid1.RowCount - 1);

end;


procedure Tfrm_pesanan.hitung_brg;
var
   hrg,jml,n_t1 :Real;
begin

  if ed_jml.Text='' then begin
//   ShowMessage('Masukan jumlah Qty!');
   ed_jml.SetFocus;
   exit;
  end;

  if ed_hrg.Text='' then begin
//   ShowMessage('Harga Satuan!');
   ed_hrg.SetFocus;
   exit;
  end;

  jml :=strtofloat(clearDot(ed_jml.Text));
  hrg :=strtofloat(clearDot(ed_hrg.Text));
  n_t1 := jml * hrg;

Ed_t1.text := floattostr (n_t1);
Ed_t1.Color:=clMoneyGreen;
formatRupiah(Ed_t1);
end;


procedure Tfrm_pesanan.FormClose(Sender: TObject; var Action: TCloseAction);
///var
 // I,n1,n2,n3,n4:integer;

begin
  //frm_Pesanan20:=nil;
  Action:=caFree;
end;

procedure Tfrm_pesanan.Timer1Timer(Sender: TObject);
begin
  {
if LbPerhatian.Font.Color=clBlack then
  LbPerhatian.Font.Color:=clRed
else
  LbPerhatian.Font.Color:=clBlack;
  }
  end;

  procedure Tfrm_pesanan.tmr1Timer(Sender: TObject);
begin
//cxlbljam.caption:=TimeToStr(Now);
PnOperasi.Font.Color := Trunc(clBLUE*random);
end;

Procedure Tfrm_pesanan.buatno;
    var
  urut,tgl: string;
  i : integer;
  Qkwi : TMyQuery;
begin
  //SP2008250002

  Qkwi := TMyQuery.Create(nil);
  Qkwi.Connection := DmModul.con1;
  tgl := FormatDateTime('yyMMdd', dtglb.Date) + '';

  try
  With Qkwi do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select Max(right(no_trans_p, 4)) from h_pesanan ' +
              'Where Mid(no_trans_p, 3,6) = ' + QuotedStr(tgl) + ';'); //JUMLAH NOMOR
      Active := true; //mid(no_kwi, 2,3)
    end;

  if Qkwi.Fields[0].AsString = '' then
    urut := '0001'
  else
    urut := IntToStr(Qkwi.Fields[0].AsInteger + 1);

  if length(urut) < 4 then              //000001
  begin
    for i := length(urut) to 3 do       // 5 = 00000
      urut := '0' + urut;
  end;
   cbo_no.Text :='SP'+tgl + urut;
   //cbo_no.Color := $FFCCCC;
  finally
     Qkwi.Close;
  end;

  end;

procedure Tfrm_pesanan.Button1Click(Sender: TObject);
begin

if cbb_jenis.Text = '' then
  begin
    Showmessage('cbb masih kosong');
    //cbb_jenis.SetFocus;
  end else
  if Ed_nomor.Text = '' then
  begin
    Showmessage('nomor masih kosong');
    Ed_nomor.SetFocus;
  end
  {
  else
  if Combobox1.Text ='' then
  begin
    Showmessage(' satuan masih kosong');
    Combobox1.SetFocus;
  end else
  if Edit4.Text ='' then
  begin
    Showmessage('stok masih kosong');
    Edit4.SetFocus;
  end else
  if Edit5.Text ='' then
  begin
    showmessage('harga masih kosong');
    edit5.SetFocus;
  end else
  begin
    with Ztable1 do
    begin
      Append;
      FieldByname('kdbarang').AsString := edit1.Text;
      FieldByName('namabarang').AsString := Edit2.Text;
      FieldByName('satuan').AsString := combobox1.Text;
      FieldByName('stok').AsInteger := strtoint(Edit4.Text);
      FieldByName('harga').AsInteger :=Strtoint(edit5.Text);
      Post;
      Showmessage('Data berhasil disimpan');
    end;
    }
  end;


function Validasi:Boolean;
begin
  with frm_Pesanan do
  begin


       if trim(cbb_jenis.text) ='' then
      begin
         ShowMessage('Jenis Pengadaan Kosong');
         //BitBtn19.Click;
         cbb_jenis.SetFocus;
         Result:=False;
         exit
     end;


     if trim(cbo_cv.Text) ='' then
      begin
         ShowMessage('Pelaksana CV');
         //cbo_cv.SetFocus;
         cari_cv;
         Result:=False;
         exit
     end;

     if trim(cbb_jenis.text) ='' then
      begin
         ShowMessage('Jenis Pengadaan Kosong');
         //BitBtn19.Click;
         cbb_jenis.SetFocus;
         Result:=False;
         exit
     end;

     if trim(cbb_ppk.text) ='' then
      begin
         ShowMessage('Tanda Tangan PPK Kosong');
         //BitBtn19.Click;
         cbb_ppk.SetFocus;
         Result:=False;
         exit
     end;

     if trim(cbb_pejabat.text) ='' then
      begin
         ShowMessage('Tanda Tangan Pejabat Pengadaan Kosong');
         //BitBtn19.Click;
         cbb_pejabat.SetFocus;
         Result:=False;
         exit
     end;

     if trim(cbb_pejabat_ba.text) ='' then
      begin
         ShowMessage('Tanda Pejabat Berita acara Kosong');
         //BitBtn19.Click;
         cbb_pejabat_ba.SetFocus;
         Result:=False;
         exit
     end;

  end;
  Result:=True;
end;


procedure Tfrm_pesanan.BtnBaruClick(Sender: TObject);
begin
 AktifControl(Self,Pn1, True);
 PnOperasi.Caption:='Tambah Data';
 aturgrid;
 Caption:='data baru' ;
 pgc1.ActivePageIndex:=0;
 KosongTex(True);
end;

procedure Tfrm_pesanan.BtnProsesClick(Sender: TObject);
var
  spkwip: TMyStoredProc;
  spd_sim: TMyStoredProc;

  qv : TMyQuery;
  comd : TMyCommand;
  i : Integer;
  cbojns,cboPejabat,cboPejabatBA,cbo_ppk : string;

begin
  if Validasi=False then exit;

if MessageDlg('Data dengan'+#13+#10+cbo_no.text+#13+#10+
        'akan di Simpan , ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin

    spkwip:= TMyStoredProc.Create(nil);
    spkwip.Connection := DmModul.con1;

    spd_sim:= TMyStoredProc.Create(nil);
    spd_sim.Connection:= DmModul.con1;

    qv:= TMyQuery.Create(nil);
    qv.Connection := DmModul.con1;

    ed_k1.Text := cbo_no.text;
    ed_k2.Text := cbo_no.text;


      // simpan Jenis
     if cbb_jenis.Text = '' then
    cbojns := ''
    else
    cbojns :=  cbb_jenis.EditValue;

      // simpan Pejabat
     if cbb_pejabat.Text = '' then
        cboPejabat := ''
    else
    cboPejabat :=  cbb_pejabat.EditValue;

    // simpan Pejabat BA
     if cbb_pejabat_ba.Text = '' then
        cboPejabatBA := ''
    else
    cboPejabatBA :=  cbb_pejabat_ba.EditValue;

    // simpan PPK
     if cbb_ppk.Text = '' then
        cbo_ppk := ''
    else
    cbo_ppk :=  cbb_ppk.EditValue;


    If PnOperasi.Caption='Tambah Data' then
   begin

    qv.Connection := DmModul.con1;
    qv.SQL.Clear;
    qv.SQL.Text := 'Select * from h_pesanan where no_trans_p = '+QuotedStr(cbo_no.Text)+'';
    qv.Open;
    if qv.RecordCount > 0 then
      begin
        {
        MessageDlg('Data dengan'+#13+#10+cbo_no.Text+#13+#10+
        'Sudah Ada ?',mtInformation,[mbok],0);
        cbo_no.Enabled:= true;
        cbo_no.SetFocus;
        qv.Close;
        qv.Free;
        //Edtotal.Text := '0';
        exit;
        }

        if MessageDlg('Data dengan Nomor Sudah Ada : '+#13+#10+cbo_no.Text+#13+#10+
        'Membuat Nomor Baru, akan lanjutkan?' +#13+#10+
        generateID('h_pesanan','no_trans_p','sp')
        ,
        mtconfirmation, [mbOK, mbCancel], 0) = mrOK then
          begin
        cbo_no.Enabled:= true;
        cbo_no.SetFocus;
        buatno;
        //cbo_no.Text:=generateID('h_pesanan','no_trans_p','sp');
        qv.Close;
        qv.Free;
        pgc1.ActivePageIndex:=0;
        exit;
            end;
       Exit;

      end;

    try

      sql := 'insert into h_pesanan (no_trans_p,tgl_pesanan,Pesanan_No,jenis,cv,total,'+
        'ttd_ppk,ttd_jab,ttd_jab_BA,total1,pajakper,pajak) Values('+
        QuotedStr(cbo_no.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtglb.Date))+','+
        QuotedStr(Ed_nomor.Text)+','+
        QuotedStr(cbojns)+','+
        QuotedStr(cbo_cv.text)+','+
        QuotedStr(clearDot(ed_total.text))+','+
        QuotedStr(cbo_ppk)+','+
        QuotedStr(cboPejabat)+','+
        QuotedStr(cboPejabatBA)+','+
        QuotedStr(clearDot(ed_tjumlah.text))+','+
        QuotedStr(clearDot(ed_perpjk.text))+','+
        QuotedStr(clearDot(ed_pajak.text))+')';
     ExecSQL1(sql);
    except
        ShowMessage('Simpan baru gagal :'+ cbo_no.Text);
        raise;
    end;

      try


        for i:=1 to Grid1.RowCount-1 do begin

             sql:='INSERT INTO detail_pesanan (no_pesanan,tgl_pesanan,no,nama,jumlah,satuan,hrga_satuan,n_t1) Values('+
             QuotedStr(cbo_no.Text)+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd',dtglb.Date))+','+
             QuotedStr(Grid1.Cells[1,i])+','+
             QuotedStr(Grid1.Cells[2,i])+','+
             QuotedStr(RealFormat(StrToFloat(Grid1.Cells[3,i])))+','+// jumlah 0,00
             QuotedStr(Grid1.Cells[4,i])+','+
             QuotedStr(RealFormat(StrToFloat(Grid1.Cells[5,i])))+','+ // harga : 0,00
             QuotedStr(RealFormat(StrToFloat(Grid1.Cells[6,i])))+')'; // Total : 0,00
             ExecSQL1(sql);
           end;

      ShowMessage('Simpan Baru :'+ cbo_no.Text);
      KosongTex(True);
     except
      ShowMessage('Simpan Detail gagal ok :'+ cbo_no.Text);
        raise;
      end
     end

    else if PnOperasi.Caption='Ubah Data' then
   begin
        try
        {
        tgl_pesanan = strtgl,
        Pesanan_No  = strno_pesanan,
        jenis		= strjenis,
        cv			= strcv,
        total		= strtotal,
        ttd_ppk	= strppk,
        ttd_jab	= strpejabat,
        ttd_jab_BA	= strba,
        total1	= strtotal1,
        pajakper	= strperpjk,
        pajak		= strpajak
         }

      sql1 :='Update h_pesanan set tgl_pesanan='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtglb.Date))+
      ',Pesanan_No='+QuotedStr(Ed_nomor.Text)+
      ',jenis='+QuotedStr(cbojns)+
      ',cv='+QuotedStr(cbo_cv.text)+
      ',total='+QuotedStr(clearDot(ed_total.text))+
      ',ttd_ppk='+QuotedStr(cbo_ppk)+
      ',ttd_jab='+QuotedStr(cboPejabat)+
      ',ttd_jab_BA='+QuotedStr(cboPejabatBA)+
      ',total1='+QuotedStr(clearDot(ed_tjumlah.text))+
      ',pajakper='+QuotedStr(clearDot(ed_perpjk.text))+
      ',pajak='+QuotedStr(clearDot(ed_pajak.text))+
      ' where no_trans_p='+QuotedStr(cbo_no.Text);
      ExecSQL1(sql1);

      except
        ShowMessage('Simpan Edit / ubah Gagal :'+ cbo_no.Text);
        raise;
    end;

        sql2 := 'delete from detail_pesanan'+
        ' where no_pesanan='+QuotedStr(cbo_no.Text);
        ExecSQL1(sql2);
       //m3 := 'delete SP temp OK';

     try
        for i:=1 to Grid1.RowCount-1 do begin

        sql:='INSERT INTO detail_pesanan (no_pesanan,tgl_pesanan,no,nama,jumlah,satuan,hrga_satuan,n_t1) Values('+
             QuotedStr(cbo_no.Text)+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd',dtglb.Date))+','+
             QuotedStr(Grid1.Cells[1,i])+','+
             QuotedStr(Grid1.Cells[2,i])+','+
             QuotedStr(RealFormat(StrToFloat(Grid1.Cells[3,i])))+','+// jumlah 0,00
             QuotedStr(Grid1.Cells[4,i])+','+
             QuotedStr(RealFormat(StrToFloat(Grid1.Cells[5,i])))+','+ // harga : 0,00
             QuotedStr(RealFormat(StrToFloat(Grid1.Cells[6,i])))+')'; // Total : 0,00
             ExecSQL1(sql);

        end;

        ShowMessage('Simpan Perubahan ok :'+ cbo_no.Text);
        KosongTex(True);
        btcariClick(Sender);

      except
       ShowMessage('Simpan Detail gagal ok :'+ cbo_no.Text);
        raise;
      end;
        //ShowMessage('data sudah di ubah :'+ cbo_no.Text);
        pgc1.ActivePageIndex:=1;
        cxBtnK1.Text := cbo_no.Text;
        cxBtnK2.Text := cbo_no.Text;

   end ;
   KosongTex(True);
  end;  //end tanya

end;

procedure Tfrm_pesanan.SpeedButton1Click(Sender: TObject);
begin

     try
    //Sp_header
    qheader.Connection := DmModul.con1;
    qheader.Close;
    qheader.StoredProcName := 'sp_cetak_header_pesanan';
    qheader.PrepareSQL;
    qheader.ParamByName('strcari').AsString := cxBtnK1.text; //key ba
    qheader.Open;
    //Sp_detail:
    qdetail.Connection := DmModul.con1;
    qdetail.Close;
    qdetail.StoredProcName := 'sp_cetak_detail_pesanan';
    qdetail.PrepareSQL;
    qdetail.ParamByName('strcari').AsString := cxBtnK1.text; //key ba
    qdetail.Open;

      Screen.cursor := crsqlWait;

     With EKRTF1 do Begin
      //format tanggal
      ClearVars;
      CreateVar('fullformat','dd mmmm yyyy');
      CreateVar('fP','dd - mm - yyyy');
      CreateVar('fh','dddd');
      CreateVar('fd','dddd');
      CreateVar('fbln','mmmmm');
      CreateVar('ftgl_time','yyyy/mm/dd hh:nn:ss');


           case rg_cetak.ItemIndex of
      0:
        begin
        //ShowMessage('cobak Sp -Prosedure');

//        spHc.Connection := DmModul.con1;
//        spHc.Close;
//        spHc.StoredProcName := 'SP_cetak_Header_sp';
//        spHc.PrepareSQL;
//        spHc.ParamByName('cari').AsString := Edit5.text; //key ba
//        spHc.Open;

        // SP REGULER
        lblProses.Caption := 'SP REGULER ...';
        infile:=apDirrtf+'\Pesanan\'+'01.rtf';
        fileku:= apDirExe + '\cetak\Pesanan\'+cxBtnK1.Text+'-spreg'+'.doc';
        OutFile:= apDirExe + '\cetak\Pesanan\'+cxBtnK1.Text+'-spreg'+'.doc';
        //Screen.cursor := crDefault;
        end;
      1:
        begin
        // SP CATALOG
        lblProses.Caption := 'SP CATALOG ...';
        infile:=apDirrtf+'\Pesanan\'+'02.rtf';
        fileku:= apDirExe + '\cetak\Pesanan\'+cxBtnK1.Text+'-spcat'+'.doc';
        OutFile:= apDirExe + '\cetak\Pesanan\'+cxBtnK1.Text+'-spcat'+'.doc';
        end;

        2:
       begin
//      // SP PSIKOTROPIKA
        lblProses.Caption := 'SP PSIKOTROPIKA ...';
        infile:=apDirrtf+'\Pesanan\'+'03.rtf';
        fileku:= ExtractFilePath(Application.ExeName) + '\cetak\Pesanan\'+cxBtnK1.Text+'-psi'+'.doc';
        OutFile:= ExtractFilePath(Application.ExeName) + '\cetak\Pesanan\'+cxBtnK1.Text+'-psi'+'.doc';

         end;

        3:
       begin
        // SP OOT
        lblProses.Caption := 'SP OOT ...';
        infile:=apDirrtf+'\Pesanan\'+'04.rtf';
        fileku:= ExtractFilePath(Application.ExeName) + '\cetak\Pesanan\'+cxBtnK1.Text+'-oot'+'.doc';
        OutFile:= ExtractFilePath(Application.ExeName) + '\cetak\Pesanan\'+cxBtnK1.Text+'-oot'+'.doc';

         end;

        4:
       begin

      // SP PERKUSOR
        lblProses.Caption := 'SP PERKUSOR ...';
        infile:=apDirrtf+'\Pesanan\'+'05.rtf';
        fileku:= ExtractFilePath(Application.ExeName) + '\cetak\Pesanan\'+cxBtnK1.Text+'-perk'+'.doc';
        OutFile:= ExtractFilePath(Application.ExeName) + '\cetak\Pesanan\'+cxBtnK1.Text+'-perk'+'.doc';

         end;

       5:
       begin

      // SP PERKUSOR
        lblProses.Caption := 'SP ALKES ...';
        infile:=apDirrtf+'\Pesanan\'+'06.rtf';
        fileku:= ExtractFilePath(Application.ExeName) + '\cetak\Pesanan\'+cxBtnK1.Text+'-ALKES'+'.doc';
        OutFile:= ExtractFilePath(Application.ExeName) + '\cetak\Pesanan\'+cxBtnK1.Text+'-ALKES'+'.doc';

         end;

       6:
       begin

      // SP andi

              if FMenu.StatusBar1.Panels[1].Text = 'bm01' then
              begin
                lblProses.Caption := 'SP BM ...';
        infile:=apDirrtf+'\Pesanan\'+'07.rtf';
        fileku:= ExtractFilePath(Application.ExeName) + '\cetak\Pesanan\'+cxBtnK1.Text+'-'+'.doc';
        OutFile:= ExtractFilePath(Application.ExeName) + '\cetak\Pesanan\'+cxBtnK1.Text+'-'+'.doc';

              end
          else
           begin
             ShowMessage('Tidak Berhak Cetak :'+ cbo_no.Text);
             Screen.cursor := crDefault;
             exit;
           end;


         end;


      end;

      //proses data
       if FileExists(fileku) then
        begin
            if MessageDlg('File '+fileku+' sudah ada , akan ditindas ?', mtconfirmation, [mbyes, mbno], 0) = mryes then
            begin
                trs:=true;
                DeleteFile(fileku);
            end else trs:=false;
        end else trs:=true;
        Screen.cursor := crDefault;
        if trs then
        begin
            dir:=fileku;
            Try
              //PROSES DATA
              ExecuteOpen([qheader,qdetail],SW_SHOW);
//              lbl_tunggu.Caption := 'Silakan Cetak ...';
              Screen.cursor := crDefault;

            Except
            ShowMessage('Cetak Gagal' + dir);
            Screen.cursor := crDefault;
            End;
        end;

       //ExecuteOpen([spHc,spDs],SW_SHOW);

    end;
  finally
    qheader.Close;
    qdetail.Close;
  end;
end;

procedure Tfrm_pesanan.SpeedButton2Click(Sender: TObject);
begin
buatno_sp;
//Lastkasir('S23');
end;

procedure Tfrm_pesanan.ed_totalChange(Sender: TObject);
begin
if ed_total.text = '' then Exit ;
formatRupiah(ed_total);
//clearDot(ed_total.Text);
edterbilang.Text := Spell(clearDot(ed_total.Text));
//edterbilang.Text := Capital(edterbilang.Text);
RightEdit(ed_total);
//edterbilang.Text := uppercase(Spell(ed_total.Text));
end;

procedure Tfrm_pesanan.FormCreate(Sender: TObject);
begin
dtglu.date := date ;
dtglb.date := date;
AktifControl(Self,Pn1, False);
aturgrid;
RightEdit(ed_tjumlah);
RightEdit(ed_perpjk);
RightEdit(ed_pajak);
RightEdit(ed_total);
RightEdit(edtotal);

RightEdit(ed_hrg);
RightEdit(ed_jml);
RightEdit(Ed_t1);


RightEdit(Edit3);
RightEdit(Edit4);

showData(false,'','');

//ListView1.Clear;
//ListView1.Columns[0].Width := 50;
//ListView1.Columns[1].Width := 70; //no peng
//ListView1.Columns[2].Width := 30;
//ListView1.Columns[3].Width := 30;
//ListView1.Columns[4].Width := 70;
//ListView1.Columns[5].Width := 250;
//
//
//ListView1.Columns[0].Caption:='Cek.';
//ListView1.Columns[1].Caption:='Kode';
//ListView1.Columns[2].Caption:='tgl';
//ListView1.Columns[3].Caption:='uraian';
//ListView1.Columns[4].Caption:='cv';
//ListView1.Columns[5].Caption:='nilai';

panggil_sat;
cx_jenis;
cx_peb_ppk;
cx_pejabat;
cx_pejabat_BA;
cx_jenis2;



end;

procedure Tfrm_pesanan.FormShow(Sender: TObject);
begin
dtp1.Date := now();
dtp2.Date := now();
aturgrid2;
BtnBaruClick(Sender);
end;

procedure Tfrm_pesanan.SpeedButton3Click(Sender: TObject);
begin
// uRUT
   for i2:=1 to Grid1.RowCount-1 do begin
    Grid1.Cells[0,i2]:=IntToStr(i2);
    Grid1.Cells[1,i2]:=IntToStr(i2);
  end;

  {
  FCari:=TFCari.Create(Application);
  LsvSetCol('No |nama|',
  '90|200|',FCari.LsCari);
  FCari.LsField.Items.Clear;
  FCari.LsField.Items.Add('m_perusahaan'); //Tabel / Query
  FCari.LsField.Items.Add('novendor');
  FCari.LsField.Items.Add('namaperusahaan');
  FCari.ShowModal;
  if nFieldCari[0]<>'' then
  begin
    cbo_cv.Text:=nFieldCari[0];
    ed_cvnm.Text:=nFieldCari[1];
    //KosongTex(False);
    //AktifControl(Self,PnInput,False);
    //ednokwi.Enabled:=True;
    //cbo_cv.Color:=clWhite;
    cbo_cv.SetFocus;
    end;
   }
end;

procedure Tfrm_pesanan.ed_jmlChange(Sender: TObject);
begin
if ed_jml.text = '' then Exit;
  formatRupiah(ed_jml);
  hitung_brg;
//SpeedButton4Click(Sender)end;
    end;
procedure Tfrm_pesanan.ed_hrgChange(Sender: TObject);
begin
if  ed_hrg.text = '' then Exit;
  formatRupiah(ed_hrg);
  hitung_brg;
end;

procedure Tfrm_pesanan.btn3Click(Sender: TObject);
begin
BtnProsesClick(Sender);
end;

///------text ke grid
procedure Tfrm_pesanan.SpeedButton4Click(Sender: TObject);
var
    addSat : TMyQuery;


begin
inc(counter);
Grid1.RowCount:=Grid1.RowCount + 1;

Grid1.Cells[0,Grid1.RowCount-1]:=IntToStr(counter);
Grid1.Cells[1,Grid1.RowCount-1]:= IntToStr(counter);
Grid1.Cells[2,Grid1.RowCount-1]:=ed_nama.Text;//nama barang
Grid1.Cells[3,Grid1.RowCount-1]:=ed_jml.Text; //jumlah
Grid1.Cells[4,Grid1.RowCount-1]:=ed_satuan.Text; //satuan
//Grid1.Cells[5,Grid1.RowCount-1]:= ed_hrg.Text; // harga
//Grid1.Cells[6,Grid1.RowCount-1]:= ed_t1.Text; // harga


Grid1.Cells[5,Grid1.RowCount-1]:= clearDot(ed_hrg.Text); // harga
Grid1.Cells[6,Grid1.RowCount-1]:= clearDot(ed_t1.Text); // harga

      addSat := TMyQuery.Create(nil);
      addSat.Connection := DmModul.con1;
      addSat.Close;
      addSat.SQL.Text:=
      'Select satuan from satuan where satuan='+
      QuotedStr(ed_satuan.Text);
      addSat.Open;

      if (addSat.RecordCount = 0) then
      begin
        MessageDlg('Kode baru Satuan',mtInformation,[mbok],0);

      //addSat := TMyQuery.Create(nil);
      //addSat.Connection := DmModul.con1;
        addSat.Close;
        addSat.SQL.Text:=
        'insert into satuan(satuan) Values('+
        QuotedStr(ed_satuan.Text)+')';
        addSat.Execute;

      //  ednokwi.SetFocus;
      //  exit;
      end;

//=====================
   Total; //jumlah total
   addSat.Close;
   panggil_sat;

//clear kotak
ed_nama.Text := '';
ed_jml.Text := '0';
ed_satuan.Text := '';
ed_hrg.Text := '0';
end;

procedure Tfrm_pesanan.SpeedButton5Click(Sender: TObject);
begin
if not(Grid1.RowCount=1) then begin
  if (cek_baris='') then begin
    ShowMessage('Silahkan pilih kode barang di hapus');
    exit;
  end else
      if MessageDlg('Hapus item kode: '+Grid1.Cells[2,hapus_baris]+' ?',mtConfirmation,mbOKCancel,0)=mrok then begin
         deleterow(Grid1,hapus_baris);
         Total;
         cek_baris:='';
         counter:=counter-1;
      end;
end else ShowMessage('Inputan Detail masih kosong');
end;

procedure Tfrm_pesanan.Grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var input_box:string;
qty,jml,harga,total_harga,disk,total2 : real ; // :integer;
cek_inputan:boolean;
begin
hapus_baris:=ARow;
cek_baris:=Grid1.Cells[1,arow];
//if not (Grid1.Cells[ACol,ARow]='') then begin
//No.

{
if ACol=1 then  begin
   if not (Grid1.RowCount=2) then begin
      input_box:=InputBox('No ','No. : '+Grid1.Cells[1,arow],Grid1.Cells[1,arow]);
      Grid1.Cells[ACol,ARow]:=input_box;
      end;
   end;
 }


// nama barang
if ACol=2 then  begin
   if not (Grid1.RowCount=1) then begin
      input_box:=InputBox('Nama ','Nama Barang : '+Grid1.Cells[1,arow],Grid1.Cells[2,arow]);
                Grid1.Cells[ACol,ARow]:=input_box;
      end;
   end;

 //jumlah brg
 if ACol=3 then  begin
   if not (Grid1.RowCount=1) then begin
      input_box:=InputBox('Jumlah','Masukan jumlah barang No : '+Grid1.Cells[1,arow],Grid1.Cells[3,arow]);
      //  if  (Length(Trim(input_box))=0) then exit else begin
        //  cek_inputan:=TryStrToFloat(input_box,qty);
       // if cek_inputan=false then ShowMessage('Masukan angka!') else begin
                qty:=StrToFloat(input_box);
                Grid1.Cells[ACol,ARow]:=FloatToStr(qty);
          //hitung total harga
          jml:=StrToFloat(Grid1.Cells[3,arow]);
          harga:=StrToFloat(Grid1.Cells[5,arow]);
          total_harga:=jml*harga;
          Grid1.Cells[6,arow]:=FloatToStr(total_harga);
        //=====================
        Total;
      //  end;
      end;
   end;
// end;

 //Satuan
 if ACol=4 then  begin
   if not (Grid1.RowCount=1) then begin
      input_box:=InputBox('Nama ','Satuan : '+Grid1.Cells[2,arow],Grid1.Cells[4,arow]);
                Grid1.Cells[ACol,ARow]:=input_box;
      end;
   end;


 //harga Dasar
 if ACol=5 then  begin
   if not (Grid1.RowCount=1) then begin
     //ShowMessage('No Urut'+#13+#10+StringGrid1.Cells[1,arow]+#13+#10+StringGrid1.Cells[5,arow]);
      input_box:=InputBox('Harga Satuan :','Nilai Harga Satuan : '+Grid1.Cells[2,arow],Grid1.Cells[5,arow]);

      if  (Length(Trim(input_box))=0) then exit else begin
        //cek_inputan:=TryStrToFloat(input_box,qty);
       // if cek_inputan=false then ShowMessage('Masukan angka!') else begin
                qty:=StrToFloat(input_box);
                Grid1.Cells[ACol,ARow]:=FloatToStr(qty);
          //hitung total harga
          jml:=StrToFloat(Grid1.Cells[3,arow]);
          harga:=StrToFloat(Grid1.Cells[5,arow]);
          total_harga:=jml*harga;
          Grid1.Cells[6,arow]:=FloatToStr(total_harga);
      //=====================
         Total;
        //end;
      end;
   end;
 //end;

end;
end;
procedure Tfrm_pesanan.Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
    //cbo_no.Text:=nFieldCari[0];
    pgc1.ActivePageIndex:=0;
    pgc2.ActivePageIndex:=0;
    cbo_no.Text:=Grid2.Cells[5,AROW];
    //cbo_no.Style.Color:=clLtGray;
    KosongTex(False);
    AktifControl(Self,Pn1,True);
    PnOperasi.Caption:='Ubah Data' ;
    cxcari.SetFocus;
    tampildata;
end;

procedure Tfrm_pesanan.Grid2GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    0,1: HAlign := taCenter;
    2: HAlign := taLeftJustify;
    4: HAlign := taRightJustify;
  end;
end;

procedure Tfrm_pesanan.Grid2GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
  var IsFloat: Boolean; var FloatFormat: string);
begin
isFloat := Acol in [4];
case ACol of
  4: Floatformat :='%.0n';
//  5: Floatformat :='%.0n';
//  6: Floatformat :='%.0n';
end;
end;
procedure Tfrm_pesanan.Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    0,1: HAlign := taCenter;
    2: HAlign := taLeftJustify;
    3,5,6: HAlign := taRightJustify;
  end;
end;

procedure Tfrm_pesanan.Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
//warna grid
if ((ACol = 2) and (ARow > 0)) then
  begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;

  if ((ACol = 3) and (ARow > 0)) then
      begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;


if ((ACol = 4) and (ARow > 0)) then
  begin

   if (Grid1.Cells[ACol, ARow] = '0')
    then
    begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

   if (Grid1.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := clWhite;
    AFont.Color := clBlack;
    //AFont.Style := [fsBold];
  end;
  end;

  if ((ACol = 5) and (ARow > 0)) then
  begin
     ABrush.Color := $00C0FFFF;
    AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

end;

procedure Tfrm_pesanan.EdtotalChange(Sender: TObject);
begin
if Edtotal.text = '' then Exit;
  formatRupiah(Edtotal);
  ed_total.Text := clearDot(Edtotal.text);
end;

procedure Tfrm_pesanan.SpeedButton6Click(Sender: TObject);
begin
ListView1DblClick(Sender);
end;

procedure Tfrm_pesanan.SpeedButton7Click(Sender: TObject);
begin
cari;
//pnl_link.Visible := false;

end;

procedure Tfrm_pesanan.ListView1DblClick(Sender: TObject);
var I : Integer;
begin
//  if ListView1.ItemIndex>=0 then
//  begin
//    //cbo_no.Text:=ListView1.Items[ListView1.ItemIndex].Caption;
//    for i:=0 to ListView1.Items[ListView1.ItemIndex].SubItems.Count -1 do
//    begin
//      cbo_no.Text:=ListView1.Items[ListView1.ItemIndex].SubItems[0];
//      PnOperasi.Caption:='Ubah Data';
//      pnl_link.Visible := False;
//      tampildata;
//    end;
//
//  end;
end;

procedure Tfrm_pesanan.edcariChange(Sender: TObject);
begin
cari;
end;

procedure Tfrm_pesanan.edcaridataChange(Sender: TObject);
begin
if cxCheckBoxfilter.checked then
    Grid2.NarrowDown(edcaridata.Text,3)
  else
    Grid2.NarrowDown(edcaridata.Text);
end;

Procedure Tfrm_pesanan.TampilDataJenis;
var
  spdataj : TMyStoredProc;
  i : integer;

  begin

  // DBlookup databidang
   if cbb_carijenis.Text = '' then
  datajenis := ''
  else
  datajenis :=  cbb_carijenis.EditValue;


   aturgrid2;
   spdataj:= TMyStoredProc.Create(nil);
   spdataj.Connection := DmModul.con1;
  try
    spdataj.Close;
    spdataj.StoredProcName := 'sp_GETJenisPesanan';
    spdataj.PrepareSQL;
    //spdataj.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp1.date); //key ba
    //spdataj.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key ba
    //spdata.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    spdataj.ParamByName('cari').AsString := datajenis;
    spdataj.Open;

    lblcari.Caption := inttostr(spdataj.RecordCount) +' record ';


    if spdataj.Eof then
    begin
    ShowMessage('Data YANG DICARI tidak ada :'+ datajenis);
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
      if  spdataj.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= spdataj.RecordCount+1;


    while not spdataj.Eof do begin
          Inc(counter);   //IntToStr(counter);
          Grid2.Cells[0,counter]:=IntToStr(counter); //No.
          Grid2.Cells[1,counter]:=spdataj.FieldByName('Pesanan_No').AsString;
          Grid2.Cells[2,counter]:=spdataj.FieldByName('tgl_pesanan').AsString;
          Grid2.Cells[3,counter]:=spdataj.FieldByName('NamaPerusahaan').AsString;
          Grid2.Cells[4,counter]:=spdataj.FieldByName('Total').AsString;
          Grid2.Cells[5,counter]:=spdataj.FieldByName('no_trans_p').AsString;
          //Grid2.Cells[5,counter]:=spdata.FieldByName('gudang').AsString;
          {
          grid2.ShowSelection := True;
          for i := 1 to grid2.RowCount - 1 do
          grid2.AddCheckBox(4, i, false, false);
           }
          spdataj.Next;
    end;

    finally
    spdataj.Close;
    end;

                                       end;

Procedure Tfrm_pesanan.TampilData;
var
  perintah:string;
  jml,harga,total_harga,i:integer;
  selisih : real;
  i2 : Integer;
  qdp1 : TMyQuery;
  qdp2 : TMyQuery;
  Begin





  qdp1 := TMyQuery.Create(nil);
  qdp1.Connection := DmModul.con1;
 try

  qdp1.Active := false;
  qdp1.SQL.Clear;

//  if FMenu.StatusBar1.Panels[1].Text = 'bm01' then
//              begin
//
//
//                //lblProses.Caption := 'SP BM ...';
//              end
//          else
//           begin
//             ShowMessage('Tidak Berhak Melihat :'+ cbo_no.Text);
//          exit;
//           end;

  qdp1.SQL.Text :='select * from h_pesanan where no_trans_p='+
  QuotedStr(cbo_no.Text)+' ';

  qdp1.Open;

   if qdp1.RecordCount > 0 then
  begin

   if PnOperasi.Caption='Ubah Data' then
   begin
        AktifControl(Self,Pn1,True);
    //    AktifControl(Self,Pn_list,True);
    //BtnProses.Enabled:=True;
    end;
     cbo_no.Text:=qdp1.FieldByName('no_trans_p').AsString;
     //cbo_agr.Text:=qdp1.FieldByName('anggaran').AsString;
     dtglb.date:=qdp1.FieldByName('tgl_pesanan').AsDateTime;
     Ed_nomor.text:=qdp1.FieldByName('Pesanan_No').AsString;
     ed_total.Text:=qdp1.FieldByName('Total').AsString;
     cbo_cv.Text:=qdp1.FieldByName('cv').AsString;
     ed_cvnm.Text := carispcv('sp_read_cv',cbo_cv.text);
     cbb_jenis.EditValue:=qdp1.FieldByName('jenis').AsString;

     // link pejabat dan BA
     cbb_pejabat.EditValue:=qdp1.FieldByName('ttd_jab').AsString;
     cbb_pejabat_ba.EditValue:=qdp1.FieldByName('ttd_jab_BA').AsString;
     cbb_ppk.EditValue:=qdp1.FieldByName('ttd_ppk').AsString;

    // edterbilang.Text:=qdp1.FieldByName('terbilang').AsString;

     if VarIsNull(qdp1['total1']) then
      begin
       ed_tjumlah.Text:='0';
    end
   else
      begin
       ed_tjumlah.Text:=qdp1.FieldByName('total1').AsString;
    end;

    if VarIsNull(qdp1['pajakper']) then
      begin
       ed_perpjk.Text:='0';
    end
   else
      begin
       ed_perpjk.Text:=qdp1.FieldByName('pajakper').AsString;
    end;

    if VarIsNull(qdp1['pajakper']) then
      begin
       ed_pajak.Text:='0';
    end
   else
      begin
       ed_pajak.Text:=qdp1.FieldByName('pajak').AsString;
    end;

    // ed_tjumlah.Text:=qdp1.FieldByName('total1').AsString;
     //ed_perpjk.Text:=qdp1.FieldByName('pajakper').AsString;


    {
    //tanggal jatuh tempo
    if VarIsNull(AdDsData['tgl_jatuh_tempo']) then
      begin
    ed_tgl_jt.ShowCheckbox :=true;
    ed_tgl_jt.Checked := false;
    ed_tgl_jt.Color := clred;
    end
   else
      begin
      ed_tgl_jt.Date:=AdDsData.FieldByName('tgl_jatuh_tempo').AsDateTime;
    end;

    //untuk membaca database atau read
    if AdDsData.fieldbyname('ket_ppn').AsString='1' then
      chk2.checked := true else chk2.checked:=false;
    }
     //ed_peng.Text := ednokwi.Text;
     // Caption:=Ed_u_cv.Text +' / ' +ed_KWITANSI.Text + ' / ' + ed_no_faktur.Text ;

  end

  else
    begin
    ShowMessage( 'data kosong / Tidak ADA : ' + cbo_no.Text );
    end;

  finally
    qdp1.Close;
    qdp1.Free;
  end;

  qdp2 := TMyQuery.Create(nil);
  qdp2.Connection := DmModul.con1;

  try
    qdp2.Active := false;
    qdp2.SQL.Clear;
    qdp2.SQL.Text :='select * from detail_pesanan WHERE no_pesanan like'+
    QuotedStr(cbo_no.Text)+' order by no ';
    qdp2.Open;

    if qdp2.Eof then
    begin
    //Total;
    Edtotal.Text := '0';
    aturgrid;
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
    end;

    counter:=0;
   
   if  qdp2.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= qdp2.RecordCount+1;


    while not qdp2.Eof do begin
          Inc(counter);
          //Grid1.RowCount:=Grid1.RowCount+1;
          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=dataRow(qdp2.FieldByName('no'),'');
          Grid1.Cells[2,counter]:=dataRow(qdp2.FieldByName('nama'),'-');
          Grid1.Cells[3,counter]:=dataRow(qdp2.FieldByName('jumlah'),'0');
          Grid1.Cells[4,counter]:=dataRow(qdp2.FieldByName('satuan'),'-');
          Grid1.Cells[5,counter]:=dataRow(qdp2.FieldByName('hrga_satuan'),'0');
          Grid1.Cells[6,counter]:=dataRow(qdp2.FieldByName('n_t1'),'0');
         //=====================
          qdp2.Next;
    end;
   Total;
  finally
    qdp2.Close;
    qdp2.Free;
  end;

end;




procedure Tfrm_pesanan.BitBtn17Click(Sender: TObject);
   //var
   //  qsk:TMyStoredProc;

begin

  //qsk:= TMyStoredProc.Create(nil);
  //qsk.Connection := DmModul.con1;

  try
    {
    qsk.Close;
    qsk.StoredProcName := 'sp_kwi';
    qsk.PrepareSQL;
    qsk.ParamByName('cari1').AsString := ed_k1.text;
    qsk.ParamByName('cari2').AsString := ed_k2.text;
    qsk.open;
    }
    Screen.cursor := crsqlWait;

     With EKRTF1 do Begin
      //format tanggal
      ClearVars;
      CreateVar('fullformat','dd mmmm yyyy');
      CreateVar('fP','dd - mm - yyyy');
      CreateVar('fh','dddd');
      CreateVar('fd','dddd');
      CreateVar('fbln','mmmmm');
     infile:= apDirrtf + '\Pesanan\'+'SP_pesanan.rtf';
     OutFile:= apDirExe + '\Pesanan\'+cbo_no.Text+'-P'+'.doc';
     //ExecuteOpen([qsk],SW_SHOW);
     Screen.cursor := crDefault;

      end;

    finally
    //qsk.Close;

    end;

end;

procedure Tfrm_pesanan.cbb_jenisPropertiesChange(Sender: TObject);
var
    myQtotal : TMyQuery;
begin
  if  cbb_jenis.text = '' then Exit;


   try
    myQtotal := TMyQuery.Create(nil);
    myQtotal.Connection := DmModul.con1;
    myQtotal.Active := false;
    myQtotal.SQL.Clear;
    myQtotal.SQL.Text :='Select jenis, sum(Total) AS dana'+
    ' FROM h_pesanan where jenis = '+
    QuotedStr(cbb_jenis.EditValue) + 'GROUP BY jenis' ;
    myQtotal.Open;

    eddana.Text := myQtotal.FieldByName('dana').AsString;

//    ed_nmagr.Text:=ds_cari_ak.FieldByName('kd_pro').AsString+'/'
//    +ds_cari_ak.FieldByName('kd_keg').AsString+'/'
//    +ds_cari_ak.FieldByName('kd_keu').AsString+'/'
//    +ds_cari_ak.FieldByName('rek_nama').AsString+'/'
//    +ds_cari_ak.FieldByName('nm_jns').AsString;
  finally
    myQtotal.Close;
  end;
end;

procedure Tfrm_pesanan.cbo_cvChange(Sender: TObject);
begin
//if cbo_cv.text = '' then Exit ;
//ed_cvnm.Text := caricv(cbo_cv.text);
ed_cvnm.Text := carispcv('sp_read_cv',trim(cbo_cv.text));
end;


{
procedure Tfrm_pesanan.cbo_agrChange(Sender: TObject);
var
  ds_cari_ak : TMyQuery;
  Begin
  try
    ds_cari_ak := TMyQuery.Create(nil);
    ds_cari_ak.Connection := DmModul.con1;
    ds_cari_ak.Active := false;
    ds_cari_ak.SQL.Clear;
    ds_cari_ak.SQL.Text :='Select no_a'+
    ' ,kd_pro,kd_keg,nm_jns,kd_keu,rek_nama FROM m_rek_2020 where no_a like '+
    QuotedStr('%'+cbo_agr.Text+'%');
    ds_cari_ak.Open;
    ed_nmagr.Text:=ds_cari_ak.FieldByName('kd_pro').AsString+'/'
    +ds_cari_ak.FieldByName('kd_keg').AsString+'/'
    +ds_cari_ak.FieldByName('kd_keu').AsString+'/'
    +ds_cari_ak.FieldByName('rek_nama').AsString+'/'
    +ds_cari_ak.FieldByName('nm_jns').AsString;
  finally
    ds_cari_ak.Close;
  end;
//ed_nmagr.text := carispagr('sp_read_agr',trim(cbo_agr.text))
end;
 }
 
procedure Tfrm_pesanan.SpeedButton8Click(Sender: TObject);
begin
  {
  if frm_baperper =nil then
     frm_baperper:=Tfrm_baperper.Create(Application);
     frm_baperper.BringToFront;
     frm_baperper.cbo_no.text := frm_kwiu.cbo_no.text;
   }

end;

procedure Tfrm_pesanan.SpeedButton9Click(Sender: TObject);
var trs : Boolean;
    fileku,dir : string;
begin

  try
    //Header
    qheader.Connection := DmModul.con1;
    qheader.Close;
    qheader.StoredProcName := 'sp_cetak_header_pesanan';
    qheader.PrepareSQL;
    qheader.ParamByName('strcari').AsString := ed_k1.text; //key ba
    //QSK.ParamByName('cari2').AsString := ed_k2.text; //key ba
    qheader.Execute;
    //Detail
    qdetail.Connection := DmModul.con1;
    qdetail.Close;
    qdetail.StoredProcName := 'sp_cetak_detail_pesanan';
    qdetail.PrepareSQL;
    qdetail.ParamByName('strcari').AsString := ed_k1.text; //key ba
    qdetail.Execute;
    Screen.cursor := crsqlWait;
     With EKRTF1 do Begin
   //format tanggal
   ClearVars;
   CreateVar('fullformat','dd mmmm yyyy');
   CreateVar('fH','dddd');
   CreateVar('fbln','mmmm');
   CreateVar('fdmy','dd - mm - yyyy');
   infile:= apDirrtf + '\Pesanan\'+'SPesanan_2022.rtf';
   fileku := apDirExe + '\cetak\Pesanan\'+Ed_nmcv.Text+'-sp'+'.doc';
   OutFile:= apDirExe + '\cetak\Pesanan\'+Ed_nmcv.Text+'-sp'+'.doc';
   //proses data
       if FileExists(fileku) then
        begin
            if MessageDlg('File '+fileku+' sudah ada , akan ditindas ?', mtconfirmation, [mbyes, mbno], 0) = mryes then
            begin
                trs:=true;
                DeleteFile(fileku);
            end else trs:=false;
        end else trs:=true;
        Screen.cursor := crDefault;
        if trs then
        begin
            dir:=fileku;
            Try
              //PROSES DATA
              ExecuteOpen([qheader,qdetail],SW_SHOW);
//              lbl_tunggu.Caption := 'Silakan Cetak ...';
              Screen.cursor := crDefault;
            Except
            ShowMessage('Cetak Gagal' + dir);
            Screen.cursor := crDefault;
            End;
        end;

       //ExecuteOpen([spHc,spDs],SW_SHOW);

    end;

        //OutFile:= ExtractFilePath(Application.ExeName) + '\report_kwiu\'+ed_k1.Text+'-ba_per'+'.rtf';
        //Screen.cursor := crDefault;
        //ExecuteOpen([QSK,ppsd],SW_SHOW);
        //ExecuteOpen([QSK],SW_SHOW);

  finally
    qheader.Close;
    qdetail.Close;
  end;

    end;

procedure Tfrm_pesanan.btnsamaClick(Sender: TObject);
begin
cxBtnK2.Text := cxBtnK1.Text;
end;

procedure Tfrm_pesanan.btnlaodClick(Sender: TObject);
begin

  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_kwi';
  LsvSetCol('No|c P|Pelaksana|agr|Uraian|tgl|pro|keg|rek.|total|',
  '80|10|120|40|270|50|30|30|70|80|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('no_kwi');
  FCarisp.LsField.Items.Add('cv');
  FCarisp.LsField.Items.Add('namaperusahaan');
  FCarisp.LsField.Items.Add('anggaran');
  FCarisp.LsField.Items.Add('uraian_1');
  FCarisp.LsField.Items.Add('tgl_u');
  FCarisp.LsField.Items.Add('kd_pro');
  FCarisp.LsField.Items.Add('kd_keg');
  FCarisp.LsField.Items.Add('kode_rekening');
  FCarisp.LsField.Items.Add('total');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    //ed_u.Text:=nFieldCari[4];
    //cbo_agr.Text:=nFieldCari[3];
    cbo_cv.Text:=nFieldCari[1];
      end;

end;

procedure Tfrm_pesanan.BitBtn1Click(Sender: TObject);
begin
//sp_GETNomorPesanan
TampilDatacariNomor;
end;

procedure Tfrm_pesanan.ed_tjumlahChange(Sender: TObject);
var
   n_t1,pjk_per,n_pajak,total :real;

begin
if ed_tjumlah.text = '' then Exit;
   formatRupiah_des(ed_tjumlah);
   hitungTotal;
//   n_t1 :=strtofloat (clearDot(ed_tjumlah.Text));
//   pjk_per :=strtofloat (clearDot(ed_perpjk.Text));
//   n_pajak := n_t1 *(strtofloat(ed_perpjk.text)/100);
//   ed_pajak.Color:=clMoneyGreen;
//   ed_pajak.Text := floattostr(n_pajak);
//   formatRupiah_des(ed_pajak);
//   total := n_t1 + n_pajak ;
//   edtotal.Text := floattostr(total);
   {
   if  ed_perpjk.Text <> '' then
    begin
    n_pajak := 0;
    ed_pajak.Color := clRed;
    //Label49.Caption := 'Non Ppn';
    ed_pajak.Text := floattostr(n_pajak);
    total := n_t1 + n_pajak ;
    edtotal.Text := floattostr(total);
  end
    else
    begin
  n_pajak := n_t1 *(strtofloat(ed_perpjk.text)/100);
  ed_pajak.Color:=clMoneyGreen;
  ed_pajak.Text := floattostr(n_pajak);
  total := n_t1 + n_pajak ;
  edtotal.Text := floattostr(total);
  end;
  }

end;

procedure Tfrm_pesanan.ed_perpjkChange(Sender: TObject);
begin
  if ed_perpjk.text = '' then Exit;

   if ed_perpjk.text >= '10' then

     ed_perpjk.Color:=clWebPaleGreen
  else
    ed_perpjk.Color:=clred;

   hitungTotal;


end;

procedure Tfrm_pesanan.cbo_noClick(Sender: TObject);
begin

  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_kwi_uraian';
  LsvSetCol('No|Pelaksana|uraian|Tgl.|total|',
  '90|200|280|80|90|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('no_kwi');
  FCarisp.LsField.Items.Add('namaperusahaan');
  FCarisp.LsField.Items.Add('uraian_1');
  FCarisp.LsField.Items.Add('tgl_u');
  FCarisp.LsField.Items.Add('total');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    cbo_no.Text:=nFieldCari[0];
    KosongTex(False);
    AktifControl(Self,Pn1,True);
    //ednokwi.Enabled:=True;
    //cbo_no.Color:=clWhite;
    cbo_no.SetFocus;
    tampildata;
    PnOperasi.Caption:='Ubah Data';
  end;
end;

procedure Tfrm_pesanan.cbo_cvPropertiesChange(Sender: TObject);
begin
ed_cvnm.Text := carispcv('sp_read_cv',trim(cbo_cv.text));
end;

procedure Tfrm_pesanan.cbo_cvPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  cari_cv;
end;

procedure Tfrm_pesanan.ed_namaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin

//sp_detailkwi_link
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_barang';
  LsvSetCol('nama|hrg|satuan|',
  '300|90|90|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('nama');
  FCarisp.LsField.Items.Add('hrga_satuan');
  FCarisp.LsField.Items.Add('satuan');
  FCarisp.ShowModal;
  if nFieldCari[0]<>'' then
  begin
    ed_nama.Text:=nFieldCari[0];
    ed_hrg.Text:=nFieldCari[1];
    ed_satuan.Text:=nFieldCari[2];
    //KosongTex(False);
    //AktifControl(Self,PnInput,False);
    //ednokwi.Enabled:=True;
    //cbo_cv.Color:=clWhite;
    ed_jml.SetFocus;
    end;
end;

procedure Tfrm_pesanan.BtnUbah1Click(Sender: TObject);
begin
cbo_no.Enabled := True;
cbo_noClickBtn(Sender);
end;

procedure Tfrm_pesanan.cbo_noClickBtn(Sender: TObject);
var
  qtotal :TMyStoredProc;

begin
FCarisp2:=TFCarisp2.Create(Application);
 FCarisp2.Label4.Caption :='sp_cari_pesanan_SP';
 FCarisp2.EGudang.Text := FMenu.StatusBar1.Panels[1].Text;
  LsvSetCol('No|Pelaksana|tgl|no. sp.|Jenis|total|',
  '150|350|100|120|170|120|',FCarisp2.LsCari);
  FCarisp2.LsField.Items.Clear;
  FCarisp2.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp2.LsField.Items.Add('no_trans_p'); //0
  FCarisp2.LsField.Items.Add('namaperusahaan');
  FCarisp2.LsField.Items.Add('tgl_pesanan');
  FCarisp2.LsField.Items.Add('Pesanan_No');
  FCarisp2.LsField.Items.Add('nmjenis');
  FCarisp2.LsField.Items.Add('total');
  FCarisp2.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    cbo_no.Text:=nFieldCari[0];
    KosongTex(False);
    AktifControl(Self,Pn1,True);
    //ednokwi.Enabled:=True;
    //cbo_no.Color:=clWhite;
    cbo_no.SetFocus;
    tampildata;
  //rekap--
    qtotal := TMyStoredProc.Create(nil);
{
  try
    qtotal.Connection := DmModul.con1;
    qtotal.Close;
    qtotal.StoredProcName := 'sp_cari_rekap';
    qtotal.PrepareSQL;
    qtotal.ParamByName('cari').AsString := cbo_agr.text; //key ba
    qtotal.Execute;

   if qtotal.RecordCount > 0 then
  begin
    eddana.text :=qtotal.FieldByName('danaku').AsString;
    Edit3.text :=qtotal.FieldByName('total').AsString;
    Edit4.text :=qtotal.FieldByName('sisa').AsString;
   end
  else
    begin
    ShowMessage( 'data kosong / Tidak ADA : ' + cbo_no.Text );
    end;

  finally
    qtotal.Close;
    qtotal.Free;
  end;
   }
    //--
    PnOperasi.Caption:='Ubah Data';
  end;
end;

{
procedure Tfrm_pesanan.cbo_agrClickBtn(Sender: TObject);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_agr';
  LsvSetCol('No id|pro|keg|kode rek|nama rekening|jns|dana|Sub rek|Nm Sub Rek|',
  '150|35|35|70|120|70|100|60|200|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //Tabel
  FCarisp.LsField.Items.Add('no_a'); //0
  FCarisp.LsField.Items.Add('kd_pro'); //1
  FCarisp.LsField.Items.Add('kd_keg'); //2
  FCarisp.LsField.Items.Add('kode_rekening');//3
  FCarisp.LsField.Items.Add('REK_NAMA');//4
  FCarisp.LsField.Items.Add('nm_jns');//5
  FCarisp.LsField.Items.Add('dana'); //6
  FCarisp.LsField.Items.Add('sub_rek'); //7
  FCarisp.LsField.Items.Add('sub_nm_rek'); //8

 // FCari.LsField.Items.Add('tambah_kurang');//11
  FCarisp.ShowModal;
  if nFieldCari[0]<>'' then
  begin

    //cbo_agr.Text:=nFieldCari[0];
    //ed_pagu.Text:=nFieldCari[6];
    //ed_nmagr.Text:='Pengadaan ' + nFieldCari[4];
  //  M_l.Text:='Pengadaaan ' + nFieldCari[4];
    ed_nmagr.Text:=nFieldCari[1]+
    '.'+ nFieldCari[2] +
    '.' + nFieldCari[3] +
    '.' + nFieldCari[6]+
    '.' + nFieldCari[4]+
    '.' + nFieldCari[5]+
    '.' + nFieldCari[7];
    cbo_agr.Color := clCream; 
   end;
end;
 }
procedure Tfrm_pesanan.Grid1GetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
begin
//     FloatFormat := '%.2n';
     begin
//  grid1.Floats[1,3] := grid1.Floats[1,1] + grid1.Floats[1,2];
end;

isFloat := Acol in [3,5,6];
case ACol of
 // 1: Floatformat :='';
  3: Floatformat :='%.0n';
  5: Floatformat :='%.0n';
  6: Floatformat :='%.0n';
end;



end;

procedure Tfrm_pesanan.BitBtn2Click(Sender: TObject);
begin
  //qsk:= TMyStoredProc.Create(nil);
  //qsk.Connection := DmModul.con1;

  try
    {
    qsk.Close;
    qsk.StoredProcName := 'sp_kwi';
    qsk.PrepareSQL;
    qsk.ParamByName('cari1').AsString := ed_k1.text;
    qsk.ParamByName('cari2').AsString := ed_k2.text;
    qsk.open;
    Screen.cursor := crsqlWait;
     }
     With EKRTF1 do Begin
      //format tanggal
      ClearVars;
      CreateVar('fullformat','dd mmmm yyyy');
      CreateVar('fP','dd - mm - yyyy');
      CreateVar('fdmy','dd - mm - yyyy');
      CreateVar('fh','dddd');
      CreateVar('fd','dddd');
      CreateVar('fbln','mmmmm');
      infile:= apDirrtf + '\rpt_ba\'+'BA_pemeliharaan15Medis.rtf';
      OutFile:= apDirExe + '\cetak_ba\'+ED_k1.Text+'-BA'+'.doc';
     // ExecuteOpen([qsk],SW_SHOW);
      Screen.cursor := crDefault;
      end;

    finally
    //qsk.Close;
    end;
end;

procedure Tfrm_pesanan.BtnHapusClick(Sender: TObject);
//var
//  sphapus: TMyStoredProc;

begin
if MessageDlg('Hapus data :'+#13+#10+cbo_no.Text+#13+#10+
        'akan dihapus, lanjutkan?'+#13+#10+'Hati - hati ya ....', mtWarning, [mbOK, mbCancel], 0) = mrOK then
        begin

   Screen.cursor := crsqlWait;
//   sphapus:= TMyStoredProc.Create(nil);
//   sphapus.Connection := DmModul.con1;
  try
    Screen.cursor := crsqlWait;
        SQL := 'delete from h_pesanan where no_trans_p='+
        QuotedStr(cbo_no.Text)+'';
        ExecSQL1(sql); //Hapus

        sql:= 'delete from detail_pesanan'+
        ' where no_pesanan='+QuotedStr(cbo_no.Text);
        ExecSQL1(sql);

    Screen.cursor := crDefault;
    KosongTex(True);
    ShowMessage('Hapus Sukses :'+ cbo_no.Text);

 except
             ShowMessage('Hapus Keluar Gagal :'+ cbo_no.Text);
        raise;
      end

end;
end;

procedure Tfrm_pesanan.BitBtn3Click(Sender: TObject);
begin
 //qsk.Connection := DmModul.con1;

  try
    {
    qsk.Close;
    qsk.StoredProcName := 'sp_kwi';
    qsk.PrepareSQL;
    qsk.ParamByName('cari1').AsString := ed_k1.text;
    qsk.ParamByName('cari2').AsString := ed_k2.text;
    qsk.open;
    Screen.cursor := crsqlWait;
     }
     With EKRTF1 do Begin
      //format tanggal
      ClearVars;
      CreateVar('fullformat','dd mmmm yyyy');
      CreateVar('fP','dd - mm - yyyy');
      CreateVar('fh','dddd');
      CreateVar('fd','dddd');
      CreateVar('fbln','mmmmm');
     infile:= apDirrtf + '\rpt_kwi\2017\'+'rptkwitansi_nota17.rtf';
     OutFile:= apDirExe + '\report_kwiu\'+ED_k1.Text+'-KWIN'+'.doc';
      //ExecuteOpen([qsk],SW_SHOW);
     Screen.cursor := crDefault;

      end;

    finally
   // qsk.Close;

    end;
end;

procedure Tfrm_pesanan.BitBtn4Click(Sender: TObject);
var
  tgl1xls,tgl2xls,ht1xls:string;
begin
  tgl1xls := FormatDateTime('yyyy-mm-dd',dtp1.date);
  tgl2xls := FormatDateTime('yyyy-mm-dd',dtp2.date);
  ht1xls:='http://192.168.30.7:88/cetak_delphi/cetak/laporan_PO_XLS.php?tgl1='+tgl1xls+'&tgl2='+tgl2xls;
  ShellExecute(Handle,'open',PChar(ht1xls),'','',SW_NORMAL);

end;

procedure Tfrm_pesanan.BitBtn5Click(Sender: TObject);
var
  tgl1xls,tgl2xls,ht1xls2:string;
begin

// DBlookup databidang
   if cbb_carijenis.Text = '' then
  datajenis := ''
  else
  datajenis :=  cbb_carijenis.EditValue;


  tgl1xls := FormatDateTime('yyyy-mm-dd',dtp1.date);
  tgl2xls := FormatDateTime('yyyy-mm-dd',dtp2.date);
  ht1xls2:='http://'+FMenu.StatusBar1.Panels[2].Text+'/cetak_delphi/cetak/laporan_POjns_XLS.php?tgl1='+tgl1xls+'&tgl2='+tgl2xls+'&cari='+datajenis;
  ShellExecute(Handle,'open',PChar(ht1xls2),'','',SW_NORMAL);
//TampilDataJenis;

end;

procedure Tfrm_pesanan.btcariClick(Sender: TObject);
begin
TampilDatacariTanggal;
end;

procedure Tfrm_pesanan.btn1Click(Sender: TObject);
var
Fields,Types: TStringList;
datafile : string;
begin

if messagedlg('Database Sudah dibackup'+#13#10+
'Barangkali hasil Import tidak sesuai dengan yang diharapkan'+
#13#10+'dilanjutkan?', mtConfirmation, [mbyes, mbNo], 0) = mryes then
begin

dlgOpen1.Filter := 'MS Excel|*.xls*|MS Excel 2007|*.xlsx';
if dlgOpen1.Execute then
  begin
     datafile:=dlgOpen1.FileName;
     Aturgrid;
     Total;
  //import Excel  : Kode,nama_barang,satuan_jual,harga_jual,tgl_ed,stok_awal

  Fields:=TStringList.Create;
  //Fields.Text:='id'+#10+'nama'+#10+'alamat'+#10+'tgl'+#10+'nilai';

  Fields.Text:=
  'no_pesanan'+#10+  //1 key
  'no'+#10+       //2
  'nama'+#10+     //3
  'jumlah'+#10+   //4
  'satuan'+#10+   //5
  'hrga_satuan'+#10+ //6
  'n_t1';        //7
  //'n_t2';  //akhir Fields //9
  Types:=TStringList.Create;
  //Types.Text:='1'+#10+'0'+#10+'0'+#10+'2'+#10+'1';

  Types.Text:=
  '0'+#10+   //1 key
  '0'+#10+   //2
  '0'+#10+   //3
  '1'+#10+   //4
  '0'+#10+   //5
  '1'+#10+   //6
  '1'; //akhir type data : 0 -> string , 1 -> nilai, 2 -> date

  //nama_sheet, table nama

  Screen.cursor := crsqlWait;
  if uDBXls.Importkwiudetail(datafile, 'detail_pesanan', 'detail_pesanan', Fields, Types) then

    showmessage('Sukses Import Detail Pesanan')

  else showmessage('Gagal Import');

  {
  if uDBXls.Import('d:\test_xls\rekanan.xls', 'cobak', 'rekanan', Fields, Types) then
    showmessage('Sukses Import')
  else showmessage('Gagal Import');
  }
   Screen.cursor := crDefault;
    tampildata;
  end;
end;

end;

procedure Tfrm_pesanan.BitBtn8Click(Sender: TObject);
var
  spdetail: TMyStoredProc;
  begin

  if MessageDlg('Data dengan'+#13+#10+cbo_no.Text+#13+#10+
        'akan di Cetak excel, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
   {
    spdetail:= TMyStoredProc.Create(nil);
    spdetail.Connection := DmModul.con1;
  try
    Screen.cursor := crsqlWait;
    spdetail.Close;
    spdetail.StoredProcName := 'sp_detail_pesanan';
    spdetail.PrepareSQL;
    spdetail.ParamByName('cari').AsString := cbo_no.Text;
    spdetail.Execute;
    Screen.cursor := crDefault;
    if spdetail.Eof then exit;
      exlrprt1.template :=apDirxls+'brg_detail_pesanan22.xlsx';
      exlrprt1.Dataset:=spdetail;
      //sheet yg dipilih
      exlrprt1.TemplSheet :='detail_pesanan';
      exlrprt1.Show();
  finally
    spdetail.Close;
  end;
    }
end;

end;

procedure Tfrm_pesanan.Edit(Sender: TObject);
begin
formatRupiah(Edit3);
Edit3.Font.Size := 12;
Edit3.Color := clCream;
end;

procedure Tfrm_pesanan.Edit4Change(Sender: TObject);
begin
formatRupiah(Edit4);
Edit4.Font.Size := 12;
Edit4.Color := clCream;
end;

procedure Tfrm_pesanan.eddanaChange(Sender: TObject);
begin
if eddana.text = '' then Exit;
  //formatRupiah_des(eddana);
  formatRupiah(eddana);
end;

procedure Tfrm_pesanan.ed_namaKeyPress(Sender: TObject; var Key: Char);
begin

end;

//-- function cari
function Tfrm_pesanan.Caribrg(nkode_cr: String):string;
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
  StoredProcName := 'SPGetbarang' ;
  PrepareSQL;
  ParamByName('cari').AsString := nkode_cr;
  Execute;
  cxlbl3.Caption := 'Jumlah Data : ' + inttostr(RecordCount) +' baris ';

  //Open;
  //ShowMessage(SQL.Text);
  lv1.Clear;
  if not IsEmpty then
  begin
     while not Eof do
     begin
      dt:=lv1.Items.Add;
      //dmmodul.dataRow(QBarangDDL.FieldByName('kode'),'-');
      dt.Caption:=(dmmodul.dataRow(Q6.FieldByName('nama'),'-'));
      //dt.SubItems.Add(formatFloat('#,###',StrToFloat(dmmodul.dataRow(Q6.FieldByName('hrga_satuan'),'0')))); //formatFloat('#,###.00', StrToFloat(AdDsData.FieldByName('n_nego').AsString)
      dt.SubItems.Add(dmmodul.dataRow(Q6.FieldByName('hrga_satuan'),'0'));
      dt.SubItems.Add( dmmodul.dataRow(Q6.FieldByName('satuan'),'-'));
      //dt.SubItems.Add(dmmodul.dataRow(QBarangDDL.FieldByName('sisa'),'0'));
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


procedure Tfrm_pesanan.lv1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrm_pesanan.lv1KeyPress(Sender: TObject; var Key: Char);
begin
  try
		if(Key=#13)then
	begin
    // edkode.Text:=lv1.Selected.Caption;
     with lv1.Selected do
      begin
        ed_nama.Text:=lv1.Selected.Caption;
        ed_hrg.Text:=SubItems.Strings[0];
        ed_satuan.Text:=SubItems.Strings[1];
      end;
     ed_jml.Text:='1';
     ed_jml.SetFocus;
     pnl4.Visible:=false;
	end;
		except
	end;
end;

procedure Tfrm_pesanan.ed_jmlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=13)then

   BEGIN
    hitung_brg;
    //btn_tambahClick(Sender);
    SpeedButton4Click(Sender);
    cxcari.SetFocus;
    cxcari.Text:='';
end;
end;


Procedure Tfrm_pesanan.buatno_sp;
    var
  urut1,tgl1: string;
  i1 : integer;
  Qkwi1 : TMyQuery;
begin

if trim(cbb_jenis.text) ='' then
      begin
         ShowMessage('Jenis Pengadaan Kosong');
         cbb_jenis.SetFocus;
         //Result:=False;
         exit
     end;


  //SP2008250002

  Qkwi1 := TMyQuery.Create(nil);
  Qkwi1.Connection := DmModul.con1;
  // berdasarkan Tahun
  tgl1 := FormatDateTime('yy', dtglb.Date) + '';
  //tgl1 := FormatDateTime('yyMMdd', dtglb.Date) + '';
   //Ed_nomor.Text := tgl1;

  try
  With Qkwi1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select Max(right(no_trans_p, 4)) from h_pesanan ' +
              'Where Mid(no_trans_p, 3,2) = ' + QuotedStr(tgl1) + ' AND jenis= ' + QuotedStr(cbb_jenis.EditValue) +';'); //JUMLAH NOMOR
      Active := true; //mid(no_kwi, 2,3)
    end;

  if Qkwi1.Fields[0].AsString = '' then
    urut1 := '0001'
  else
    urut1 := IntToStr(Qkwi1.Fields[0].AsInteger + 1);

  if length(urut1) < 4 then              //000001
  begin
    for i1 := length(urut1) to 3 do       // 5 = 00000
      urut1 := '0' + urut1;
  end;
   Ed_nomor.Text := urut1;
   Ed_nomor.Color := $FFCCCC;
   //cbo_no.Color := $FFCCCC;
  finally
     Qkwi1.Close;
  end;

  end;

 Function Tfrm_pesanan.Lastkasir(s:string):string;
 var QCari : TMyQuery;
begin
  QCari := TMyQuery.Create(nil);
  QCari.Connection := DmModul.con1;

  QCari.Close;
  QCari.Connection:=DmModul.con1;
  QCari.SQL.text:='SELECT MAX(Pesanan_No) AS NOTA'+
       ' FROM h_pesanan'+
       ' WHERE no_trans_k LIKE '+quotedstr(s);
  QCari.Open;
  if not QCari.IsEmpty then
  result:=QCari.fieldbyname('NOTA').AsString
  else
  result:='';
end;


Procedure Tfrm_pesanan.aturgrid2;
//var counter,hapus_baris : Integer;
begin
  counter:=0;
  hapus_baris:=0;
  Grid2.ColCount:=6;
  Grid2.RowCount:=1;
  Grid2.FixedRowAlways := True;
  Grid2.Cells[0,0]:='No.';
  Grid2.Cells[1,0]:='No. Pemesanan';
  Grid2.Cells[2,0]:='Tanggal.';
  Grid2.Cells[3,0]:='Penyedia';
  Grid2.Cells[4,0]:='Nilai';
  Grid2.Cells[5,0]:='No. tran';
  //Grid2.Cells[5,0]:='Gudang';
  Grid2.ColWidths[0]:=20;
  Grid2.ColWidths[1]:=90;
  Grid2.ColWidths[2]:=85;
  Grid2.ColWidths[3]:=240;
  Grid2.ColWidths[4]:=90;
  Grid2.ColWidths[5]:=130;
  //Grid2.ColWidths[5]:=90;



end;


Procedure Tfrm_pesanan.TampilDatacariJenis;
  var
  spdata : TMyStoredProc;
  i : integer;
  begin
   aturgrid2;
   spdata:= TMyStoredProc.Create(nil);
   spdata.Connection := DmModul.con1;
  try
    spdata.Close;
    spdata.StoredProcName := 'sp_GETtglPesanan';
    spdata.PrepareSQL;
    spdata.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp1.date); //key ba
    spdata.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key ba
    //spdata.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    //spdata.ParamByName('cari').AsString := cbb_carijenis.EditValue ;
    spdata.Open;

    lblcari.Caption := inttostr(spdata.RecordCount) +' record ';


    if spdata.Eof then
    begin
    ShowMessage('data Tanggal YANG DICARI tidak ada :'+ edcarinomor.Text);
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
          Grid2.Cells[1,counter]:=spdata.FieldByName('Pesanan_No').AsString;
          Grid2.Cells[2,counter]:=spdata.FieldByName('tgl_pesanan').AsString;
          Grid2.Cells[3,counter]:=spdata.FieldByName('NamaPerusahaan').AsString;
          Grid2.Cells[4,counter]:=spdata.FieldByName('Total').AsString;
          Grid2.Cells[5,counter]:=spdata.FieldByName('no_trans_p').AsString;
          //Grid2.Cells[5,counter]:=spdata.FieldByName('gudang').AsString;
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


Procedure Tfrm_pesanan.TampilDatacariTanggal;
  var
  spdata : TMyStoredProc;
  i : integer;
  begin
   aturgrid2;
   spdata:= TMyStoredProc.Create(nil);
   spdata.Connection := DmModul.con1;
  try
    spdata.Close;
    spdata.StoredProcName := 'sp_GETtglPesanan';
    spdata.PrepareSQL;
    spdata.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp1.date); //key ba
    spdata.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key ba
    spdata.ParamByName('carijns').AsString := FMenu.StatusBar1.Panels[1].Text;
    //spdata.ParamByName('cari').AsString := cbb_carijenis.EditValue ;
    spdata.Open;

    lblcari.Caption := inttostr(spdata.RecordCount) +' record ';


    if spdata.Eof then
    begin
    ShowMessage('data Tanggal YANG DICARI tidak ada :'+ edcarinomor.Text);
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
          Grid2.Cells[1,counter]:=spdata.FieldByName('Pesanan_No').AsString;
          Grid2.Cells[2,counter]:=spdata.FieldByName('tgl_pesanan').AsString;
          Grid2.Cells[3,counter]:=spdata.FieldByName('NamaPerusahaan').AsString;
          Grid2.Cells[4,counter]:=spdata.FieldByName('Total').AsString;
          Grid2.Cells[5,counter]:=spdata.FieldByName('no_trans_p').AsString;
          //Grid2.Cells[5,counter]:=spdata.FieldByName('gudang').AsString;
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

  Procedure Tfrm_pesanan.TampilDatacariNomor;
  var
  spdata : TMyStoredProc;
  i : integer;
  begin
   aturgrid2;
   spdata:= TMyStoredProc.Create(nil);
   spdata.Connection := DmModul.con1;
  try
    spdata.Close;
    spdata.StoredProcName := 'sp_GETNomorPesanan';
    spdata.PrepareSQL;
    //spdata.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp1.date); //key ba
    //spdata.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key ba
    //spdata.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    spdata.ParamByName('cari').AsString := edcarinomor.text;
    spdata.Open;

    lblcari.Caption := inttostr(spdata.RecordCount) +' record ';


    if spdata.Eof then
    begin
    ShowMessage('data Tanggal YANG DICARI tidak ada :'+ edcarinomor.Text);
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
          Grid2.Cells[1,counter]:=spdata.FieldByName('Pesanan_No').AsString;
          Grid2.Cells[2,counter]:=spdata.FieldByName('tgl_pesanan').AsString;
          Grid2.Cells[3,counter]:=spdata.FieldByName('NamaPerusahaan').AsString;
          Grid2.Cells[4,counter]:=spdata.FieldByName('Total').AsString;
          Grid2.Cells[5,counter]:=spdata.FieldByName('no_trans_p').AsString;
          //Grid2.Cells[5,counter]:=spdata.FieldByName('gudang').AsString;
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

  procedure Tfrm_pesanan.hitungTotal;
var
   n_t1,n_disk,n_t2,n_pajak,ppn,n_pengiriman, totalnilai1,totalnilai2,totspj :real;
begin
formatRupiah(ed_tjumlah);
n_t1 :=strtofloat (clearDot(ed_tjumlah.Text));
//n_t2 :=strtofloat (clearDot(edt2.Text));
ppn :=strtofloat (clearDot(ed_perpjk.Text));
//t1
ed_t1.Color:=clcream;
n_pajak := n_t1 *(ppn/100);
ed_pajak.Text := floattostr(n_pajak);
totalnilai2 := n_t1 + n_pajak ;
//pajak
formatRupiah(ed_pajak);

Edtotal.text := floattostr (totalnilai2);
Edtotal.Color:=clcream;
formatRupiah_des(Edtotal);
end;

end.
