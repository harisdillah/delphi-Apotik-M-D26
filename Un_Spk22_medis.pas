unit Un_Spk22_medis;

interface

uses
  Windows, Messages, SysUtils, variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, DB, ADODB,
  DBCtrls, Grids, DBGrids, Menus, ekbasereport, ekrtf,ComObj,
  BaseGrid, AdvGrid, DBAdvGrid,
  jpeg,DBAccess, MyAccess,
  MemDS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxButtonEdit, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxMemo,
  cxButtons, AdvObj,AdvUtil, EXLReportExcelTLB, EXLReportBand, EXLReport;


type
  TFspk22_medis = class(TForm)
    OpenDialog1: TOpenDialog;
    EkRTF1: TEkRTF;
    EkRTF2: TEkRTF;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PnInput: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    BtnCari_no: TBitBtn;
    Label29: TLabel;
    Label42: TLabel;
    SpeedButton10: TSpeedButton;
    OpenDialog2: TOpenDialog;
    tmr1: TTimer;
    Edit5: TEdit;
    Edit6: TEdit;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    ed_k2: TEdit;
    BitBtn4: TBitBtn;
    ed_k1: TEdit;
    cbb1: TComboBox;
    rg_cetak: TRadioGroup;
    SpeedButton16: TSpeedButton;
    pn_list: TPanel;
    grp1: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label39: TLabel;
    SpeedButton6: TSpeedButton;
    btn_tambah: TSpeedButton;
    ed_no: TEdit;
    ed_jml: TEdit;
    ed_hrg: TEdit;
    Ed_t1d: TEdit;
    PageControl2: TPageControl;
    StringGrid1: TAdvStringGrid;
    SpeedButton5: TSpeedButton;
    BitBtn8: TBitBtn;
    SpeedButton11: TSpeedButton;
    ed_satuan: TComboBox;
    ksp: TMyStoredProc;
    Label3: TLabel;
    spDs: TMyStoredProc;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    cxlkndflcntrlr1: TcxLookAndFeelController;
    cxlkndflcntrlr2: TcxLookAndFeelController;
    btnBtnUbah: TSpeedButton;
    ednokwi: TEdit;
    btncari: TSpeedButton;
    btn2: TSpeedButton;
    ds1: TMyDataSource;
    Edit3: TEdit;
    Edit4: TEdit;
    lbl3: TLabel;
    Label6: TLabel;
    btn5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    pnl1: TPanel;
    lbl5: TLabel;
    lbl_tunggu: TLabel;
    Label16: TLabel;
    Edit1: TEdit;
    pnl4: TPanel;
    lv1: TListView;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    ed_nama: TEdit;
    rg_ba: TRadioGroup;
    BitBtn17: TBitBtn;
    Edit2: TEdit;
    Label38: TLabel;
    lbl6: TLabel;
    ts1: TTabSheet;
    grp2: TGroupBox;
    cxm1: TcxMemo;
    cxcari: TcxButtonEdit;
    lbl7: TLabel;
    dtp_awal: TDateTimePicker;
    dtp_akhir: TDateTimePicker;
    btnexportdpa: TSpeedButton;
    pnl2: TPanel;
    btn7: TSpeedButton;
    btnBtnBaru: TSpeedButton;
    btn_hapusd: TSpeedButton;
    btnproses: TSpeedButton;
    PnOperasi: TcxButton;
    dtpTrans: TDateTimePicker;
    BitBtn5: TBitBtn;
    ts2: TTabSheet;
    Panel1: TPanel;
    Label51: TLabel;
    cbb2: TcxLookupComboBox;
    Label13: TLabel;
    ed_a: TcxButtonEdit;
    ed_pagu: TEdit;
    ed_Tpagu: TEdit;
    ed_u_a: TEdit;
    Label4: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label26: TLabel;
    M_l: TMemo;
    mp: TMemo;
    BitBtn10: TBitBtn;
    Label21: TLabel;
    ed_npenw: TEdit;
    ed_TPewn: TEdit;
    Label23: TLabel;
    ed_nNego: TEdit;
    ED_Tnego: TEdit;
    ed_cv: TcxButtonEdit;
    Ed_u_cv: TEdit;
    Label7: TLabel;
    Label1: TLabel;
    tgl_awal: TDateTimePicker;
    tgl_akhir: TDateTimePicker;
    ed_jml_hr: TEdit;
    ed_Thr: TEdit;
    btn1: TSpeedButton;
    ts3: TTabSheet;
    Panel3: TPanel;
    Label9: TLabel;
    Label15: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label57: TLabel;
    lblagenda: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    tgl_nota_dns_tgl: TDateTimePicker;
    e_nota_dns_no: TEdit;
    tgl_hps_tgl: TDateTimePicker;
    tgl_uppl_tgl: TDateTimePicker;
    e_uppl_no: TEdit;
    tgl_pfk_tgl: TDateTimePicker;
    tgl_ba_ek_tgl: TDateTimePicker;
    e_ba_ek_no: TEdit;
    tgl_p_h_ek_tgl: TDateTimePicker;
    e_p_h_ek_no: TEdit;
    tgl_penj_p_tgl: TDateTimePicker;
    e_penj_p_no: TEdit;
    tgl_p_perw_tgl: TDateTimePicker;
    e_p_perw_no: TEdit;
    tgl_ba_pem_perw_tgl: TDateTimePicker;
    e_ba_pem_perw_no: TEdit;
    tgl_ba_kla_nego_tgl: TDateTimePicker;
    e_ba_kla_nego_no: TEdit;
    tgl_ba_h_pl_tgl: TDateTimePicker;
    e_ba_h_pl_no: TEdit;
    tgl_pen_ba_p_pl_tgl: TDateTimePicker;
    e_pen_ba_p_pl_no: TEdit;
    tgl_sppbj_tgl: TDateTimePicker;
    e_sppbj_no: TEdit;
    tgl_spk_tgl: TDateTimePicker;
    e_spk_no: TEdit;
    e_ba_ek_t_hr: TEdit;
    e_penj_p_t_hr: TEdit;
    e_ba_pem_perw_t_hr: TEdit;
    e_ba_kla_nego_t_hr: TEdit;
    e_ba_h_pl_t_hr: TEdit;
    e_spk_t_hr: TEdit;
    BitBtn2: TBitBtn;
    Label24: TLabel;
    ed_tgl_jt: TDateTimePicker;
    lbl8: TLabel;
    tgl_bayar: TDateTimePicker;
    BitBtn14: TBitBtn;
    dtg_bulan: TDateTimePicker;
    SpeedButton2: TSpeedButton;
    Label50: TLabel;
    Edtotal: TEdit;
    Label8: TLabel;
    TabSheet5: TTabSheet;
    lbl1: TLabel;
    Label49: TLabel;
    ed_t1: TEdit;
    ed_pjk: TEdit;
    ed_t2: TEdit;
    chk2: TCheckBox;
    chktempo: TCheckBox;
    Label22: TLabel;
    ed_no_faktur: TcxMemo;
    Label40: TLabel;
    ed_tgl_faktur: TDateTimePicker;
    ed_perpjk: TEdit;
    cxTerbiilang_kwi: TcxMemo;
    Label10: TLabel;
    ed_hps: TEdit;
    Ed_thps: TEdit;
    psc: TMyStoredProc;
    BitBtn1: TBitBtn;
    dlgOpen1: TOpenDialog;
    Label14: TLabel;
    cbb_pejabat: TcxLookupComboBox;
    ds2: TMyDataSource;
    Label17: TLabel;
    cbb_pejabat_ba: TcxLookupComboBox;
    ds3: TMyDataSource;
    Label18: TLabel;
    dtp_spmk: TDateTimePicker;
    edt_spmk: TEdit;
    edt_tspmk: TEdit;
    Label19: TLabel;
    dtgl_eva_perw: TDateTimePicker;
    edt_eva_perw: TEdit;
    edt_hr_eva_perw: TEdit;
    Label20: TLabel;
    cbb_ppk: TcxLookupComboBox;
    ds4: TMyDataSource;
    Sp_EXPORT: TMyStoredProc;
    Label36: TLabel;
    Ed_disk_d: TEdit;
    CheckBox1: TCheckBox;
    ed_Tdisk: TEdit;
    Label41: TLabel;
    ed_t2_d: TEdit;
    Label31: TLabel;
    ed_disk: TEdit;
    lbl2: TLabel;
    chk1: TCheckBox;
    edtpengiriman: TEdit;
    qba: TMyQuery;
    btn6: TSpeedButton;
    Label30: TLabel;
    ed_bayar: TEdit;
    BitBtn7: TBitBtn;
    mysphc: TMyStoredProc;
    myspds: TMyStoredProc;
    BitBtn9: TBitBtn;
    mmo1: TMemo;
    exlrprt1: TEXLReport;
    Label55: TLabel;
    cxLookupVerifikator: TcxLookupComboBox;
    Label56: TLabel;
    cxLookupDokument: TcxLookupComboBox;
    dsVerifikator: TMyDataSource;
    dsDokument: TMyDataSource;
    SpeedButton3: TSpeedButton;
    Edkodetransaksi: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnBtnBaruClick(Sender: TObject);
    procedure BtnUbahClick(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ed_aChange(Sender: TObject);
    procedure ed_ThrChange(Sender: TObject);
    procedure ed_jml_hrChange(Sender: TObject);
    procedure btnBaPelClick(Sender: TObject);
    procedure BtnCari_noClick(Sender: TObject);
    procedure ed_SPK_TglChange(Sender: TObject);
    procedure ed_BA_P_Brg_tglChange(Sender: TObject);
    procedure ed_cvChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure btncrspClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EdNokwiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure ed_t1Change(Sender: TObject);
    procedure ed_diskChange(Sender: TObject);
    procedure ed_pjkChange(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btn_tambahClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure exlrprt1BeforeBuild(Sender: TObject);
    procedure exlrprt1GetFieldValue(Sender: TObject; const Field: String;
      var Value: OleVariant);
    procedure btn_simbadaClick(Sender: TObject);
    procedure btn_detail_spClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure StringGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure SpeedButton9Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure CheckBox1Click(Sender: TObject);
    procedure ed_jmlChange(Sender: TObject);
    procedure ed_hrgChange(Sender: TObject);
    procedure Ed_disk_dChange(Sender: TObject);
    procedure ed_TdiskChange(Sender: TObject);
    procedure btn_hapusdClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure grdCellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: String; var Valid: Boolean);
    procedure grdGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure SpeedButton13Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure StringGrid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure BitBtn15Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure tgl_akhirChange(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure btnprosesClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure chktempoClick(Sender: TObject);
    procedure btn5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ed_aPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ed_aPropertiesChange(Sender: TObject);
    procedure ed_paguChange(Sender: TObject);
    procedure ed_cvPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ed_cvPropertiesChange(Sender: TObject);
    procedure btnBtnUbahClick(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure StringGrid1GetFloatFormat(Sender: TObject; ACol,
      ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
    procedure Edit4Change(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure ed_namaKeyPress(Sender: TObject; var Key: Char);
    procedure lv1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lv1KeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid1DblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ed_jmlKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure cxcariPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnexportdpaClick(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure dtgl_ujiChange(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure ed_npenwChange(Sender: TObject);
    procedure ed_nNegoChange(Sender: TObject);
    procedure tgl_ba_ek_tglChange(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure tgl_penj_p_tglChange(Sender: TObject);
    procedure tgl_ba_pem_perw_tglChange(Sender: TObject);
    procedure tgl_ba_kla_nego_tglChange(Sender: TObject);
    procedure tgl_ba_h_pl_tglChange(Sender: TObject);
    procedure tgl_spk_tglChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ed_t2Change(Sender: TObject);
    procedure ed_hpsChange(Sender: TObject);
    procedure dtp_spmkChange(Sender: TObject);
    procedure dtgl_eva_perwChange(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure ed_bayarChange(Sender: TObject);
    procedure ed_perpjkChange(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure EdtotalClick(Sender: TObject);
    procedure tgl_bayarClick(Sender: TObject);
    procedure ednokwiChange(Sender: TObject);

  private
  //prosedur

  //procedure SimPhoto(nKode,nSource:string);
    { Private declarations }
    Procedure cx_peb_dokument;
    Procedure cx_peb_verif;


  public
    { Public declarations }
    procedure HITUNG;
    procedure TampilData;
    procedure buatno;
    procedure combo;
    procedure combo1;
    procedure KosongTex(Kunci: Boolean);
    function Capital(Value:String):String;
    function getReportPath : String;
    procedure deleterow(mg:TStringGrid; ARow:integer);
    procedure RightEdit(e:TEdit);
    procedure CenterEdit(e:TEdit);
    Procedure Aturgrid;
    procedure showData(cari:boolean;kt_kunci:string;nilai:string);
    function Caribrg(nkode_cr: String):string;
    Procedure tgl_blnTex(Kunci:Boolean);
    Procedure Tgl_sekarang(Kunci:Boolean);
    procedure hitung_total; procedure Total;
    Procedure cx_pejabat;
    Procedure cx_pejabat_BA;
    Procedure cx_Jenis;
    Procedure Tgl_mati;
    Procedure cx_peb_ppk;

  end;

var
  Fspk22_medis: TFspk22_medis;
  vKode:String;
  nGambar:String;
  FCounter :integer;
  //var detail/
  tambah: boolean;
  counter,hapus_baris:integer;
	tgl:TDateTime;
   //	i: Extended;
	s,m1,m2,m3,m4,m5,ppn: String;

   jml,hrgd,harga,n_t1d,ddisk,n_diskd
   ,n_t2d,n_pajakd, total_harga :real;
   fileku,dir : string;
   trs : Boolean;
  datafilexls, cariid : string;
  cek_baris:string;

implementation
uses
  UnModul,uconfig,UF_dbsql,UFunctions,unmenu,Clipbrd,UnCarisp,
  unVariabel,Un_list_spk16,Un_ganti_barang_spk_medis,Un_BA_baru,uDBXls ;
{$R *.dfm}


Procedure TFspk22_medis.cx_peb_verif;
var
  q_verif : TMyQuery;
begin
  q_verif := TMyQuery.Create(nil);
  try
  q_verif.Connection := DmModul.con1;
  q_verif.Active := false;
  q_verif.SQL.Clear;
  q_verif.SQL.Text := 'Select * from m_verif';
  q_verif.Open;
    if q_verif.RecordCount > 0 then
  begin
    dsVerifikator.DataSet := q_verif;
    cxLookupVerifikator.Properties.ListSource := dsVerifikator;
    cxLookupVerifikator.Properties.ListOptions.ShowHeader := False;
    cxLookupVerifikator.Properties.ListFieldNames := 'nama';
    cxLookupVerifikator.Properties.KeyFieldNames := 'nip';

  end;
   finally


end;
end;

Procedure TFspk22_medis.cx_peb_dokument;
var
  qDokument : TMyQuery;
begin
  qDokument := TMyQuery.Create(nil);
  try
  qDokument.Connection := DmModul.con1;
  qDokument.Active := false;
  qDokument.SQL.Clear;
  qDokument.SQL.Text := 'Select * from m_pembuat';
  qDokument.Open;
    if qDokument.RecordCount > 0 then
  begin
    dsDokument.DataSet := qDokument;
    cxLookupDokument.Properties.ListSource := dsDokument;
    cxLookupDokument.Properties.ListOptions.ShowHeader := False;
    cxLookupDokument.Properties.ListFieldNames := 'nama';
    cxLookupDokument.Properties.KeyFieldNames := 'nip';

  end;
   finally
    //qDokument.close;

end;
end;


procedure TFspk22_medis.HITUNG;
begin

  if ed_jml.Text='' then begin
   //ShowMessage('Masukan jumlah Qty!');
   ed_jml.SetFocus;
   exit;
  end;


  if ed_hrg.Text='' then begin
   //ShowMessage('@ Hrg Satuan!');
   ed_hrg.SetFocus;
   exit;
  end;

  jml :=strtofloat(ed_jml.Text);
  hrgd :=strtofloat(ed_hrg.Text);
  ddisk :=strtofloat(Ed_disk_d.Text);

  n_t1d := jml * hrgd;

  if CheckBox1.Checked then
    begin
     n_diskd := strtofloat(ed_Tdisk.Text);;
   end
    else
  begin
   n_diskd := n_t1d * (ddisk /100 );
  end;
//n_diskd := n_t1d * (ddisk /100 );

//Penjumlahan
n_t2d := n_t1d - n_diskd;

ed_Tdisk.text := floattostr (n_diskd);
ed_Tdisk.Color:=clMoneyGreen;

ed_t2_d.text := floattostr (n_t2d);
ed_t2_d.Color:=clMoneyGreen;

Ed_t1d.text := floattostr (n_t1d);
Ed_t1d.Color:=clMoneyGreen;

end;


Procedure TFspk22_medis.cx_peb_ppk;
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


Procedure TFspk22_medis.Tgl_mati;
begin
  //tgl Jatuh Tempo
  ed_tgl_jt.ShowCheckbox :=true;
  ed_tgl_jt.Date :=date;
  ed_tgl_jt.Checked := false;

  //tgl bayar
  tgl_bayar.ShowCheckbox :=true;
  tgl_bayar.Date :=date;
  tgl_bayar.Checked := false;

end;

Procedure TFspk22_medis.cx_Jenis;
var
  q2 : TMyQuery;
begin
  q2 := TMyQuery.Create(nil);
  try
  q2.Connection := DmModul.Con1;
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text := 'Select * from m_jenis';
  q2.Open;
    if q2.RecordCount > 0 then
  begin
  ds1.DataSet := q2;
  cbb2.Properties.ListSource := ds1;
  cbb2.Properties.ListOptions.ShowHeader := False;
  cbb2.Properties.ListFieldNames := 'U_jenis';
  cbb2.Properties.KeyFieldNames := 'no_jns';
  end;
   finally
  end;

end;




Procedure TFspk22_medis.cx_pejabat_BA;
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




Procedure TFspk22_medis.cx_pejabat;
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

{
qcom.Close;
      qcom.CommandText:=
      'Select satuan From satuan ';
      qcom.Open;
      cbo_bl.Items.Clear;
while not qcom.Eof do
begin
cbo_bl.Items.Add(qcom['satuan']);
qcom.Next;
end;
}
end;
end;

procedure TFspk22_medis.hitung_total;
var
   n_t1,n_pajak,total1 :real;
begin

      //formatRupiah(ed_t2);
      n_t1 :=strtofloat (clearDot(ed_t1.Text));
      ed_t2.Color:=clMoneyGreen;

      if  chk2.Checked then
      begin
      n_pajak := 0;
      ed_pjk.Color := clRed;
      Label49.Caption := 'Non Ppn';
      ed_perpjk.Text := '0';
      ed_pjk.Text := floattostr(n_pajak);
      total1 := n_t1 + n_pajak ;
      end
      else
      begin
      n_pajak := n_t1 *(10/100);
      ed_pjk.Text := floattostr(n_pajak);
      total1 := n_t1 + n_pajak ;
      end;
      ed_t2.text := floattostr (total1);
      ed_t2.Color:=clMoneyGreen;
 formatRupiah(ed_t2);
 //RightEdit(ed_t1);
 //RightEdit(ed_pjk);
 //RightEdit(ed_t2);

end;



Procedure TFspk22_medis.Tgl_sekarang(Kunci:Boolean);
Begin

  if MessageDlg('Data dengan'+#13+#10+EdNokwi.Text+#13+#10+
        'data List akan Di kosongkan di pilih Tanggal yang di Jadwal, lanjutkan?',
        mtconfirmation, [mbOK, mbCancel], 0) = mrOK then
begin



    if Kunci=True then
    begin
//ed_no.Text:='';
    tgl_nota_dns_tgl.date:=now;
    e_nota_dns_no.Text:='';
    tgl_hps_tgl.date:=now;
    tgl_uppl_tgl.date:=now;
    e_uppl_no.Text:='';
    tgl_pfk_tgl.date:=now;
    tgl_ba_ek_tgl.date:=now;
    e_ba_ek_no.Text:='';
    e_ba_ek_t_hr.Text:='';
    tgl_p_h_ek_tgl.date:=now;
    e_p_h_ek_no.Text:='';
    tgl_penj_p_tgl.date:=now;
    e_penj_p_no.Text:='';
    e_penj_p_t_hr.Text:='';
    tgl_p_perw_tgl.date:=now;
      e_p_perw_no.Text:='';
      tgl_ba_pem_perw_tgl.date:=now;
      e_ba_pem_perw_no.Text:='';
      e_ba_pem_perw_t_hr.Text:='';

      dtgl_eva_perw.date:=now;
      edt_eva_perw.Text:='';
      edt_hr_eva_perw.Text:='';

      tgl_ba_kla_nego_tgl.date:=now;
      e_ba_kla_nego_no.Text:='';
      e_ba_kla_nego_t_hr.Text:='';


      tgl_ba_h_pl_tgl.date:=now;
      e_ba_h_pl_no.Text:='';
      e_ba_h_pl_t_hr.Text:='';
      tgl_pen_ba_p_pl_tgl.date:=now;
      e_pen_ba_p_pl_no.Text:='';
      tgl_sppbj_tgl.date:=now;
      e_sppbj_no.Text:='';
      //dtpPPeker.date:=now;
      tgl_spk_tgl.date:=now;
      e_spk_no.Text:='';
      e_spk_t_hr.Text:='';
      dtp_spmk.date:=now;
      //tgl_faktur_tgl.date:=now;
      {
      tgl_ba_p_hasil_tgl.date:=now;
      tgl_ba_peny_p_tgl.date:=now;

 }
        end;
    end;
   end;
Procedure TFspk22_medis.tgl_blnTex(Kunci:Boolean);
var bulanku : string;
Begin
  if Kunci=True then
  begin

    //bulanku := DateToStr(dtg_bulan.date);
    //ed_no.Text:='';

    tgl_nota_dns_tgl.date:=dtg_bulan.date;
    e_nota_dns_no.Text:='';
    tgl_hps_tgl.date:=dtg_bulan.date;
    tgl_uppl_tgl.date:=dtg_bulan.date;
    e_uppl_no.Text:='';
    tgl_pfk_tgl.date:=dtg_bulan.date;
    tgl_ba_ek_tgl.date:=dtg_bulan.date;
    e_ba_ek_no.Text:='';
    e_ba_ek_t_hr.Text:='';
    tgl_p_h_ek_tgl.date:=dtg_bulan.date;
    e_p_h_ek_no.Text:='';
    tgl_penj_p_tgl.date:=dtg_bulan.date;
    e_penj_p_no.Text:='';
    e_penj_p_t_hr.Text:='';
    tgl_p_perw_tgl.date:=dtg_bulan.date;
      e_p_perw_no.Text:='';
      tgl_ba_pem_perw_tgl.date:=dtg_bulan.date;
      e_ba_pem_perw_no.Text:='';
      e_ba_pem_perw_t_hr.Text:='';
      tgl_ba_kla_nego_tgl.date:=dtg_bulan.date;
      e_ba_kla_nego_no.Text:='';
      e_ba_kla_nego_t_hr.Text:='';
      tgl_ba_h_pl_tgl.date:=dtg_bulan.date;
      e_ba_h_pl_no.Text:='';
      e_ba_h_pl_t_hr.Text:='';
      tgl_pen_ba_p_pl_tgl.date:=dtg_bulan.date;
      e_pen_ba_p_pl_no.Text:='';
      tgl_sppbj_tgl.date:=dtg_bulan.date;
      e_sppbj_no.Text:='';


      tgl_spk_tgl.date:=dtg_bulan.date;
      e_spk_no.Text:='';
      e_spk_t_hr.Text:='';
      ed_tgl_faktur.date:=dtg_bulan.date;
      dtp_spmk.date:=dtg_bulan.date;
      //tgl_ba_p_hasil_tgl.date:=dtg_bulan.date;
      //tgl_ba_peny_p_tgl.date:=dtg_bulan.date;
      //dtpPPeker.date:=dtg_bulan.date;
      //tgl_faktur_tgl.date:=dtg_bulan.date;

  end;
end;


//-- function cari
function TFspk22_medis.Caribrg(nkode_cr: String):string;
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
  StoredProcName := 'sp_barang_spk' ;
  PrepareSQL;
  ParamByName('cari').AsString := ed_nama.text;
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
      //dmmodul.dataRow(QBarangDDL.FieldByName('kode'),'-');
      dt.Caption:=(dataRow(Q6.FieldByName('nama'),'-'));
      dt.SubItems.Add(dataRow(Q6.FieldByName('hrga_satuan'),'0'));
      dt.SubItems.Add(dataRow(Q6.FieldByName('satuan'),'0'));
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

Procedure TFspk22_medis.Aturgrid;
begin

  counter:=0;
  hapus_baris:=0;

  StringGrid1.ColCount:=9;
  StringGrid1.RowCount:=1;
  StringGrid1.FixedRowAlways := True;


  StringGrid1.Cells[0,0]:='NO';
  StringGrid1.Cells[1,0]:='No.';
  StringGrid1.Cells[2,0]:='Nama';
  StringGrid1.Cells[3,0]:='jumlah';
  StringGrid1.Cells[4,0]:='Satuan';
  StringGrid1.Cells[5,0]:='Harga';
  StringGrid1.Cells[6,0]:='Total 1';
  StringGrid1.Cells[7,0]:='disk';
  StringGrid1.Cells[8,0]:='Total 2';

  StringGrid1.ColWidths[0]:=30;
  StringGrid1.ColWidths[1]:=40;
  StringGrid1.ColWidths[2]:=250;
  StringGrid1.ColWidths[3]:=60;
  StringGrid1.ColWidths[4]:=50;
  StringGrid1.ColWidths[5]:=80;
  StringGrid1.ColWidths[6]:=90;
  StringGrid1.ColWidths[7]:=90;
  StringGrid1.ColWidths[8]:=90;
    //clear grid
  //StringGrid1.ClearRows(1, StringGrid1.RowCount - 1);


end;



procedure TFspk22_medis.CenterEdit(e: TEdit);
begin
SetWindowLong(e.Handle,GWL_STYLE,GetWindowLong(e.Handle,GWL_STYLE) or ES_CENTER);
end;

procedure TFspk22_medis.RightEdit(e: TEdit);
begin
SetWindowLong(e.Handle,GWL_STYLE,GetWindowLong(e.Handle,GWL_STYLE) or ES_RIGHT);
end;

procedure TFspk22_medis.showData(cari:boolean;kt_kunci:string;nilai:string);
//var
 //dt:TListItem;
 //no:integer;
begin
 {
 no:=0;
 ListView1.Clear;
 with dmmodul.QJenisDDL do
 begin
   Close;
   SQL.Text:='SELECT * FROM v_datasp_obat';
  //    if cari then
  //    SQL.Text:=SQL.Text+' WHERE '+kt_kunci+' LIKE ('+''''+'%'+EdCari.Text+'%'+''''+')';
   SQL.Text:=SQL.Text+' ORDER BY no_peng ASC';
   Open;
   label6.Caption :='Jumlah : '+ inttostr(dmmodul.QJenisDDL.recordcount)+' Data';

   if not IsEmpty then
      begin
       while not Eof do
       begin
        Inc(no);
        dt:=ListView1.Items.Add;
        dt.Caption:=IntToStr(no);
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('spk_tgl'),''));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('spk_no'),''));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('NamaPerusahaan'),''));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('BA_Penerimaan_Brg_tgl'),''));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('BA_Penerimaan_Brg_no'),'-'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('no_penyimpan'),'-'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('tglbayar'),'-'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('kd_bidang'),'-'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('kdrek_brg'),'-'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('nama'),'-'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('jumlah'),'0'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('satuan'),'-'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('hrga_satuan'),'0'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('ppn'),'0'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('tgl_faktur'),'-'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('no_faktur'),'-'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('KWITANSI'),'-'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('n_t2'),'0'));
        dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('no_peng'),'-'));

        //dt.SubItems.Add(DmModul.dataRow(DmModul.QJenisDDL.FieldByName('telp'),'-'));
        Next;
       end;
        //ListView1.SetFocus;
        ListView1.Items.Item[0].Selected:=true;
     end;
 end;
 }
end;




//folder data
function TFspk22_medis.getReportPath : String;
 var
 sResult : String;
 begin
 sResult := ExtractFilePath(Application.ExeName) + '/rtf/';
 Result := sResult;
 end;

function TFspk22_medis.Capital(Value:String):String;
Var i:integer; s:string;
begin
  s:=UpperCase(Value[1]);
  for i:=2 to Length(Value) do
  if (Value[i-1] in [' ',',',':',';','.']) then
  s:=s+UpperCase(Value[i]) else s:=s+LowerCase(Value[i]);
  Result:=s;
end;

function clearDot(AEdit:string):string;
begin
 Result:=StringReplace(AEdit,'.','',[rfReplaceAll]);
end;

function GetPosition(AEdit: TEdit): integer;
var
 index:integer;
begin
 index:=AEdit.SelStart-SendMessage(AEdit.Handle,EM_LINEINDEX,0,0);
 Inc(index);
 Result:=index;
end;

procedure formatRupiah(AEdit: TEdit);
var
 pos:integer;
 mydata:string;
begin
 pos:=GetPosition(AEdit);
 mydata:=StringReplace(AEdit.Text,'.','',[rfReplaceAll]);
 AEdit.Text:=Format('%.0n',[StrToFloatDef(mydata,0)]);
 AEdit.SelStart:=pos;
end;

function formatRp(input:string):string;
begin
 Result:=Format('%.0n',[StrToFloatDef(input,0)]);
end;


////////////////////////////
procedure TFspk22_medis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fspk22_medis:=nil;
  Action:=caFree;
end;
//combo atasan
Procedure TFspk22_medis.combo1;
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
      ed_satuan.Items.Clear;
while not qcom1.Eof do
begin
ed_satuan.Items.Add(qcom1.FieldByName('satuan').AsString);
qcom1.Next;
end;

finally
qcom1.Close;
qcom1.Free;
end;
end;

function Validasi:Boolean;
begin
  with Fspk22_medis do
  begin

     if cbb2.Text = '' then
  begin
    Showmessage('Jenis masih Pengadaan kosong');
    cbb2.SetFocus;
    Result:=False;
    exit
  end else
  if cbb_ppk.Text = '' then
  begin
    Showmessage('PPK masih kosong');
    cbb_ppk.SetFocus;
    Result:=False;
    exit
  end
  else
  if cbb_pejabat.Text = '' then
  begin
    Showmessage('Pejabat Pengadaan masih kosong');
    cbb_pejabat.SetFocus;
    Result:=False;
         exit
  end
  else
  if cbb_pejabat_ba.Text = '' then
  begin
    Showmessage('Tanda Tangan BA masih kosong');
    cbb_pejabat_ba.SetFocus;
    Result:=False;
         exit
  end
  else
  if cxLookupVerifikator.Text = '' then
  begin
    Showmessage('Verifikator masih kosong');
    cxLookupVerifikator.SetFocus;
    Result:=False;
         exit
  end
  else
  if cxLookupDokument.Text = '' then
  begin
    Showmessage('Pembuat Dokument masih kosong');
    cxLookupDokument.SetFocus;
    Result:=False;
         exit
  end
  else
  if ednokwi.Text = '' then
  begin
    Showmessage('Nama Pengadaan Kosong');
    //ednokwi.SetFocus;
    Result:=False;
         exit
  end
  else
  if ed_a.Text = '' then
  begin
    Showmessage('Anggaran masih kosong');
    //ed_a.SetFocus;
    Result:=False;
         exit
  end
  else
  if Ed_cv.Text = '' then
  begin
    Showmessage('cv masih kosong');
    //Ed_cv.SetFocus;
    Result:=False;
         exit
  end

  end;
  Result:=True;
end;




procedure TFspk22_medis.FormCreate(Sender: TObject);
begin
 //---
SpeedButton7.Enabled := false;
btn5.Enabled := false;

 //AktifControl(Self,PnInput, False);
 PnInput.Show;
 rg_cetak.ItemIndex := 0;
 rg_ba.ItemIndex := 0;

 // link data combo 
 combo1;
 cx_Jenis;
 cx_pejabat;
 cx_pejabat_BA;
 cx_peb_ppk;
 cx_peb_verif;
 cx_peb_dokument;

 //tglbuat.Date:=Date;
 //buatno;
 EdNokwi.Text:=buat_agenda('i_header','no_peng','s');
 RightEdit(ed_t1);
 RightEdit(ed_pjk);
 RightEdit(ed_t2);



 //EdNokwi.Text:=generateID('i_pjbt_kontr','no_peng','e');

 // tambahan
 tgl_awal.Date:=Date;
 tgl_akhir.Date:=Date;
 DtpTrans.Date:=Date;
 dtg_bulan.Date:=Date;
// dp_tgl1.Date:=Date;
// dp_tgl2.Date:=Date;


 //ed_nota_tgl.Date:=Date;
 //ed_SPK_Tgl.Date:=Date;
 //ed_BA_P_Brg_tgl.Date:=Date;
 ed_tgl_faktur.Date:=Date;
 //ed_tgl_jt.Date:=Date;
  ed_tgl_jt.ShowCheckbox :=true;
  ed_tgl_jt.Date :=date;
  ed_tgl_jt.Checked := false;

//tgl bayar
tgl_bayar.ShowCheckbox :=true;
tgl_bayar.Date :=date;
tgl_bayar.Checked := false;

{
//CenterEdit(Edit1);
//rata kanan
RightEdit(ed_t1);
RightEdit(ed_disk);
RightEdit(ed_t2);
RightEdit(Ed_pjk);
RightEdit(ed_bayar);

//detail
  RightEdit(ed_t1);
  RightEdit(ed_disk);
  RightEdit(ed_t2);
  RightEdit(ed_pjk);
  RightEdit(ed_bayar);
  RightEdit(ed_spj);
  BtnHapus.Enabled := false;
  }


  aturgrid;

  

 end;

procedure TFspk22_medis.btnBtnBaruClick(Sender: TObject);
Var i:integer;
begin
 //AktifControl(Self,PnInput, True);
 //AktifControl(Self,Pn_list, True);
 PnOperasi.Caption:='Tambah Data';
 KosongTex(True);

 btncari_no.Enabled := false;
 Tgl_mati;

 //buatno;
 EdNokwi.Text:=buat_agenda('i_header','no_peng','s');
 //EdNokwi.Text:=generateID('i_pjbt_kontr','no_peng','k');

 //tambah:=True;


 //ed_peng.Text := ednokwi.Text;
 Caption:='data baru' ;
 end;

procedure TFspk22_medis.BtnUbahClick(Sender: TObject);
begin
 //AktifControl(Self,PnInput, False);
 //AktifControl(Self,Pn_list, False);
 PnOperasi.Caption:='Ubah Data';
 ednokwi.Enabled:=True;
 //ednokwi.Color:=clWhite;
 //btncrsp.Enabled:=True;
 //btncrspClick(Sender);
 //ednokwi.SetFocus;
 //tambah:=False;
end;

procedure TFspk22_medis.BtnHapusClick(Sender: TObject);
begin

end;




// tampil ke edit text
Procedure TFspk22_medis.TampilData;
var
  perintah:string;
  jml,harga,total_harga,i:integer;
  selisih : real;
  i2 : Integer;
  AdDsData : TMyQuery;
  AdDsData1 : TMyQuery;
  AdDsData2 : TMyQuery;

  Begin

  AdDsData := TMyQuery.Create(nil);
  AdDsData.Connection := DmModul.con1;
 try

  AdDsData.Active := false;
  AdDsData.SQL.Clear;
  AdDsData.SQL.Text :='select * from i_Header where no_peng='+
  QuotedStr(ednokwi.Text)+'';
  AdDsData.Open;

   if AdDsData.RecordCount > 0 then
  begin

   if PnOperasi.Caption='Ubah Data' then
   begin
        //AktifControl(Self,PnInput,True);
        //AktifControl(Self,Pn_list,True);
    BtnProses.Enabled:=True;
    Aturgrid;
    end;

     EdNokwi.Text:=AdDsData.FieldByName('no_peng').AsString;
     cbb2.EditValue:=AdDsData.FieldByName('jns').AsString;
     mp.Text:=AdDsData.FieldByName('pengadaan').AsString;
     M_l.Text:=AdDsData.FieldByName('lingkup').AsString;
     ed_a.Text:=AdDsData.FieldByName('anggaran').AsString;
     ed_pagu.Text:=AdDsData.FieldByName('pagu').AsString;
     ed_cv.Text:=AdDsData.FieldByName('cv').AsString;
     tgl_awal.Date:=AdDsData.FieldByName('tgl_awal').AsDateTime;
     tgl_akhir.Date:=AdDsData.FieldByName('tgl_akhir').AsDateTime;
     ed_jml_hr.Text:=AdDsData.FieldByName('jml_hr').AsString;
     ed_hps.Text:=AdDsData.FieldByName('n_hps').AsString;
     ed_npenw.Text:=AdDsData.FieldByName('n_penw').AsString;

     // link pejabat dan BA
     cbb_pejabat.EditValue:=AdDsData.FieldByName('ttd_jab').AsString;
     cbb_pejabat_ba.EditValue:=AdDsData.FieldByName('ttd_jab_BA').AsString;
     cbb_ppk.EditValue:=AdDsData.FieldByName('ttd_ppk').AsString;
     cxLookupVerifikator.EditValue:=AdDsData.FieldByName('verif').AsString;
     cxLookupDokument.EditValue:=AdDsData.FieldByName('pembuat').AsString;



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

    //tanggal bayar
    if VarIsNull(AdDsData['tglbayar']) then
      begin
      tgl_bayar.ShowCheckbox :=true;
      tgl_bayar.Checked := false;
      tgl_bayar.Color := $0000FF;
       label29.Caption := 'blm : Spj';
      end
    else
      begin
    tgl_bayar.Date:=AdDsData.FieldByName('tglbayar').AsDateTime;
    label29.Caption := 'Sudah Spj';
    tgl_bayar.Color := $00FF00;
    end;

    //untuk membaca database atau read
   // if AdDsData.fieldbyname('ket_ppn').AsString='1' then
   //   chk2.checked := true else chk2.checked:=false;

     //ed_peng.Text := ednokwi.Text;
     // Caption:=Ed_u_cv.Text +' / ' +ed_bayar.Text + ' / ' + ed_no_faktur.Text ;
      Caption:=Ed_u_cv.Text + ed_no_faktur.Text ;
  end

  else
    begin
    ShowMessage( 'data kosong / Tidak ADA : ' + EdNokwi.Text );
    end;

  finally
    AdDsData.Close;
    AdDsData.Free;
  end;

  // list spk
  AdDsData2 := TMyQuery.Create(nil);
  AdDsData2.Connection := DmModul.con1;
 try

  AdDsData2.Active := false;
  AdDsData2.SQL.Clear;
  AdDsData2.SQL.Text :='select * from i_list where no_peng='+
  QuotedStr(ednokwi.Text)+'';
  AdDsData2.Open;

    ed_no.Text:=AdDsData2.FieldByName('no_peng').AsString;
    tgl_nota_dns_tgl.date:=AdDsData2.FieldByName('nota_dns_tgl').AsDateTime;
    e_nota_dns_no.Text:=AdDsData2.FieldByName('nota_dns_no').AsString;
    tgl_hps_tgl.date:=AdDsData2.FieldByName('hps_tgl').AsDateTime;
    tgl_uppl_tgl.date:=AdDsData2.FieldByName('uppl_tgl').AsDateTime;
    e_uppl_no.Text:=AdDsData2.FieldByName('uppl_no').AsString;
    tgl_pfk_tgl.date:=AdDsData2.FieldByName('pfk_tgl').AsDateTime;
    tgl_ba_ek_tgl.date:=AdDsData2.FieldByName('ba_ek_tgl').AsDateTime;
    e_ba_ek_no.Text:=AdDsData2.FieldByName('ba_ek_no').AsString;
    e_ba_ek_t_hr.Text:=AdDsData2.FieldByName('ba_ek_t_hr').AsString;
    tgl_p_h_ek_tgl.date:=AdDsData2.FieldByName('p_h_ek_tgl').AsDateTime;
    e_p_h_ek_no.Text:=AdDsData2.FieldByName('p_h_ek_no').AsString;
    tgl_penj_p_tgl.date:=AdDsData2.FieldByName('penj_p_tgl').AsDateTime;
    e_penj_p_no.Text:=AdDsData2.FieldByName('penj_p_no').AsString;
    e_penj_p_t_hr.Text:=AdDsData2.FieldByName('penj_p_t_hr').AsString;
    tgl_p_perw_tgl.date:=AdDsData2.FieldByName('p_perw_tgl').AsDateTime;
    e_p_perw_no.Text:=AdDsData2.FieldByName('p_perw_no').AsString;
    tgl_ba_pem_perw_tgl.date:=AdDsData2.FieldByName('ba_pem_perw_tgl').AsDateTime;
    e_ba_pem_perw_no.Text:=AdDsData2.FieldByName('ba_pem_perw_no').AsString;
    e_ba_pem_perw_t_hr.Text:=AdDsData2.FieldByName('ba_pem_perw_t_hr').AsString;

    //ba eva penawaran
    dtgl_eva_perw.date:=AdDsData2.FieldByName('ba_eva_penw_tgl').AsDateTime;
    edt_eva_perw.Text:=AdDsData2.FieldByName('ba_eva_penw_no').AsString;
    edt_hr_eva_perw.Text:=AdDsData2.FieldByName('ba_eva_penw_t_hr').AsString;



    tgl_ba_kla_nego_tgl.date:=AdDsData2.FieldByName('ba_kla_nego_tgl').AsDateTime;
    e_ba_kla_nego_no.Text:=AdDsData2.FieldByName('ba_kla_nego_no').AsString;
    e_ba_kla_nego_t_hr.Text:=AdDsData2.FieldByName('ba_kla_nego_t_hr').AsString;
    tgl_ba_h_pl_tgl.date:=AdDsData2.FieldByName('ba_h_pl_tgl').AsDateTime;
    e_ba_h_pl_no.Text:=AdDsData2.FieldByName('ba_h_pl_no').AsString;
    e_ba_h_pl_t_hr.Text:=AdDsData2.FieldByName('ba_h_pl_t_hr').AsString;
    tgl_pen_ba_p_pl_tgl.date:=AdDsData2.FieldByName('pen_ba_p_pl_tgl').AsDateTime;
    e_pen_ba_p_pl_no.Text:=AdDsData2.FieldByName('pen_ba_p_pl_no').AsString;
    tgl_sppbj_tgl.date:=AdDsData2.FieldByName('sppbj_tgl').AsDateTime;
    e_sppbj_no.Text:=AdDsData2.FieldByName('sppbj_no').AsString;
    tgl_spk_tgl.date:=AdDsData2.FieldByName('spk_tgl').AsDateTime;
    e_spk_no.Text:=AdDsData2.FieldByName('spk_no').AsString;
    e_spk_t_hr.Text:=AdDsData2.FieldByName('spk_t_hr').AsString;
    ed_no_faktur.Text:=AdDsData2.FieldByName('faktur_no').AsString;
    ed_tgl_faktur.date:=AdDsData2.FieldByName('faktur_tgl').AsDateTime;

    dtp_spmk.date:=AdDsData2.FieldByName('spmk_tgl').AsDateTime;
    edt_spmk.Text:=AdDsData2.FieldByName('spmk_no').AsString;
    edt_tspmk.Text:=AdDsData2.FieldByName('spmk_t_hr').AsString;

    //faktur_tgl

   finally
    AdDsData2.Close;
    AdDsData2.Free;
  end;

  // Detail Tampil
  AdDsData1 := TMyQuery.Create(nil);
  AdDsData1.Connection := DmModul.con1;

  try
    AdDsData1.Active := false;
    AdDsData1.SQL.Clear;
    AdDsData1.SQL.Text :='select * from detail_spk WHERE no_peng like'+
    QuotedStr(ednokwi.Text)+' order by no ';
    AdDsData1.Open;

    if AdDsData1.Eof then
    begin
    ed_t1.Text := '0';
    //ed_disk.Text:= '0';
    //ed_t2.Text := '0';
    Total;
    Exit;
    end;

    for i2:=1 to StringGrid1.RowCount-1 do begin
        StringGrid1.Cells[0,i2]:='';
        StringGrid1.Cells[1,i2]:='';
        StringGrid1.Cells[2,i2]:='';
        StringGrid1.Cells[3,i2]:='';
        StringGrid1.Cells[4,i2]:='';
        StringGrid1.Cells[5,i2]:='';
        StringGrid1.Cells[6,i2]:='';
        StringGrid1.Cells[7,i2]:='';
        StringGrid1.Cells[8,i2]:='';
        StringGrid1.Cells[9,i2]:='';
        StringGrid1.Cells[10,i2]:='';
        StringGrid1.Cells[11,i2]:='';
        StringGrid1.Cells[12,i2]:='';
        end;

    counter:=0;

    if  AdDsData1.RecordCount<=1 then
      StringGrid1.RowCount:= 2
    else
      StringGrid1.RowCount:= AdDsData1.RecordCount+1;

    while not AdDsData1.Eof do begin
          Inc(counter);
          StringGrid1.Cells[0,counter]:=IntToStr(counter);
          StringGrid1.Cells[1,counter]:=dataRow(AdDsData1.FieldByName('no'),'');
          StringGrid1.Cells[2,counter]:=dataRow(AdDsData1.FieldByName('nama'),'-');
          StringGrid1.Cells[3,counter]:=dataRow(AdDsData1.FieldByName('jumlah'),'0');
          StringGrid1.Cells[4,counter]:=dataRow(AdDsData1.FieldByName('satuan'),'-');
          StringGrid1.Cells[5,counter]:=dataRow(AdDsData1.FieldByName('hrga_satuan'),'0');
          StringGrid1.Cells[6,counter]:=dataRow(AdDsData1.FieldByName('n_t1'),'0');
          StringGrid1.Cells[7,counter]:=dataRow(AdDsData1.FieldByName('n_disk'),'0');
          StringGrid1.Cells[8,counter]:=dataRow(AdDsData1.FieldByName('n_t2'),'0');
          AdDsData1.Next;
    end;
   Total;
  finally
    AdDsData1.Close;
    AdDsData1.Free;
  end;

  //---rekap dana





  //verifikasi
  {
   if ed_bayar.text = ed_KWITANSI.Text then
    begin
      Label42.Color := clRed;
      ed_KWITANSI.Color := clLime;
      Label42.Caption := 'Sama OK';
    end

  else
  begin
    Label42.Color := clWhite;
    selisih :=strtofloat (clearDot(ed_bayar.Text)) - strtofloat (clearDot(ed_kwitansi.Text));
    Label42.Font.Size := 16;
    Label42.Caption := 'Gak Sama :' + FloatToStr(selisih);
    ed_KWITANSI.Color := clRed;
  end;
    //tambahan
      //  SelectNext(ActiveControl,True,True);
   }

end;

{
//untuk membaca database atau read
if AdDsData.fieldbyname('ket_ppn').AsString='1' then
chk2.checked := true else chk2.checked:=false;

//tambah
perintah:='SELECT * FROM detail_sp WHERE no_peng like '+QuotedStr(EdNokwi.Text)+' order by no;';
    with ado_detail do begin
        Close;
        with sql do
        begin
                Clear;
                Add(perintah);
        end;
        Prepared;
        Open;

        //kosongin stringgrid

    for i:=1 to StringGrid1.RowCount-2 do begin
        StringGrid1.Cells[0,i]:='';
        StringGrid1.Cells[1,i]:='';
        StringGrid1.Cells[2,i]:='';
        StringGrid1.Cells[3,i]:='';
        StringGrid1.Cells[4,i]:='';
        StringGrid1.Cells[5,i]:='';
        StringGrid1.Cells[6,i]:='';
        StringGrid1.Cells[7,i]:='';
        StringGrid1.Cells[8,i]:='';

    end;

    
    counter:=0;
    StringGrid1.RowCount:=2;
    while not ado_detail.Eof do begin
          Inc(counter);
          StringGrid1.RowCount:=StringGrid1.RowCount+1;
          StringGrid1.Cells[0,counter]:=IntToStr(counter);
          StringGrid1.Cells[1,counter]:=dataRow(ado_detail.FieldByName('no'),'');
          StringGrid1.Cells[2,counter]:=dataRow(ado_detail.FieldByName('nama'),'-');
          StringGrid1.Cells[3,counter]:=dataRow(ado_detail.FieldByName('jumlah'),'0');
          StringGrid1.Cells[4,counter]:=dataRow(ado_detail.FieldByName('satuan'),'-');
          StringGrid1.Cells[5,counter]:=dataRow(ado_detail.FieldByName('hrga_satuan'),'0');
          StringGrid1.Cells[6,counter]:=dataRow(ado_detail.FieldByName('n_t1'),'0');
          StringGrid1.Cells[7,counter]:=dataRow(ado_detail.FieldByName('n_disk'),'0');
          StringGrid1.Cells[8,counter]:=dataRow(ado_detail.FieldByName('n_t2'),'0');
          //hitung total harga
          {
          jml:=StrToInt(StringGrid1.Cells[2,counter]);
          harga:=StrToInt(StringGrid1.Cells[3,counter]);
          total_harga:=jml*harga;
          StringGrid1.Cells[6,counter]:=IntToStr(total_harga);
          }
          //=====================
         // ado_detail.Next;
   // end;
  // Total;

   //detail sp
  {
    ed_t1.Text:=AdDsData.FieldByName('N_t1').AsString;
    ed_disk.Text:=AdDsData.FieldByName('N_disk').AsString;
    ed_t2.Text:=AdDsData.FieldByName('N_t2').AsString;
    ed_Pjk.Text:=AdDsData.FieldByName('Pajak').AsString;
    ed_bayar.Text:=AdDsData.FieldByName('KWITANSI').AsString;
   }

//end;

  //Chkbayar.Checked:=AdDsData['bayar'];
  //AdTbPhoto.Close;
  //AdTbPhoto.Open;
  //AdTbPhoto.Filtered:=False;
  //AdTbPhoto.Filter:='NoAng='+QuotedStr(ednokwi.Text);
  //AdTbPhoto.Filtered:=True;

 // end;

Procedure TFspk22_medis.combo;
begin
{
qcom.Close;
      qcom.CommandText:=
      'Select satuan From satuan ';
      qcom.Open;
      cbo_bl.Items.Clear;
while not qcom.Eof do
begin
cbo_bl.Items.Add(qcom['satuan']);
qcom.Next;
end;
}
end;
 //buat nomor baru

Procedure TFspk22_medis.buatno;
var
  tgl, urut : string;
 // urut : string;
  i : integer;
  ADOn : TMyQuery;
begin
  ADOn := TMyQuery.Create(nil);
  ADOn.Connection := DmModul.con1;

  try
    tgl := FormatDateTime('yyMMdd', DtpTrans.Date) + '-';

  With ADOn do
    begin
      Active := false;
      SQL.Clear;                  // juml 4
      SQL.Add('Select Max(right(no_peng, 5)) from i_pjbt_kontr');

//SQL.Add('Select Max(right(NoAng, 8)) from anggota ' +
//              'Where left(NoAng, 7) = ' + QuotedStr(tgl) + ';');

      Active := true;
    end;

  if adon.Fields[0].AsString = '' then
    urut := '00001'
  else
    urut := IntToStr(adon.Fields[0].AsInteger + 1);

  if length(urut) < 5 then              //4
  begin
    for i := length(urut) to 4 do       // 4 = 3
      urut := '0' + urut;
  end;

  //EdNoTrans.Text := urut;
  ednokwi.Text := 'K17-'+urut;
  //EdNoTrans.Text := tgl + urut;
  //adotable1.Active := true;
  //adotable1.Insert;
  //Button1.Enabled := false;
  //Button2.Enabled := true;
  finally
     ADOn.Close;
  end;

end;

Procedure TFspk22_medis.KosongTex(Kunci:Boolean);
var
j:Integer;

Begin
  if Kunci=True then
  begin

  ednokwi.Text:='';
  ed_t1.Text:='0';
  ed_disk.Text:='0';
  ed_t2.Text:='0';
  ed_Pjk.Text:='0';

  ed_t1.Color:=clSkyBlue;
  ed_disk.Color:=clSkyBlue;
  ed_pjk.Color:=clSkyBlue;
  ed_bayar.Color:=clred;
  ed_tgl_jt.Color:=clred;

  //tahap 1
  ed_cv.Text:='';
  ed_hps.Text := '0';
  ed_npenw.Text := '0';
  ed_nNego.Text := '0';
  //ed_SPK_No.Text:='';
  //ed_BA_P_Brg_no.Text:='';
  //ed_no_peny.Text:='';
  tgl_awal.date:=now;
  tgl_akhir.date:=now;
  ed_tgl_jt.date:=now;

  ed_jml_hr.Text:='';
  ed_Thr.Text:='';
  Ed_u_cv.Text:='---';

  //ed_t1.Text :='';
  //ed_t2.Text := '';
  //ed_pjk.Text := '';
  //ed_bayar.Text := '';
  //ed_spj.Text:= '';

  //tambahan Bayar

  tgl_bayar.ShowCheckbox :=true;
  tgl_bayar.Checked := false;
  tgl_bayar.Color := clred;
  chk2.Checked := False;
  aturgrid;
  //Tahap 2
  //List data
    ed_no.Text:='';
    tgl_nota_dns_tgl.date:=now;
    e_nota_dns_no.Text:='';
    tgl_hps_tgl.date:=now;
    tgl_uppl_tgl.date:=now;
    e_uppl_no.Text:='';
    tgl_pfk_tgl.date:=now;
    tgl_ba_ek_tgl.date:=now;
    e_ba_ek_no.Text:='';
    e_ba_ek_t_hr.Text:='';
    tgl_p_h_ek_tgl.date:=now;
    e_p_h_ek_no.Text:='';
    tgl_penj_p_tgl.date:=now;
    e_penj_p_no.Text:='';
    e_penj_p_t_hr.Text:='';
    tgl_p_perw_tgl.date:=now;
    e_p_perw_no.Text:='';
    tgl_ba_pem_perw_tgl.date:=now;
    e_ba_pem_perw_no.Text:='';
    e_ba_pem_perw_t_hr.Text:='';

    //ba eva penawaran
    dtgl_eva_perw.date:=now;
    edt_eva_perw.Text:='';
    edt_hr_eva_perw.Text:='';



    tgl_ba_kla_nego_tgl.date:=now;
    e_ba_kla_nego_no.Text:='';
    e_ba_kla_nego_t_hr.Text:='';
    tgl_ba_h_pl_tgl.date:=now;
    e_ba_h_pl_no.Text:='';
    e_ba_h_pl_t_hr.Text:='';
    tgl_pen_ba_p_pl_tgl.date:=now;
    e_pen_ba_p_pl_no.Text:='';
    tgl_sppbj_tgl.date:=now;
    e_sppbj_no.Text:='';
    tgl_spk_tgl.date:=now;
    e_spk_no.Text:='';
    e_spk_t_hr.Text:='';
    ed_no_faktur.Text:='';
    ed_tgl_faktur.date:=now;

    dtp_spmk.date:=now;
    edt_spmk.Text:='';
    edt_tspmk.Text:='';
    //tahap 1

 end;
end;

procedure TFspk22_medis.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key in[#27] then
  begin
    //AktifControl(Self,PnInput,False);
    KosongTex(true);
  end;
end;

procedure TFspk22_medis.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
    SelectNext(ActiveControl,True,True);
end;

procedure TFspk22_medis.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//   if DBGrid1.DataSource.DataSet.RecNo mod 2 =0 then
//DBGrid1.Canvas.Brush.Color := clskyBlue; //pilih warnanya
//DBGrid1.DefaultDrawColumnCell(rect, datacol, column, state);
end;


procedure TFspk22_medis.ed_aChange(Sender: TObject);
 var
  ds_cari_a : TMyQuery;
  Begin
  try
    ds_cari_a := TMyQuery.Create(nil);
    ds_cari_a.Connection := DmModul.con1;
    ds_cari_a.Active := false;
    ds_cari_a.SQL.Clear;
    ds_cari_a.SQL.Text :='Select no_a'+
    ' ,rek_nama FROM m_rek_2017 where no_a like '+
    QuotedStr('%'+ed_a.Text+'%');
    ds_cari_a.Open;
    ed_u_a.Text:=ds_cari_a.FieldByName('rek_nama').AsString;
  finally
    ds_cari_a.Close;
  end;

//formatRupiah
//formatRupiah(ed_hrg_bl);
end;


procedure TFspk22_medis.ed_ThrChange(Sender: TObject);
begin
//formatRupiah(ed_hrg_jual);
end;

procedure TFspk22_medis.ed_jml_hrChange(Sender: TObject);
begin
if (ed_jml_hr.Text='') then exit   //(edbayar.Text='')
   else
//ed_Tkwi.Text := Capital(Spell(clearDot(ed_KWITANSI.Text)));
ed_Thr.Text := hitunguang(clearDot(ed_jml_hr.Text));
end;

procedure TFspk22_medis.btnBaPelClick(Sender: TObject);
begin

end;

{
procedure TFsp_medis.ed_KWITANSIChange(Sender: TObject);
begin
if ed_KWITANSI.text = '' then Exit;
formatRupiah(ed_KWITANSI);
ed_Tkwi.Text := Spell(clearDot(ed_KWITANSI.Text));
ed_Tkwi.Text := Capital(ed_Tkwi.Text) ;

end;
 }
procedure TFspk22_medis.BtnCari_noClick(Sender: TObject);
begin
{
FCari:=TFCari.Create(Application);
  LsvSetCol('No |pengdaan|cv|nilai|tgl|no . sp|No. Faktur|Spj|T.byr|',
  '80|160|130|80|70|40|120|90|80|',FCari.LsCari);
  FCari.LsField.Items.Clear;
  FCari.LsField.Items.Add('q_sp_medis'); //Tabel / Query
  FCari.LsField.Items.Add('no_peng');
  FCari.LsField.Items.Add('pengadaan');
  FCari.LsField.Items.Add('namaperusahaan');
  FCari.LsField.Items.Add('kwitansi');
  FCari.LsField.Items.Add('spk_tgl');
  FCari.LsField.Items.Add('spk_no');
  FCari.LsField.Items.Add('no_faktur');
  FCari.LsField.Items.Add('spj');
  FCari.LsField.Items.Add('tglbayar');
  FCari.ShowModal;
  FCari.CmbField.ItemIndex:=0;
  if nFieldCari[0]<>'' then
  begin
    EdNokwi.Text:=nFieldCari[0];
    //ed_kspj.Text:=nFieldCari[7];
    //KosongTex(False);
    //AktifControl(Self,PnInput,False);
    //ednokwi.Enabled:=True;
    ednokwi.Color:=clWhite;
    ednokwi.SetFocus;
  end;
  }
end;

procedure TFspk22_medis.ed_SPK_TglChange(Sender: TObject);
begin
//ed_TSPK.Text:=Capital(Spell(FormatDateTime('d',ed_SPK_Tgl.DateTime)));
end;

procedure TFspk22_medis.ed_BA_P_Brg_tglChange(Sender: TObject);
begin
//ed_TBA_P_Brg.Text:=Capital(Spell(FormatDateTime('d',ed_BA_P_Brg_tgl.DateTime)));
end;

procedure TFspk22_medis.ed_cvChange(Sender: TObject);
var
  ds_cari_cv : TMyQuery;
  Begin

  end;

procedure TFspk22_medis.BitBtn3Click(Sender: TObject);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_spk';
  LsvSetCol('No |nama|tgl|no spk|cv|nilai|jns|',
  '90|280|110|90|340|120|80|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('qpj'); //Tabel / Query
  FCarisp.LsField.Items.Add('no_peng');
  FCarisp.LsField.Items.Add('pengadaan');
  FCarisp.LsField.Items.Add('spk_tgl');
  FCarisp.LsField.Items.Add('spk_no');
  FCarisp.LsField.Items.Add('namaperusahaan');
  FCarisp.LsField.Items.Add('kwitansi');
  //FCarisp.LsField.Items.Add('js');
  FCarisp.ShowModal;
  if nFieldCari[0]<>'' then
  begin
    edit5.Text:=nFieldCari[0];
    ed_k1.Text:=nFieldCari[0];
    ed_k2.Text:=nFieldCari[0];
    edit6.Text:=nFieldCari[3];
    lbl5.Caption :=nFieldCari[6];
    //KosongTex(False);
    //AktifControl(Self,PnInput,False);
    //ednokwi.Enabled:=True;
    edit5.Color:=clWhite;
    edit5.SetFocus;
  end;

end;

procedure TFspk22_medis.BitBtn4Click(Sender: TObject);
begin

  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_kontrak';
  LsvSetCol('No |nama|tgl|no spk|cv|nilai|',
  '120|240|110|90|240|120|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('qpj'); //Tabel / Query
  FCarisp.LsField.Items.Add('no_peng');
  FCarisp.LsField.Items.Add('pengadaan');
  FCarisp.LsField.Items.Add('spk_tgl');
  FCarisp.LsField.Items.Add('spk_no');
  FCarisp.LsField.Items.Add('namaperusahaan');
  //FormatFloat('###,##0.00', hasil);
  FCarisp.LsField.Items.Add('kwitansi');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    ed_k1.Text:=nFieldCari[0];
    //KosongTex(False);
    //AktifControl(Self,PnInput,False);
    ed_k1.Color:=clWhite;
    ed_k1.SetFocus;
  end;

end;

procedure TFspk22_medis.BitBtn6Click(Sender: TObject);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_kontrak';
  LsvSetCol('No |nama|tgl|no spk|cv|nilai|',
  '120|240|110|90|240|120|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('qpj'); //Tabel / Query
  FCarisp.LsField.Items.Add('no_peng');
  FCarisp.LsField.Items.Add('pengadaan');
  FCarisp.LsField.Items.Add('spk_tgl');
  FCarisp.LsField.Items.Add('spk_no');
  FCarisp.LsField.Items.Add('namaperusahaan');
  //FormatFloat('###,##0.00', hasil);
  FCarisp.LsField.Items.Add('kwitansi');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    ed_k2.Text:=nFieldCari[0];
    //KosongTex(False);
    //AktifControl(Self,PnInput,False);
    ed_k2.Color:=clWhite;
    ed_k2.SetFocus;
  end;


end;

procedure TFspk22_medis.Button3Click(Sender: TObject);
begin
      try
         PSc.Connection := DmModul.con1;
         PSc.Close;
         PSc.SQL.Text:=
         'SELECT * FROM qpj WHERE no_peng_kontr LIKE "'+Edit5.Text+'"';
      PSc.Open;

    //  PSD.Connection := DmModul.con1;
    //  PSD.Close;
    //  PSD.SQL.Text:=
    //  'SELECT * FROM qdetail WHERE no_peng LIKE '+QuotedStr(Edit5.Text)+'';
    //  PSD.Open;

      Screen.cursor := crsqlWait;


        With EKRTF1 do Begin
      //format tanggal
      ClearVars;
      CreateVar('fullformat','dd mmmm yyyy');
      CreateVar('fP','dd - mm - yyyy');
      CreateVar('fh','dddd');
      CreateVar('fd','dddd');
      CreateVar('fbln','mmmmm');
      Screen.cursor := crsqlWait;
   //REVISI DATA TGL : 20130709
   //frxrprt1.LoadFromFile(getReportPath + 'Pembelian.fr3');
   //getReportPath
      infile:= ExtractFilePath(Application.ExeName) +'\rtf\sp_medis\'+ 'db_peng_15_sp_medis_rev.rtf';
   //infile:=GetCurrentDir + '\rtf\'+'db_peng_14_sp_medis_rev.rtf';
   OutFile:= ExtractFilePath(Application.ExeName) + '\report\'+Edit6.Text+Edit5.Text+'-sp_medis'+'.rtf';

      //ExecuteOpen([PSc,Psd],SW_SHOW);
      Screen.cursor := crDefault;
end;
      finally
        PSc.Close;
        //Psd.Close;
      end;

end;

procedure TFspk22_medis.SpeedButton7Click(Sender: TObject);
begin
stringgrid1.delimiter := ',';
stringgrid1.savefixedcells := false;
stringgrid1.loadfromcsv('detail_sp.csv');
end;

procedure TFspk22_medis.Button9Click(Sender: TObject);
begin

  try
    PSc.Connection := DmModul.con1;
    PSc.Close;
    PSc.SQL.Text:=
   //   'SELECT * FROM qpj WHERE SPK_No LIKE "'+cbb1.Text+'"';
   'SELECT * FROM qpj WHERE no_peng BETWEEN "'+ed_k1.Text+'" AND "'+ed_k2.Text+'"order by no_peng';
      Screen.cursor := crsqlWait;
      PSc.Open;
      //Screen.cursor := crDefault;

     With EKRTF1 do Begin
   //format tanggal
   ClearVars;
   CreateVar('fullformat','dd mmmm yyyy');
   CreateVar('fP','dd - mm - yyyy');
   CreateVar('fh','dddd');
   CreateVar('fd','dddd');
   CreateVar('fbln','mmmmm');
   Screen.cursor := crsqlWait;
   infile:= ExtractFilePath(Application.ExeName) + '\rtf\sp_kwi\'+'kwi_sp_medis15.rtf';
   OutFile:= ExtractFilePath(Application.ExeName) + '\report_kwi\'+ED_k1.Text+'-KWI'+'.rtf';

      ExecuteOpen([PSc],SW_SHOW);
      Screen.cursor := crDefault;
    end;
  finally
    PSc.Close;
  end;



end;

procedure TFspk22_medis.btncrspClick(Sender: TObject);
begin

  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_kontrak';
  LsvSetCol('No|Nama|tgl.|faktur|total|',
  '90|230|70|120|150|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('no_peng');
  FCarisp.LsField.Items.Add('namaperusahaan');
  FCarisp.LsField.Items.Add('tgl_faktur');
  FCarisp.LsField.Items.Add('no_faktur');
  FCarisp.LsField.Items.Add('kwitansi');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    EdNokwi.Text:=nFieldCari[0];
    //Memo1.Text:=nFieldCari[1];
    //edt1.Color:=clWhite;
    EdNokwi.SetFocus;
  end;

 //BtnUbahClick(Sender: TObject);
 {
 var
   n_t1,n_disk,n_t2,n_pajak, totalnilai1,totalnilai2,totalspj :real;
begin

n_t1 :=strtofloat (clearDot(ed_t1.Text));
n_disk :=strtofloat (clearDot(ed_disk.Text));
n_pajak :=strtofloat (clearDot(Ed_pjk.Text));

//t2
totalnilai1 := n_t1 - n_disk ;
ed_t2.text := floattostr (totalnilai1);
ed_t2.Color:=clMoneyGreen;

totalnilai2 := totalnilai1 + n_pajak ;
ed_bayar.text := floattostr (totalnilai2);
ed_bayar.Color:=clMoneyGreen;
totalspj := n_t1 + n_pajak ;

//ed_kspj.text := floattostr (totalspj);
//ed_kspj.Color:=clMoneyGreen;
 }

end;

procedure TFspk22_medis.btn1Click(Sender: TObject);
begin
ed_jml_hr.Text:=FloattoStr(StrtoDate(DateToStr(tgl_akhir.Date))
-StrtoDate(DateToStr(tgl_awal.Date))+1);
end;

procedure TFspk22_medis.SpeedButton2Click(Sender: TObject);
//var
//  ulg:Integer;
//  fxtotal,tglbuat1,tglku,tglskr:string;

begin

MessageDlg('Data tanggal '+#13+#10+''+#13+#10+
        'List Daftar Dirubah ?',mtInformation,[mbok],0);
        tgl_blnTex(true);
{
'select a.no_peng,a.spk_tgl,a.spk_no,a.ba_penerimaan_brg_tgl,a.ba_penerimaan_brg_no,a.no_penyimpan,'+
'b.kd_bidang,b.kdrek_brg,c.namaperusahaan,a.tgl_faktur,a.no_faktur,a.tglbayar,a.kwitansi'+
',d.nama,d.jumlah,d.satuan,d.hrga_satuan,(d.n_t1,d.n_t2 * 10/100) as ppn'+
'from i_pjbt a inner JOIN m_rek_2014 b ON a.anggaran = b.no_a inner JOIN m_perusahaan c ON a.cv = c.novendor inner JOIN detail_sp d ON a.no_peng = d.no_peng'
}

//if FilterTgl.Checked then
 {
 ado_cetak.Close;
 ado_cetak.CommandText:='select * from v_datasp_obat';
 ado_cetak.Open;

 if ado_cetak.Eof then exit;

//tglku := 'Tanggal : ' + FormatDateTime('dd-mm-yyyy',TglMulai.date)+' s/d ' + FormatDateTime('dd-mm-yyyy',TglSelesai.date);
tglbuat1 := FormatDateTime('yyyymmdd',tglbuat.date);

//
 Screen.Cursor := crHourGlass;
  with OnoExcel do begin
    Clear;
    //texts
    CellFormat.Font.Color := 1;
    CellFormat.Font.Name := 'Calibri';
    CellFormat.Font.Size := 11;
    AddText(1, 1, 1, 1, 'no sp');
    CellFormat.Pattern.Pattern := 1;
    CellFormat.Pattern.PatternColor := -4105;
    CellFormat.Pattern.Color := 6;
    AddText(1, 2, 1, 1, 'tgl sp');
    AddText(1, 3, 1, 1, 'no sp');
    AddText(1, 4, 1, 1, 'tgl ba');
    AddText(1, 5, 1, 1, 'no ba');
    AddText(1, 6, 1, 1, 'no ba');
    AddText(1, 7, 1, 1, 'kd bidang');
    AddText(1, 8, 1, 1, 'rek ');
    AddText(1, 9, 1, 1, 'nama  cv');
    CellFormat.Pattern.Pattern := -4142;
    CellFormat.Pattern.PatternColor := -4142;
    CellFormat.Pattern.Color := -4142;
    AddText(1, 10, 1, 1, 'tgl faktur');
    AddText(1, 11, 1, 1, 'no faktur');
    AddText(1, 12, 1, 1, 'tgl bayar');
    AddText(1, 13, 1, 1, 'kwitasi');
    CellFormat.Pattern.Pattern := 1;
    CellFormat.Pattern.PatternColor := -4105;
    CellFormat.Pattern.Color := 6;
    AddText(1, 14, 1, 1, 'nama');
    AddText(1, 15, 1, 1, 'jumlah');
    AddText(1, 16, 1, 1, 'satuan');
    AddText(1, 17, 1, 1, 'harga');
    AddText(1, 19, 1, 1, 'ppn');
    CellFormat.Alignment.VerticalAlignment := -4108;
    CellFormat.Font.Color := -4105;
    CellFormat.Font.Name := 'Arial';
    CellFormat.Font.Size := 10;
    CellFormat.Pattern.Pattern := -4142;
    CellFormat.Pattern.PatternColor := -4142;
    CellFormat.Pattern.Color := -4142;
    AddText(1, 21, 1, 1, 'tgl spk');
    AddText(1, 22, 1, 1, 'no spk');
    AddText(1, 23, 1, 1, 'cv');
    AddText(1, 24, 1, 1, 'tgl ba Hasil');
    AddText(1, 25, 1, 1, 'no ba hasil');
    AddText(1, 26, 1, 1, 'no penrimann');
    CellFormat.Font.Color := 3;
    AddText(1, 27, 1, 1, 'tgl Bayar / SPJ');
    CellFormat.Font.Color := -4105;
    AddText(1, 28, 1, 1, 'kd_bid');
    AddText(1, 29, 1, 1, 'kode  rekening');
    CellFormat.Font.Color := 33;
    AddText(1, 30, 1, 1, 'Nama Brg');
    AddText(1, 31, 1, 1, 'JML');
    AddText(1, 32, 1, 1, 'satuan');
    AddText(1, 33, 1, 1, 'harga satuan');
    CellFormat.Font.Color := 3;
    AddText(1, 34, 1, 1, 'ppn');
    CellFormat.Alignment.VerticalAlignment := -4107;
    CellFormat.Font.Color := 1;
    CellFormat.Font.Name := 'Calibri';
    CellFormat.Font.Size := 11;

         for ulg:=1 to ado_cetak.RecordCount do begin
    ado_cetak.RecNo:=ulg;


    AddText(2, 1, 1, 1, ulg);
    CellFormat.NumberFormat := 'dd/mm/yyyy';
    AddText(2, 2, 1, 1, '41683');
    CellFormat.NumberFormat := 'General';
    AddText(2, 3, 1, 1, '118');
    CellFormat.NumberFormat := 'dd/mm/yyyy';
    AddText(2, 4, 1, 1, '41688');
    CellFormat.NumberFormat := 'General';
    AddText(2, 5, 1, 1, '47.2');
    AddText(2, 6, 1, 1, '47.3');
    AddText(2, 7, 1, 1, '3210');
    AddText(2, 8, 1, 1, '5.2.2.02.005');
    AddText(2, 9, 1, 1, 'PT. MILLENIUM PHARMACON INTERNATIONAL');
    AddText(2, 11, 1, 1, '13164002876');
    AddText(2, 13, 1, 1, '7342170');
    AddText(2, 14, 1, 1, 'ANALTRAM KAPLET');
    AddText(2, 15, 1, 1, '3');
    AddText(2, 16, 1, 1, 'BOX/30 C');
    AddText(2, 17, 1, 1, '180000');
    AddText(2, 18, 1, 1, '540000');
    CellFormat.NumberFormat := '#,##0.00';
    AddText(2, 19, 1, 1, '=R2*(10/100)');
    CellFormat.NumberFormat := 'dd/mm/yyyy';
    AddText(2, 21, 1, 1, '=B2');
    CellFormat.NumberFormat := 'General';
    AddText(2, 22, 1, 1, '=C2');
    AddText(2, 23, 1, 1, '=I2');
    CellFormat.NumberFormat := 'dd/mm/yyyy';
    AddText(2, 24, 1, 1, '=D2');
    CellFormat.NumberFormat := 'General';
    AddText(2, 25, 1, 1, '=E2');
    AddText(2, 26, 1, 1, '=F2');
    CellFormat.NumberFormat := 'dd/mm/yyyy';
    AddText(2, 27, 1, 1, '=G2');
    CellFormat.NumberFormat := 'General';
    AddText(2, 28, 1, 1, '=G2');
    AddText(2, 29, 1, 1, '=H2');
    AddText(2, 30, 1, 1, '=N2');
    AddText(2, 31, 1, 1, '=O2');
    AddText(2, 32, 1, 1, '=P2');
    CellFormat.NumberFormat := '#,##0';
    AddText(2, 33, 1, 1, '=Q2');
    AddText(2, 34, 1, 1, '=S2');

 end;
    ulg:=ado_cetak.RecordCount;


    //columns
    SetColumn(2, 10);
    SetColumn(4, 10);
    SetColumn(8, 10.57);
    SetColumn(9, 25.71);
    SetColumn(10, 10);
    SetColumn(11, 20.14);
    SetColumn(19, 11);
    SetColumn(21, 10);
    SetColumn(24, 10);
    SetColumn(27, 13);
    SetColumn(33, 10.43);
    //pictures
    //pagesetup
    PageSetup.LeftMargin := 50.4;
    PageSetup.TopMargin := 54;
    PageSetup.RightMargin := 50.4;
    PageSetup.BottomMargin := 54;
    PageSetup.HeaderMargin := 21.6;
    PageSetup.FooterMargin := 21.6;
    //create
    if Execute then Open(Handle);
  end;
  Screen.Cursor := crDefault;
  }
end;



procedure TFspk22_medis.EdNokwiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
    qtotal : TMyStoredProc;
begin
  if key=Vk_Return then
  begin
    TampilData;

     qtotal := TMyStoredProc.Create(nil);
  //qtotal.Connection := DmModul.con1;

  try
  {
  qtotal.Active := false;
  qtotal.SQL.Clear;
  qtotal.SQL.Text :='select * from i_pjbt where no_peng='+
  QuotedStr(ednokwi.Text)+'';
  qtotal.Open;
   }

    qtotal.Connection := DmModul.con1;
    qtotal.Close;
    qtotal.StoredProcName := 'sp_cari_rekap';
    qtotal.PrepareSQL;
    qtotal.ParamByName('cari').AsString := ed_a.Text; //key ba
    //qtotal.ParamByName('cari2').AsString := ed_k2.text; //key ba
    qtotal.Execute;


   if qtotal.RecordCount > 0 then
  begin
    Edit1.text :=qtotal.FieldByName('danaku').AsString;
    Edit3.text :=qtotal.FieldByName('total').AsString;
    Edit4.text :=qtotal.FieldByName('sisa').AsString;
   end
  else
    begin
    ShowMessage( 'data kosong / Tidak ADA : ' + EdNokwi.Text );
    end;

  finally
    qtotal.Close;
    qtotal.Free;
  end;



  end;

  end;

procedure TFspk22_medis.EdtotalClick(Sender: TObject);
begin

end;

//Total
procedure TFspk22_medis.Total;
var i :integer;
tot_t1,tot_disk,tot_t2,tot_pjk,tot_bayar:real;
begin
tot_t1:=0;
tot_disk:=0;
tot_t2:=0;
tot_pjk:=0;
//tot_bayar:=0;
{
for i:=1 to Grid1.RowCount-1 do
begin
tot_t1 :=+ tot_t1+strtofloat(Grid1.Cells[6,i]);
end;
ed_tjumlah.Text := floattostr(tot_t1);
 }

   for i:=1 to StringGrid1.RowCount-1 do begin
        tot_t1:=tot_t1+strtofloat(StringGrid1.Cells[6,i]);
        tot_disk:=tot_disk+strtofloat(StringGrid1.Cells[7,i]);
        tot_t2:=tot_t2+strtofloat(StringGrid1.Cells[8,i]);
   end;
   Ed_t1.Text:=floattostr(tot_t1);
   Ed_disk.Text:=floattostr(tot_disk);
   Ed_t2.Text:=floattostr(tot_t2);

end;

//Hapus grid
procedure TFspk22_medis.deleterow(mg:TStringGrid;ARow:integer);
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

procedure TFspk22_medis.SpeedButton5Click(Sender: TObject);
begin
 if not(StringGrid1.RowCount=1) then begin
  if (cek_baris='') then begin
    ShowMessage('Silahkan pilih kode barang di hapus');
    exit;
  end else
      if MessageDlg('Hapus item kode: '+StringGrid1.Cells[2,hapus_baris]+' ?',mtConfirmation,mbOKCancel,0)=mrok then begin
         deleterow(StringGrid1,hapus_baris);
         Total;
         cek_baris:='';
         counter:=counter-1;
      end;
end else ShowMessage('Inputan Detail masih kosong');
end;

//sETTING GRID
procedure TFspk22_medis.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var input_box:string;
qty,jml,harga,total_harga,disk,total2 : real ; // :integer;
cek_inputan:boolean;
Key: Word;

begin
hapus_baris:=ARow;
cek_baris:=StringGrid1.Cells[1,arow];

  //MULAI GRID
  if not (StringGrid1.Cells[ACol,ARow]='') then begin

    //jumlah brg
    if ACol=3 then  begin
      if not (StringGrid1.RowCount=1) then begin
        input_box:=InputBox('qty','Jumlah Barang : '+StringGrid1.Cells[2,arow],StringGrid1.Cells[3,arow]);
        qty:=StrToFloat(input_box);
        StringGrid1.Cells[ACol,ARow]:=FloatToStr(qty);
        jml:=StrToFloat(StringGrid1.Cells[3,arow]);
        harga:=StrToFloat(StringGrid1.Cells[5,arow]);
        //N T1
        total_harga:=jml*harga;
        StringGrid1.Cells[6,arow]:=FloatToStr(total_harga);
        ddisk := StrToFloat(StringGrid1.Cells[7,arow]);
        //N T2
        total2 := total_harga - ddisk;
        StringGrid1.Cells[8,arow]:=FloatToStr(total2);
        Total;
      end;
       end;

		//-- harga
    if ACol=5 then  begin
      if not (StringGrid1.RowCount=1) then begin
        input_box:=InputBox('harga satuan','@ HARGA : '+StringGrid1.Cells[2,arow],StringGrid1.Cells[5,arow]);
        qty:=StrToFloat(input_box);
        StringGrid1.Cells[ACol,ARow]:=FloatToStr(qty);
        jml:=StrToFloat(StringGrid1.Cells[3,arow]);
        harga:=StrToFloat(StringGrid1.Cells[5,arow]);
        //N T1
        total_harga:=jml*harga;
        StringGrid1.Cells[6,arow]:=FloatToStr(total_harga);
        ddisk := StrToFloat(StringGrid1.Cells[7,arow]);
        //N T2
        total2 := total_harga - ddisk;
        StringGrid1.Cells[8,arow]:=FloatToStr(total2);
        Total;
      end;
       end;

	  // -- diskon
      if ACol=7 then  begin
      if not (StringGrid1.RowCount=1) then begin
        input_box:=InputBox('Diskon','disk : '+StringGrid1.Cells[2,arow],StringGrid1.Cells[7,arow]);
        qty:=StrToFloat(input_box);
        StringGrid1.Cells[ACol,ARow]:=FloatToStr(qty);
        jml:=StrToFloat(StringGrid1.Cells[3,arow]);
        harga:=StrToFloat(StringGrid1.Cells[5,arow]);
        //N T1
        total_harga:=jml*harga;
        StringGrid1.Cells[6,arow]:=FloatToStr(total_harga);
        ddisk := StrToFloat(StringGrid1.Cells[7,arow]);
        //N T2
        total2 := total_harga - ddisk;
        StringGrid1.Cells[8,arow]:=FloatToStr(total2);
        Total;
          end;



      end;

   end; //end grid
 end;


procedure TFspk22_medis.ed_t1Change(Sender: TObject);
begin
//if ed_t1.text = '' then Exit;
//hitung_total;
//formatRupiah(ed_t1);
formatRupiah(ed_t1);
end;

procedure TFspk22_medis.ed_diskChange(Sender: TObject);
begin
formatRupiah(ed_disk);
end;

procedure TFspk22_medis.ed_pjkChange(Sender: TObject);
begin
formatRupiah(ed_pjk);
end;

procedure TFspk22_medis.SpeedButton6Click(Sender: TObject);
begin

if ed_jml.Text='' then begin
   ShowMessage('Masukan jumlah Qty!');
   ed_jml.SetFocus;
   exit;
end;

jml :=strtofloat(ed_jml.Text);
hrgd :=strtofloat(ed_hrg.Text);
ddisk :=strtofloat(Ed_disk_d.Text);


n_t1d := jml * hrgd;

if CheckBox1.Checked then
begin
  // ShowMessage('Disk N!');
   n_diskd := strtofloat(ed_Tdisk.Text);;
   end
else
begin
  // ShowMessage('Disk %!');
   n_diskd := n_t1d * (ddisk /100 );
   //ed_N_disk.SetFocus;
  // exit;
end;
//n_diskd := n_t1d * (ddisk /100 );

//Penjumlahan
n_t2d := n_t1d - n_diskd;
ed_Tdisk.text := floattostr (n_diskd);
ed_Tdisk.Color:=clMoneyGreen;
ed_t2_d.text := floattostr (n_t2d);
ed_t2_d.Color:=clMoneyGreen;
Ed_t1d.text := floattostr (n_t1d);
Ed_t1d.Color:=clMoneyGreen;
end;

procedure TFspk22_medis.btn_tambahClick(Sender: TObject);
var
    addSat,addBarang : TMyQuery;
begin
  inc(counter);
StringGrid1.RowCount:=StringGrid1.RowCount + 1;
StringGrid1.Cells[0,StringGrid1.RowCount-1]:=IntToStr(counter);

//ed_no.Text := IntToStr(counter);
StringGrid1.Cells[1,StringGrid1.RowCount-1]:= IntToStr(counter);    //StringGrid1.RowCount-1
StringGrid1.Cells[2,StringGrid1.RowCount-1]:=ed_nama.Text;//nama barang
StringGrid1.Cells[3,StringGrid1.RowCount-1]:=ed_jml.Text; //jumlah
StringGrid1.Cells[4,StringGrid1.RowCount-1]:=ed_satuan.Text; //satuan
StringGrid1.Cells[5,StringGrid1.RowCount-1]:=ed_hrg.Text; // harga
StringGrid1.Cells[6,StringGrid1.RowCount-1]:=ed_t1d.Text; // t1
StringGrid1.Cells[7,StringGrid1.RowCount-1]:=ed_tdisk.Text; // disk
StringGrid1.Cells[8,StringGrid1.RowCount-1]:=ed_t2_d.Text; // t2

//tambah Satuan:
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

addSat.Close;

//tambah Barang:
      addBarang := TMyQuery.Create(nil);
      addBarang.Connection := DmModul.con1;
      addBarang.Close;
      addBarang.SQL.Text:=
      'Select * from detail_baru where nama='+
      QuotedStr(ed_nama.Text)+' AND satuan='+QuotedStr(ed_satuan.Text);
      //AND satuan=QuotedStr(ed_satuan.Text) ;
      addBarang.Open;

      if (addBarang.RecordCount = 0) then
      begin
        MessageDlg('Barang Baru',mtInformation,[mbok],0);

        { StringGrid1.Cells[2,StringGrid1.RowCount-1]:=ed_nama.Text;//nama barang
          StringGrid1.Cells[3,StringGrid1.RowCount-1]:=ed_jml.Text; //jumlah
          StringGrid1.Cells[4,StringGrid1.RowCount-1]:=ed_satuan.Text; //satuan
          StringGrid1.Cells[5,StringGrid1.RowCount-1]:=ed_hrg.Text; // harga
          StringGrid1.Cells[6,StringGrid1.RowCount-1]:=ed_t1d.Text; // t1
          StringGrid1.Cells[7,StringGrid1.RowCount-1]:=ed_tdisk.Text; // disk
          StringGrid1.Cells[8,StringGrid1.RowCount-1]:=ed_t2_d.Text; // t2
        }

        addBarang.Close;
        addBarang.SQL.Text:='INSERT INTO detail_baru (no_peng,nama,jumlah,satuan,hrga_satuan,n_t1,n_disk,n_t2) Values('+
             QuotedStr(EdNokwi.Text)+','+
             QuotedStr(ed_nama.Text)+','+
             QuotedStr(ed_jml.Text)+','+
             QuotedStr(ed_satuan.Text)+','+
             QuotedStr(ed_hrg.Text)+','+
             QuotedStr(ed_t1d.Text)+','+
             QuotedStr(ed_tdisk.Text)+','+
             QuotedStr(ed_t2_d.Text)+')';

   //     'insert into satuan(satuan) Values('+
   //     QuotedStr(ed_satuan.Text)+')';
        addBarang.Execute;
      end;

      addBarang.Close;


combo1;

//=====================
Total; //jumlah total
//clear kotak
ed_nama.Text := '';
ed_jml.Text := '0';
ed_satuan.Text := '';
ed_hrg.Text := '0';
Ed_disk_d.Text := '0';
ed_Tdisk.Text := '0';

end;

procedure TFspk22_medis.Button2Click(Sender: TObject);
begin
      {
      PSc.Close;
      PSc.CommandText:=
      'SELECT * FROM qpj WHERE no_peng LIKE "'+Edit5.Text+'"';
      PSc.Open;

     PSD.Close;
      PSD.CommandText:=
      'SELECT * FROM qdetail WHERE no_peng LIKE '+QuotedStr(Edit5.Text)+'';
      PSD.Open;

      Screen.cursor := crsqlWait;


     With EKRTF1 do Begin
   //format tanggal
   ClearVars;
   CreateVar('fullformat','dd mmmm yyyy');
   CreateVar('fP','dd - mm - yyyy');
   CreateVar('fh','dddd');
   CreateVar('fd','dddd');
   CreateVar('fbln','mmmmm');
   Screen.cursor := crsqlWait;
   //REVISI DATA TGL : 20130709
   infile:=ExtractFilePath(Application.ExeName) + '\rtf\'+'ba_perbaikan_sp.rtf';
   OutFile:= ExtractFilePath(Application.ExeName) + '\report\'+Edit6.Text+Edit5.Text+'-BA_PER'+'.rtf';

      ExecuteOpen([PSc,Psd],SW_SHOW);
      Screen.cursor := crDefault;

end;
     }
    end;
procedure TFspk22_medis.BitBtn9Click(Sender: TObject);

begin
try
    //Sp_header
    psc.Connection := DmModul.con1;
    psc.Close;
    psc.StoredProcName := 'sp_spk_cetak';
    psc.PrepareSQL;
    psc.ParamByName('cari').AsString := Edit5.text; //key ba
    psc.Execute;
    //Sp_detail:
    spDs.Connection := DmModul.con1;
    spDs.Close;
    spDs.StoredProcName := 'Sp_Cetak_detail_spk';
    spDs.PrepareSQL;
    spDs.ParamByName('cari').AsString := Edit5.text; //key ba
    spDs.Execute;

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
      0:  // SP Kontrak non Disk
        begin
        lbl_tunggu.Caption := 'Tunggu Proses...';
        Label5.Caption := 'cetak SPK Non Medis';
        infile:=apDirrtf+'\SPK\'+'spk_medis22.rtf';
        fileku:= apDirExe + '\cetak\SPK\'+Edit6.Text+Edit5.Text+'spk-m'+'.docx';
        OutFile:= apDirExe + '\cetak\SPK\'+Edit6.Text+Edit5.Text+'spk-m'+'.docx';
        //Screen.cursor := crDefault;
        end;
      1:
        begin

        lbl_tunggu.Caption := 'Tunggu Proses...';
        Label5.Caption := 'cetak SPK Non Medis Hal 29-30';
        infile:=apDirrtf+'\SPK\'+'SPK_ MEDIS_2022_hal_29_30.rtf';
        fileku:= apDirExe + '\cetak\SPK\'+Edit6.Text+Edit5.Text+'spk-m_2930'+'.docx';
        OutFile:= apDirExe + '\cetak\SPK\'+Edit6.Text+Edit5.Text+'spk-m_2930'+'.docx';

        end;

        2:
       begin
          //ShowMessage('Ba. Perbaikan');
        //Screen.cursor := crDefault;
        Label5.Caption := 'cetak BA- Panitia';
        lbl_tunggu.Caption := 'Tunggu Proses...';
        //infile:=apDirrtf+'\BA\'+'ba_kat_non_MEDIS18.rtf';
        //fileku:= ExtractFilePath(Application.ExeName) + '\cetak_kontrak\'+Edit6.Text+Edit5.Text+'-ba-PNM'+'.rtf';
        //OutFile:= ExtractFilePath(Application.ExeName) + '\cetak_kontrak\'+Edit6.Text+Edit5.Text+'-ba-PNM'+'.rtf';

         end;


       3:begin
   {

  }
    {  end 3 }

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
              ExecuteOpen([psc,spDs],SW_SHOW);
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
    psc.Close;
    spDs.Close;
  end;
end;

procedure TFspk22_medis.exlrprt1BeforeBuild(Sender: TObject);
begin
FCounter := 1;
end;

procedure TFspk22_medis.exlrprt1GetFieldValue(Sender: TObject;
  const Field: String; var Value: OleVariant);
begin
if AnsiCompareText(Field, 'No') = 0 then
  begin
    Value := FCounter;
    Inc(FCounter);
  end;

  //tgl 1
    if AnsiCompareText(Field, 'tgl1') = 0 then
 //   Value := FormatDateTime('yyyy-mm-dd',dp_tgl1.date);

  //tgl 2
    if AnsiCompareText(Field, 'tgl2') = 0 then
  //  Value := FormatDateTime('yyyy-mm-dd',dp_tgl2.date);
end;

procedure TFspk22_medis.btn_simbadaClick(Sender: TObject);
begin
Screen.cursor := crsqlWait;
////////////////
{
ADO_xlssp.Close;
ADO_xlssp.CommandText:=
'CALL sp_simbada('+
     quotedstr(FormatDateTime('yyyy-mm-dd',dp_tgl1.date))+','+
     quotedstr(FormatDateTime('yyyy-mm-dd',dp_tgl2.date))+')';
ADO_xlssp.Open;
Screen.cursor := crDefault;
if ADO_xlssp.Eof then exit;

exlrprt1.template :=ExtractFilePath(Application.ExeName) + '\xls_rpt\'+'sp_veri.xlsx';
exlrprt1.Dataset:=ADO_xlssp;
//sheet yg dipilih
exlrprt1.TemplSheet :='penerimaan';
exlrprt1.Show();
}
end;

procedure TFspk22_medis.btn_detail_spClick(Sender: TObject);
var
 spxls : TMyStoredProc;

begin
 spxls := TMyStoredProc.Create(nil);

    try
      spxls.Connection := DmModul.con1;
      spxls.Close;
      spxls.StoredProcName := 'sp_simbada_sp_detail';
      spxls.PrepareSQL;
//      spxls.ParamByName('dtTglAwal').AsString := quotedstr(FormatDateTime('yyyy-mm-dd',dp_tgl1.date)); //key ba
//      spxls.ParamByName('dtTglAkhir').AsString :=quotedstr(FormatDateTime('yyyy-mm-dd',dp_tgl2.date)); //key ba
	    spxls.Execute;
      //exlrprt1.template :=GetCurrentDir + '\xls_rpt\'+'import_excel_SPK_v3_2015_detail_sp.xls';
      //exlrprt1.template :=ExtractFilePath(Application.ExeName)
      //+ '\xls_rpt\'+'import_excel_SPK_v15_detail_sp.xlsx';
      //exlrprt1.Dataset:=spxls;
      //exlrprt1.TemplSheet :='penerimaan';
      //exlrprt1.Show();
      finally
      spxls.Close;
      end;

	end;

//export sp







  {
if fil_ba.Checked = true then  begin

 ShowMessage('Cobak Filter BA.');
  Screen.cursor := crsqlWait;
  ADO_xlssp.Close;
  ADO_xlssp.CommandText:=
  'CALL sp_simbada_ba('+
     quotedstr(FormatDateTime('yyyy-mm-dd',dp_tgl1.date))+','+
     quotedstr(FormatDateTime('yyyy-mm-dd',dp_tgl2.date))+')';
  ADO_xlssp.Open;
  Screen.cursor := crDefault;
  if ADO_xlssp.Eof then exit;
  exlrprt1.template :=ExtractFilePath(Application.ExeName)
  + '\xls_rpt\'+'import_excel_SPK_v3_2014_detail_sp.xlsx';
  exlrprt1.Dataset:=ADO_xlssp;
  //sheet yg dipilih
  exlrprt1.TemplSheet :='penerimaan';
  exlrprt1.Show();
 end
else
 begin
 ShowMessage('Cobak Tidak Filter BA.');
 Screen.cursor := crsqlWait;
  ADO_xlssp.Close;
  ADO_xlssp.CommandText:=
  'CALL sp_simbada_sp_detail('+
     quotedstr(FormatDateTime('yyyy-mm-dd',dp_tgl1.date))+','+
     quotedstr(FormatDateTime('yyyy-mm-dd',dp_tgl2.date))+')';
  ADO_xlssp.Open;
  Screen.cursor := crDefault;
  if ADO_xlssp.Eof then exit;
  exlrprt1.template :=ExtractFilePath(Application.ExeName)
  + '\xls_rpt\'+'import_excel_SPK_v3_2014_detail_sp.xlsx';
  exlrprt1.Dataset:=ADO_xlssp;
  //sheet yg dipilih
  exlrprt1.TemplSheet :='penerimaan';
  exlrprt1.Show();
  }
//end
//end;

procedure TFspk22_medis.BitBtn7Click(Sender: TObject);
begin
try
    //Sp_header
    mysphc.Connection := DmModul.con1;
    mysphc.Close;
    mysphc.StoredProcName := 'sp_cetak_ba2101';
    mysphc.PrepareSQL;
    mysphc.ParamByName('cari').AsString := Edit5.text; //key ba
    mysphc.Open;

     With ekrtf2 do Begin   //komponent rtf
      //format tanggal
      ClearVars;
      CreateVar('fullformat','dd mmmm yyyy');
      CreateVar('fP','dd - mm - yyyy');
      CreateVar('fh','dddd');
      CreateVar('fd','dddd');
      CreateVar('fbln','mmmmm');

           case rg_ba.ItemIndex of
             0:   // SP BA 2022
       begin
          //Sp_detail:
            myspds.Connection := DmModul.con1;
            myspds.Close;
            myspds.StoredProcName := 'Sp_Cetak_detail_spk';
            myspds.PrepareSQL;
            myspds.ParamByName('cari').AsString := Edit5.text; //key ba
            myspds.Execute;
            Screen.cursor := crsqlWait;

        infile:=apDirrtf+'\BA\'+'ba_SPK_OBAT22.rtf';
        fileku:= apDirExe+  '\cetak\ba\'+Edit5.Text+'baspkob22-'+'.rtf';
        OutFile:= apDirExe+  '\cetak\ba\'+Edit5.Text+'baspkob22-'+'.rtf';
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
              ExecuteOpen([myspHc,myspDs],SW_SHOW);
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
    myspHc.Close;
    myspDs.Close;
  end;

 end;

procedure TFspk22_medis.StringGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
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
    ABrush.Color := clYellow;
    AFont.Color := clBlack;
    AFont.Style := [fsBold];
  end;


if ((ACol = 4) and (ARow > 0)) then
  begin

   if (StringGrid1.Cells[ACol, ARow] = '0')
    then
    begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clRed;
    //AFont.Style := [fsBold];
  end;

   if (StringGrid1.Cells[ACol, ARow] > '0')
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

  if ((ACol = 7) and (ARow > 0)) then
  begin

   if (StringGrid1.Cells[ACol, ARow] = '0')
    then
    begin
    ABrush.Color := clYellow;
    AFont.Color := clBlack;
    //AFont.Style := [fsBold];
  end;
   // ada disk
   if (StringGrid1.Cells[ACol, ARow] > '0')
    then
    begin
    ABrush.Color := $00C0FFFF;
    AFont.Color := clred;
    //AFont.Style := [fsBold];
  end;

  end;

end;

procedure TFspk22_medis.SpeedButton9Click(Sender: TObject);
begin

Close;
{
with Fsp_medis do
  begin

if trim(ed_t1.Text) ='' then
      begin
         exit
      end;

      if trim(ed_disk.Text) ='' then
      begin
         exit
      end;

      if trim(ed_pjk.Text) ='' then
      begin
         exit
      end;

      end;


MessageDlg('Kwi udah sama',mtInformation,[mbok],0);
}
end;


procedure TFspk22_medis.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
{
if (aCol <> 0) and (aRow <> 0) then
 if (Odd(ARow)) then
 begin
 with (Sender as TStringGrid) do
 begin
 Canvas.Brush.Color := $00C0FFFF;
 Canvas.Font.Color := clBlue;
 Canvas.FillRect(rect);
 Canvas.TextOut(rect.Left + 2, Rect.Top + 2,
 Cells[acol, arow]);
 end;
 end else
  if (gdFocused In state) or (gdSelected in state)
 then
 begin
 with (Sender as TStringGrid) do
 begin
 Canvas.Brush.Color := $00FFFFFF;
 Canvas.Font.Color := clBlue;
 Canvas.FillRect(Rect);
 Canvas.TextOut(Rect.Left + 2, Rect.Top + 2,
 Cells[acol, arow]);
 end;

end;
}
end;

procedure TFspk22_medis.CheckBox1Click(Sender: TObject);
begin
  {
  if CheckBox1.Checked then
  begin
  ed_Tdisk.Color := clCream;
  ed_Tdisk.SetFocus;
  end
  else
  begin
  ed_Tdisk.Color := clRed;
  end;
   }
end;

procedure TFspk22_medis.ed_jmlChange(Sender: TObject);

begin
hitung;
end;

procedure TFspk22_medis.ed_hrgChange(Sender: TObject);
begin
HITUNG;
{
if ed_jml.Text='' then begin
   ShowMessage('jUMLAH BRG!');
   ed_jml.SetFocus;
   exit;
end;

if ed_hrg.Text='' then begin
   ShowMessage('Harga Satuan!');
   ed_hrg.SetFocus;
   exit;
end;

jml :=strtofloat(ed_jml.Text);
hrgd :=strtofloat(ed_hrg.Text);
//ddisk :=strtofloat(Ed_disk_d.Text);
n_t1d := jml * hrgd;
Ed_t1d.text := floattostr(n_t1d);
Ed_t1d.Color:=clMoneyGreen;
}
end;

procedure TFspk22_medis.Ed_disk_dChange(Sender: TObject);
begin
HITUNG;
end;

procedure TFspk22_medis.ed_TdiskChange(Sender: TObject);
begin
HITUNG;
end;

procedure TFspk22_medis.btn_hapusdClick(Sender: TObject);
var
    sphapus: TMyStoredProc;
begin

{
 AktifControl(Self,PnInput, False);
 PnOperasi.Caption:='Hapus Data';
 ednokwi.Enabled:=True;
 ednokwi.Color:=clWhite;
 BtnProses.Enabled:=False;
 BtnCari_no.Enabled:=True;
 //t
 //ednokwi.Enabled:= true;
 ednokwi.SetFocus;

 }

if MessageDlg('Hapus data :'+#13+#10+EdNokwi.Text+#13+#10+
        'akan dihapus, lanjutkan?'+#13+#10+'Hati - hati ya ....', mtWarning, [mbOK, mbCancel], 0) = mrOK then
        begin
   Screen.cursor := crsqlWait;

    sphapus:= TMyStoredProc.Create(nil);
    sphapus.Connection := DmModul.con1;
  try
    Screen.cursor := crsqlWait;
    sphapus.Close;
    sphapus.StoredProcName := 'SP_hapus_SPK';
    sphapus.PrepareSQL;
    sphapus.ParamByName('hapus_sp_no').AsString := EdNokwi.Text;
    //sphapus.ParamByName('hapus_sp_no2').AsString := EdNokwi.text;
    sphapus.Execute;

    Screen.cursor := crDefault;
    KosongTex(True);
    ShowMessage('Hapus Sukses :'+ EdNokwi.Text);

  finally
    sphapus.Close;
  end;

end;

end;

procedure TFspk22_medis.SpeedButton11Click(Sender: TObject);
var
Fields,Types: TStringList;
datafile : string;
begin

  {
  if messagedlg('data Gr'+#13#10+
  'Import Excel SPK Detail'+
  #13#10+'dilanjutkan ?'+ EdNokwi.Text , mtConfirmation, [mbyes, mbNo], 0) = mryes then
    begin

    end
   }

if messagedlg('Database Sudah dibackup'+#13#10+
'Import Excel SPK Detail'+
#13#10+'dilanjutkan ?'+ EdNokwi.Text , mtConfirmation, [mbyes, mbNo], 0) = mryes then
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
  'no_peng'+#10+  //1 key
  'no'+#10+       //2
  'nama'+#10+     //3
  'jumlah'+#10+   //4
  'satuan'+#10+   //5
  'hrga_satuan'+#10+ //6
  'n_t1'+#10+       //7
  'n_disk'+#10+     //8
  'n_t2'+#10+       //9
  'merk'+#10+       //10
  'tipe'+#10+       //11
  'no_seri'+#10+    //12
  'spek';           //13
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
  '1'+#10+   //7
  '1'+#10+   //8
  '1'+#10+   //9
  '0'+#10+   //10
  '0'+#10+   //11
  '0'+#10+   //12
  '0';   //13
  //'1'; //akhir type data : 0 -> string , 1 -> nilai, 2 -> date

  //nama_sheet, table nama

  Screen.cursor := crsqlWait;

  if uDBXls.Import(datafile, 'detail_spk', 'detail_spk', Fields, Types) then
    showmessage('Sukses Import')
  else showmessage('Gagal Import');
   Screen.cursor := crDefault;
  end;
   TampilData;
end;
end;



{
procedure TFspk19.btn3Click(Sender: TObject);
var q   :tadoquery;
    ds  :TDataSource;
    sl  :TStringList;
    i   :integer;

    begin
 {
  q := tadoquery.Create(nil);
  ds := TDataSource.Create(nil);
    try
  q.Connection := DmModul.ADOCapotik;
  q.Close;
  q.SQL.Add('select a.no_peng,a.spk_tgl,a.spk_no,c.namaperusahaan,');
  q.SQL.Add('a.ba_penerimaan_brg_tgl,a.no_faktur,a.tglbayar,a.KWITANSI as bayar ,a.KWITANSI + a.N_disk as spj');
  q.SQL.Add('from i_pjbt a');
  q.SQL.Add('inner JOIN m_rek_2014 b ON a.anggaran = b.no_a');
  q.SQL.Add('inner JOIN m_perusahaan c ON a.cv = c.novendor');
  q.SQL.Add('where a.no_faktur like '+QuotedStr('%'+Edit2.Text+'%')+' ');
  q.Open;

  if q.Eof then
  begin
  ShowMessage('Data tidak ada');
  q.Close;
  q.Free;
  exit;
  end;
  ds.DataSet := q;
  //setting grid
  grd.DataSource := ds;
  grd.AutoNumbercol(0);
  grd.AutoSizeColumns(False,10);
  //Value := Format('%.2n',[f]);
  //grd.FloatFormat := '%.2n';

  {
  Grd.ColWidths[0] := 20;
  Grd.GroupColumn := 3;
  Grd.InsertCols(0,1);
  grd.GroupColumn := 3;
  grd.QSortGroup;
  grd.RowCount := 100;
  grd.RandomFill(false,100);
  for i := 1 to grd.RowCount - 1 do
    grd.Ints[1,i] := random(5);
  grd.Grouping.Summary := true;
  grd.Grouping.MergeHeader := true;
  grd.Grouping.ShowGroupCount := true;
  grd.Group(4);
  grd.GroupCustomCalc(4);
   }

  //ShowMessage('Jumlah : '+IntToStr(q.RecordCount)+' Data Record');

  //Simpan XML

  {
  sl := TStringList.Create;
  for i := 0 to grd.ColCount - 1 do
  sl.Add(grd.Cells[I,0]);
  grd.SaveToXML('mygrid.xml', 'xmllist', 'xmlrecord', sl);
  sl.Free;
   }

  // finally
//   ShowMessage(IntToStr(q.RecordCount));
//    q.Free;
//    ds.Free;
//end;
//end;

procedure TFspk22_medis.btn4Click(Sender: TObject);
begin
//StringGrid1.AutoSizeCol(0);
//StringGrid1.AutoSizeCol(1);

//ed_nonbayar.Text;

{
Screen.cursor := crsqlWait;
//////Rekap Pelampauan//////////
ADO_xlssp.Close;
ADO_xlssp.CommandText:=
'CALL SP_blm_BAYAR';
//  'CALL SP_blm_BAYAR('+
//     quotedstr(ed_nonbayar.Text)+')';


//'CALL SP_blm_BAYAR('+
//     quotedstr(FormatDateTime('yyyy-mm-dd',dp_tgl1.date))+','+
//     quotedstr(FormatDateTime('yyyy-mm-dd',dp_tgl2.date))+')';
ADO_xlssp.Open;
Screen.cursor := crDefault;
if ADO_xlssp.Eof then exit;

exlrprt1.template :=ExtractFilePath(Application.ExeName) + '\xls_rpt\'+'rekap_pelampauan.xls';
exlrprt1.Dataset:=ADO_xlssp;
//sheet yg dipilih
exlrprt1.TemplSheet :='rekap';
exlrprt1.Show();
   }
end;

procedure TFspk22_medis.SpeedButton14Click(Sender: TObject);
var q :tadoquery;
begin

end;

procedure TFspk22_medis.grdCellValidate(Sender: TObject; ACol, ARow: Integer;
  var Value: String; var Valid: Boolean);
begin
//UpdateSums;
end;

procedure TFspk22_medis.grdGetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
if ACol = 1 then 
  begin 
    AFont.Color := clBlue ;
    AFont.Style := [fsBold];
  end;
if ACol = 2 then
  begin
    AFont.Color := clred ;
    AFont.Style := [fsBold];
  end;

end;

procedure TFspk22_medis.SpeedButton13Click(Sender: TObject);
var i :Integer;
begin

for i:=1 to StringGrid1.RowCount-2 do begin
StringGrid1.Cells[0,i]:=IntToStr(i);
StringGrid1.Cells[1,i]:=IntToStr(i);
end;
end;
procedure TFspk22_medis.BitBtn11Click(Sender: TObject);
begin
{
  Screen.cursor := crsqlWait;
  ////////////////
  ADO_xlssp.Close;
  ADO_xlssp.CommandText:=
  'call sp_master_brg';
  {
'CALL sp_simbada_sp_detail('+
     quotedstr(FormatDateTime('yyyy-mm-dd',dp_tgl1.date))+','+
     quotedstr(FormatDateTime('yyyy-mm-dd',dp_tgl2.date))+')';
     }
 {
     ADO_xlssp.Open;
Screen.cursor := crDefault;
if ADO_xlssp.Eof then exit;

exlrprt1.template :=ExtractFilePath(Application.ExeName)
+ '\xls_rpt\'+'master_brg.xls';
exlrprt1.Dataset:=ADO_xlssp;
//sheet yg dipilih
exlrprt1.TemplSheet :='mbrg';
exlrprt1.Show();
}
end;

procedure TFspk22_medis.BitBtn12Click(Sender: TObject);
begin
{
if frm_fix=nil then
  frm_fix:=Tfrm_fix.Create(Application);
  frm_fix.BringToFront;
  }
  end;

procedure TFspk22_medis.StringGrid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    1: HAlign := taCenter;
    2: HAlign := taLeftJustify;
    3,5,6,7,8: HAlign := taRightJustify;
  end;
end;

procedure TFspk22_medis.BitBtn15Click(Sender: TObject);
begin
  {
  FCari:=TFCari.Create(Application);
  LsvSetCol('No id|pro|keg|kode rek|nama rekening|jns|perubahan|',
  '80|40|40|80|80|300|80|',FCari.LsCari);
  FCari.LsField.Items.Clear;
  FCari.LsField.Items.Add('m_rek_2014'); //Tabel
  FCari.LsField.Items.Add('no_a'); //0
  FCari.LsField.Items.Add('kd_pro'); //1
  FCari.LsField.Items.Add('kd_keg'); //2
  FCari.LsField.Items.Add('kode_rekening');//3
  FCari.LsField.Items.Add('REK_NAMA');//4
  FCari.LsField.Items.Add('nm_jns');//5
  FCari.LsField.Items.Add('perubahan'); //6
 // FCari.LsField.Items.Add('tambah_kurang');//11
  FCari.ShowModal;
  if nFieldCari[0]<>'' then
  begin
    ed_nonbayar.Text:=nFieldCari[0];
  {
    ed_pagu.Text:=nFieldCari[6];
    ed_pengadaan.Text:='Pengadaan ' + nFieldCari[4];
  //  M_l.Text:='Pengadaaan ' + nFieldCari[4];
    ed_u_a.Text:=nFieldCari[1]+
    '.'+ nFieldCari[2] +
    '.' + nFieldCari[3] +
    '.' + nFieldCari[6]+
    '.' + nFieldCari[4]+
    '.' + nFieldCari[5]+
    '.' + nFieldCari[7];
   }
   //end;
end;

procedure TFspk22_medis.tmr1Timer(Sender: TObject);
begin
if PnOperasi.Font.Color=clred then
  begin
    PnOperasi.Font.Color:=clWhite;
  end
  else
  begin
    PnOperasi.Font.Color:=clRed;

  end;
  label3.Caption:=FormatDateTime('HH:MM:ss',now);
   if Edkodetransaksi.Font.Color=clred then
  begin
    Edkodetransaksi.Font.Color:=clWhite;
  end
  else
  begin
    Edkodetransaksi.Font.Color:=clRed;
  end;
 // Sisa
  if edit4.Font.Color=clblue then
  begin
    edit4.Font.Color:=clWhite;
  end
  else
  begin
    edit4.Font.Color:=clblue;
  end;
  //Ed_u_cv
  if Ed_u_cv.Font.Color=clblue then
  begin
    Ed_u_cv.Font.Color:=clred;
  end
  else
  begin
    Ed_u_cv.Font.Color:=clblue;
  end;
end;



procedure TFspk22_medis.BitBtn17Click(Sender: TObject);
begin

  try
    ksp.Connection := DmModul.con1;
    ksp.Close;
    ksp.StoredProcName := 'sp_spk_cetak';
    ksp.PrepareSQL;
    ksp.ParamByName('cari').AsString := ed_k1.text; //key ba
    //ksp.ParamByName('cari2').AsString := ed_k2.text; //key ba
    ksp.Execute;

    Screen.cursor := crsqlWait;
     With EKRTF1 do Begin
   //format tanggal
   ClearVars;
   CreateVar('fullformat','dd mmmm yyyy');
   CreateVar('fH','dddd');
   CreateVar('fbln','mmmm');
   CreateVar('fdmy','dd - mm - yyyy');
   infile:= apDirrtf + '\kwi\'+'027_KWI_spk22.rtf';
   //infile:= apDirrtf + '\kwi19\'+'kwi_sp_medis19sp.rtf';
   fileku := apDirExe + '\cetak\kwi\'+ed_k1.Text+'-kspk'+'.doc';

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
              //OutFile:= ExtractFilePath(Application.ExeName) + 'cetak\kwi\'+ed_k1.Text+'-kspk'+'.DOC';
              OutFile:= ExtractFilePath(Application.ExeName) + 'cetak\kwi\'+ed_k1.Text+'-kspk'+'.DOC';
              Screen.cursor := crDefault;
              ExecuteOpen([ksp],SW_SHOW);
              //ShowMessage('data Sudah Diposes :'+ dir);

            Except ShowMessage('Cetak Gagal' + dir) End;
        end;
  end;
  finally
    ksp.Close;
  end;

end;

procedure TFspk22_medis.BitBtn18Click(Sender: TObject);
begin
try
    ksp.Connection := DmModul.con1;
    ksp.Close;
    ksp.StoredProcName := 'sp_kontrak_kwi';
    ksp.PrepareSQL;
    ksp.ParamByName('cari1').AsString := ed_k1.text; //key ba
    ksp.ParamByName('cari2').AsString := ed_k2.text; //key ba
    ksp.Execute;

    Screen.cursor := crsqlWait;
     With EKRTF1 do Begin
   //format tanggal
   ClearVars;
   CreateVar('fullformat','dd mmmm yyyy');
   CreateVar('fH','dddd');
   CreateVar('fbln','mmmm');
   CreateVar('fdmy','dd - mm - yyyy');
   infile:= apDirrtf + '\rpt_kwi\'+'kwi_sp_medis1516sp.rtf';
   fileku := apDirExe + '\report_kwi\'+ed_k1.Text+'-ksp'+'.doc';

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
              OutFile:= ExtractFilePath(Application.ExeName) + '\report_kwi\'+ed_k1.Text+'-ksp'+'.DOC';
              Screen.cursor := crDefault;
              ExecuteOpen([ksp],SW_SHOW);
              //ShowMessage('data Sudah Diposes :'+ dir);

            Except ShowMessage('Cetak Gagal' + dir) End;
        end;
  end;
  finally
    ksp.Close;
  end;
end;

procedure TFspk22_medis.tgl_akhirChange(Sender: TObject);
begin
//btn1Click(Sender);
end;

procedure TFspk22_medis.SpeedButton16Click(Sender: TObject);
begin
 ed_k1.Text := Edit5.Text;
 ed_k2.Text := Edit5.Text;
end;

procedure TFspk22_medis.btnprosesClick(Sender: TObject);
var
sql,tgljatuhtempo:string;
edtglbayar,perintahsql,
sql1,sql2,sql3,sql4:string;
m1,m2,m3,m4:string;
selisih :Real;
i1,i2,baris :Integer;

// simpan cbb
cbojns,cboPejabat,cboPejabatBA,cbo_ppk,cbb_verif,cbb_pembuat:string;

sp_sim : TMyQuery;
qv : TMyQuery;


begin

if Validasi=False then exit;

if MessageDlg('Data dengan'+#13+#10+ednokwi.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtconfirmation, [mbOK, mbCancel], 0) = mrOK then
begin
//  Validasi(false);
//grid urut
  for i2:=1 to StringGrid1.RowCount-1 do begin
    StringGrid1.Cells[0,i2]:=IntToStr(i2);
    StringGrid1.Cells[1,i2]:=IntToStr(i2);
  end;

   if ed_tgl_jt.Checked then
   tgljatuhtempo:=FormatDateTime('yyyy/mm/dd',ed_tgl_jt.Date)
   else
   tgljatuhtempo:='';

   if tgl_bayar.Checked then
   edtglbayar:=FormatDateTime('yyyy/mm/dd',tgl_bayar.Date)
   else
   edtglbayar:='';

   //ppn
   if chk2.Checked=true then
   ppn := '1'
   else
   ppn:='';

   // cbojns,cboPejabat,cboPejabatBA:string;
   // simpan Jenis
   if cbb2.Text = '' then
      cbojns := ''
  else
  cbojns :=  cbb2.EditValue;

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
  // Simpan PPK
  if cbb_ppk.Text = '' then
      cbo_ppk := ''
  else
  cbo_ppk :=  cbb_ppk.EditValue;

  // Simpan verif
   if cxLookupVerifikator.Text = '' then
      cbb_verif := ''
  else
  cbb_verif :=  cxLookupVerifikator.EditValue;

   // Simpan Pembuat
   if cxLookupDokument.Text = '' then
      cbb_pembuat := ''
  else
  cbb_pembuat :=  cxLookupDokument.EditValue;

   //Simpan data
  sp_sim := TMyQuery.Create(nil);
  qv := TMyQuery.Create(nil);
  end;
 //mulai simpan

 If PnOperasi.Caption='Tambah Data' then
   begin
      if Validasi=False then exit;
   begin
    qv.Connection := DmModul.con1;
    qv.SQL.Clear;
    qv.SQL.Text := 'Select * from i_header where no_peng = '+QuotedStr(ednokwi.Text)+'';
    qv.Open;
    if qv.RecordCount > 0 then
      begin
        {
        MessageDlg('Data dengan'+#13+#10+EdNokwi.Text+#13+#10+
        'Sudah Ada ?',mtInformation,[mbok],0);
        EdNokwi.Enabled:= true;
        EdNokwi.SetFocus;
        qv.Close;
        qv.Free;
        exit;
        }

         if MessageDlg('Data dengan Nomor Sudah Ada : '+#13+#10+ednokwi.Text+#13+#10+
        'Membuat Nomor Baru, akan lanjutkan?' +#13+#10+buat_agenda('i_header','no_peng','s'),
        mtconfirmation, [mbOK, mbCancel], 0) = mrOK then
          begin
        EdNokwi.Enabled:= true;
        EdNokwi.SetFocus;
        //buatno;
        EdNokwi.Text:=buat_agenda('i_header','no_peng','s');
        //EdNokwi.Text:=generateID('i_pjbt_kontr','no_peng','k');
        qv.Close;
        qv.Free;
        exit;
            end;
       Exit;

      end;

   end;

    try
      Sql :='insert into i_header(no_peng,tgl_create,pengadaan,lingkup,pagu,tgl_awal,tgl_akhir,jml_hr,'+
          'thr,n_hps,n_penw,n_nego,cv,anggaran,kwitansi,'+
          'tpagu,Thps,Tpenw,Tnego,Tkwi,tgl_jatuh_tempo,Pajak,N_t1,N_disk,N_t2,jns,'+
          'ttd_jab,ttd_jab_BA,ttd_ppk,verif,pembuat,tglbayar) Values('+
          QuotedStr(ednokwi.Text)+','+
          QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
          QuotedStr(mp.Text)+','+
          QuotedStr(M_l.Text)+','+
          QuotedStr(clearDot(ed_pagu.Text))+','+
          QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_awal.Date))+','+
          QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_akhir.Date))+','+
          QuotedStr(ed_jml_hr.Text)+','+
          QuotedStr(ed_Thr.Text)+','+
          QuotedStr(clearDot(ed_hps.Text))+','+
          QuotedStr(clearDot(ed_npenw.Text))+','+
          QuotedStr(clearDot(ed_nNego.Text))+','+
          QuotedStr(ed_cv.Text)+','+
          QuotedStr(ed_a.Text)+','+
          QuotedStr(clearDot(ed_bayar.Text))+','+  //Kwitansi
          QuotedStr(ed_Tpagu.Text)+','+
          QuotedStr(Ed_thps.Text)+','+
          QuotedStr(ed_TPewn.Text)+','+
          QuotedStr(ED_Tnego.Text)+','+
          QuotedStr(clearDot(ED_Tnego.Text))+','+   // T Kwi
          QuotedStr(FormatDateTime('yyyy/mm/dd',ed_tgl_jt.Date))+','+
          QuotedStr(clearDot(ed_pjk.Text))+','+
          QuotedStr(clearDot(ed_t1.Text))+','+
          QuotedStr(clearDot(ed_disk.Text))+','+
          QuotedStr(clearDot(ed_t2.Text))+','+
          QuotedStr(cbojns)+','+
          QuotedStr(cboPejabat)+','+
          QuotedStr(cboPejabatBA)+','+
          QuotedStr(cbo_ppk)+','+
          QuotedStr(cbb_verif)+','+
          QuotedStr(cbb_pembuat)+','+
          QuotedStr(edtglbayar)+')';
          ExecSQL1(sql);

           m1 := 'Simpan : Spk Header baru Ok ';

        //tambah list SPK
         sql :='insert into i_list(no_peng,tgl_create,nota_dns_tgl,nota_dns_no,hps_tgl,uppl_tgl,uppl_no,'+
        'pfk_tgl,ba_ek_tgl,ba_ek_no,ba_ek_t_hr,p_h_ek_tgl,p_h_ek_no,'+
        'penj_p_tgl,penj_p_no,penj_p_t_hr,p_perw_tgl,p_perw_no,ba_pem_perw_tgl,ba_pem_perw_no,ba_pem_perw_t_hr,'+
        'ba_eva_penw_tgl,ba_eva_penw_no,ba_eva_penw_t_hr,'+
        'ba_kla_nego_tgl,ba_kla_nego_no,ba_kla_nego_t_hr,ba_h_pl_tgl,'+
        'ba_h_pl_no,ba_h_pl_t_hr,pen_ba_p_pl_tgl,pen_ba_p_pl_no,sppbj_tgl,sppbj_no,spk_tgl,spk_no,spk_t_hr,'+
        'spmk_tgl,spmk_no,spmk_t_hr,'+
        'faktur_tgl,faktur_no) Values('+
        QuotedStr(EdNokwi.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_nota_dns_tgl.Date))+','+
        QuotedStr(e_nota_dns_no.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_hps_tgl.Date))+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_uppl_tgl.Date))+','+
        QuotedStr(e_uppl_no.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_pfk_tgl.Date))+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_ba_ek_tgl.Date))+','+
        QuotedStr(e_ba_ek_no.Text)+','+
        QuotedStr(e_ba_ek_t_hr.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_p_h_ek_tgl.Date))+','+
        QuotedStr(e_p_h_ek_no.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_penj_p_tgl.Date))+','+
        QuotedStr(e_penj_p_no.Text)+','+
        QuotedStr(e_penj_p_t_hr.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_p_perw_tgl.Date))+','+
        QuotedStr(e_p_perw_no.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_ba_pem_perw_tgl.Date))+','+
        QuotedStr(e_ba_pem_perw_no.Text)+','+
        QuotedStr(e_ba_pem_perw_t_hr.Text)+','+
        // tambahan ba eva
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtgl_eva_perw.Date))+','+
        QuotedStr(edt_eva_perw.Text)+','+
        QuotedStr(edt_hr_eva_perw.Text)+','+

        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_ba_kla_nego_tgl.Date))+','+
        QuotedStr(e_ba_kla_nego_no.Text)+','+
        QuotedStr(e_ba_kla_nego_t_hr.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_ba_h_pl_tgl.Date))+','+
        QuotedStr(e_ba_h_pl_no.Text)+','+
        QuotedStr(e_ba_h_pl_t_hr.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_pen_ba_p_pl_tgl.Date))+','+
        QuotedStr(e_pen_ba_p_pl_no.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_sppbj_tgl.Date))+','+
        QuotedStr(e_sppbj_no.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_spk_tgl.Date))+','+
        QuotedStr(e_spk_no.Text)+','+
        QuotedStr(e_spk_t_hr.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_spmk.Date))+','+
        QuotedStr(edt_spmk.Text)+','+
        QuotedStr(edt_tspmk.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',ed_tgl_faktur.Date))+','+
        QuotedStr(ed_no_faktur.Text)+')';
        ExecSQL1(sql);

        m2 := 'Simpan : Spk list baru ok ';
        // Simpan Detail Baru
        for i1:=1 to StringGrid1.RowCount-1 do begin
             sql2:='INSERT INTO detail_spk (no_peng,no,nama,jumlah,satuan,hrga_satuan,n_t1,n_disk,n_t2) Values('+
             QuotedStr(EdNokwi.Text)+','+
             QuotedStr(StringGrid1.Cells[1,i1])+','+
             QuotedStr(StringGrid1.Cells[2,i1])+','+
             QuotedStr(StringGrid1.Cells[3,i1])+','+
             QuotedStr(StringGrid1.Cells[4,i1])+','+
             QuotedStr(StringGrid1.Cells[5,i1])+','+
             QuotedStr(StringGrid1.Cells[6,i1])+','+
             QuotedStr(StringGrid1.Cells[7,i1])+','+
             QuotedStr(StringGrid1.Cells[8,i1])+')';
             ExecSQL1(sql2);
              end;

        m3 := 'simpan Detail Baru OK';

        {
        sql3 :='Update detail_sp_kontr set nama= tcase(nama)'+
        ',satuan= tcase(satuan)' +
        ' where no_peng='+QuotedStr(EdNokwi.Text);
        ExecSQL1(sql3);
        m5 := 'Ubah Nama OK';
        }
     except
     m1 := 'simpan Baru Gagal';
        raise;
      end;
      end

 else if PnOperasi.Caption='Ubah Data' then
   begin
        try
         Sql:= 'Update i_header set no_peng='+ QuotedStr(ednokwi.Text)+
        ',pengadaan='+QuotedStr(mp.Text)+
        ',lingkup='+QuotedStr(M_l.Text)+
        ',pagu='+QuotedStr(ed_pagu.Text)+
        ',tgl_awal='+QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_awal.Date))+
        ',tgl_akhir='+QuotedStr(FormatDateTime('yyyy/mm/dd',tgl_akhir.Date))+
        ',jml_hr='+QuotedStr(ed_jml_hr.Text)+
        ',thr='+QuotedStr(ed_Thr.Text)+
        ',n_hps='+QuotedStr(clearDot(ed_hps.Text))+
        ',n_penw='+QuotedStr(clearDot(ed_npenw.Text))+
        ',n_nego='+QuotedStr(clearDot(ed_nnego.Text))+
        ',cv='+QuotedStr(ed_cv.Text)+
        ',anggaran='+QuotedStr(ed_a.Text)+
        ',KWITANSI='+QuotedStr(clearDot(ed_bayar.Text))+ // Kwitansi
        ',tpagu='+QuotedStr(ed_Tpagu.Text)+
        ',Thps='+QuotedStr(Ed_thps.Text)+
        ',Tpenw='+QuotedStr(ed_TPewn.Text)+
        ',Tnego='+QuotedStr(ED_Tnego.Text)+
        ',Tkwi='+QuotedStr(clearDot(ED_Tnego.Text))+
        ',tgl_jatuh_tempo='+QuotedStr(tgljatuhtempo)+
        ',Pjk='+QuotedStr(ed_pjk.Text)+
        ',N_t1='+QuotedStr(clearDot(ed_t1.Text))+
        ',N_t2='+QuotedStr(clearDot(ed_t2.Text))+
        //',KWITANSI='+QuotedStr(clearDot(ed_t2.Text))+
        ',N_disk='+QuotedStr(clearDot(ed_disk.Text))+
        ',tglbayar='+QuotedStr(edtglbayar)+
        ',pajak='+QuotedStr(clearDot(ed_pjk.Text))+
        ',jns='+QuotedStr(cbojns)+
        ',ttd_jab='+QuotedStr(cboPejabat)+
        ',ttd_jab_BA='+QuotedStr(cboPejabatBA)+
        ',ttd_ppk='+QuotedStr(cbo_ppk)+
        {tambahan}
        ',verif='+QuotedStr(cbb_verif)+
        ',pembuat='+QuotedStr(cbb_pembuat)+
        ' where no_peng='+QuotedStr(ednokwi.Text);
        ExecSQL1(sql);
        // I_list
        sql1:= 'Update i_list set no_peng='+ QuotedStr(ednokwi.Text)+
        ',nota_dns_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_nota_dns_tgl.Date))+
        ',nota_dns_no='+QuotedStr(e_nota_dns_no.Text)+
        ',hps_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_hps_tgl.Date))+
        ',uppl_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_uppl_tgl.Date))+
        ',uppl_no='+QuotedStr(e_uppl_no.Text)+
        ',pfk_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_pfk_tgl.Date))+
        ',ba_ek_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_ba_ek_tgl.Date))+
        ',ba_ek_no='+QuotedStr(e_ba_ek_no.Text)+
        ',ba_ek_t_hr='+QuotedStr(e_ba_ek_t_hr.Text)+
        ',p_h_ek_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_p_h_ek_tgl.Date))+
        ',p_h_ek_no='+QuotedStr(e_p_h_ek_no.Text)+
        ',penj_p_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_penj_p_tgl.Date))+
        ',penj_p_no='+QuotedStr(e_penj_p_no.Text)+
        ',penj_p_t_hr='+QuotedStr(e_penj_p_t_hr.Text)+

        //Ba EVA Penawaran
        ',ba_eva_penw_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',dtgl_eva_perw.Date))+
        ',ba_eva_penw_no='+QuotedStr(edt_eva_perw.Text)+
        ',ba_eva_penw_t_hr='+QuotedStr(edt_hr_eva_perw.Text)+

        ',p_perw_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_p_perw_tgl.Date))+
        ',p_perw_no='+QuotedStr(e_p_perw_no.Text)+

        ',ba_pem_perw_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_ba_pem_perw_tgl.Date))+
        ',ba_pem_perw_no='+QuotedStr(e_ba_pem_perw_no.Text)+
        ',ba_pem_perw_t_hr='+QuotedStr(e_ba_pem_perw_t_hr.Text)+

        ',ba_kla_nego_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_ba_kla_nego_tgl.Date))+
        ',ba_kla_nego_no='+QuotedStr(e_ba_kla_nego_no.Text)+
        ',ba_kla_nego_t_hr='+QuotedStr(e_ba_kla_nego_t_hr.Text)+
        ',ba_h_pl_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_ba_h_pl_tgl.Date))+
        ',ba_h_pl_no='+QuotedStr(e_ba_h_pl_no.Text)+
        ',ba_h_pl_t_hr='+QuotedStr(e_ba_h_pl_t_hr.Text)+
        ',pen_ba_p_pl_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_pen_ba_p_pl_tgl.Date))+
        ',pen_ba_p_pl_no='+QuotedStr(e_pen_ba_p_pl_no.Text)+
        ',sppbj_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_sppbj_tgl.Date))+
        ',sppbj_no='+QuotedStr(e_sppbj_no.Text)+
        ',spk_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',tgl_spk_tgl.Date))+
        ',spk_no='+QuotedStr(e_spk_no.Text)+
        ',spk_t_hr='+QuotedStr(e_spk_t_hr.Text)+
        ',faktur_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',ed_tgl_faktur.Date))+
        ',faktur_no='+QuotedStr(ed_no_faktur.Text)+
        ',spmk_tgl='+QuotedStr(FormatDateTime('yyyy/MM/dd',dtp_spmk.Date))+
        ',spmk_no='+QuotedStr(edt_spmk.Text)+
        ',spmk_t_hr='+QuotedStr(edt_tspmk.Text)+
        ' where no_peng='+
        QuotedStr(ednokwi.Text);
        ExecSQL1(sql1);


        //Simpan  Detail
        sql2 := 'delete from detail_spk'+
        ' where no_peng='+QuotedStr(EdNokwi.Text);
        ExecSQL1(sql2);
        m3 := 'delete SP temp OK';

    //if not(StringGrid1.RowCount=2) then begin
        for i1:=1 to StringGrid1.RowCount-1 do begin
             sql2:='INSERT INTO detail_spk (no_peng,no,nama,jumlah,satuan,hrga_satuan,n_t1,n_disk,n_t2) Values('+
             QuotedStr(EdNokwi.Text)+','+
             QuotedStr(StringGrid1.Cells[1,i1])+','+
             QuotedStr(StringGrid1.Cells[2,i1])+','+
             QuotedStr(StringGrid1.Cells[3,i1])+','+
             QuotedStr(StringGrid1.Cells[4,i1])+','+
             QuotedStr(StringGrid1.Cells[5,i1])+','+
             QuotedStr(StringGrid1.Cells[6,i1])+','+
             QuotedStr(StringGrid1.Cells[7,i1])+','+
             QuotedStr(StringGrid1.Cells[8,i1])+')';
             ExecSQL1(sql2);
              end;
        // end;
       {
       m2 := 'simpan Update OK';
             sql3 :='Update detail_sp_kontr set nama= tcase(nama)'+
       ',satuan= tcase(satuan)' +
       ' where no_peng='+QuotedStr(EdNokwi.Text);
        ExecSQL1(sql3);
       }
       m5 := 'Ubah Nama OK';

         except
        m2 := 'simpan Update gagal';
            raise;
      end;

   end;

   {
    else if PnOperasi.Caption='Hapus Data' then
   begin
      try
      // delete
        Sql2 := 'delete from i_header where no_peng='+
        QuotedStr(ednokwi.Text);
        ExecSQL1(sql2);
        AktifControl(Self,PnInput,False);
        Application.MessageBox('Pengahpusan selesai','peng',MB_OK+MB_ICONINFORMATION);
        AktifControl(Self,PnInput,False);
      except
        Application.MessageBox('Penghapusan gagal','peng',MB_OK+MB_ICONINFORMATION);
        raise;
      end;
   end;
  }
 {
 ShowMessage('Data baru :'+#13+#10+m1
   +#13+#10+'simpan Update :'+#13+#10+m2
   +#13+#10+'Data Hapus Detail:'+#13+#10+m3
   +#13+#10+'Selisih:'+#13+#10+m4
   +#13+#10+'Ubah nama:'+#13+#10+m5
   );
  }

 with CreateMessageDialog('Hari ini tanggal '+FormatDateTime('dd-mm-yyyy',Now)+#13+#10+
 'No Reg :'+#13+#10+ednokwi.Text+' No Faktur '+ed_no_faktur.text +#13+#10+
 'Data baru :'+#13+#10+m1
   +#13+#10+'simpan Update :'+#13+#10+m2
   +#13+#10+'Data Hapus Detail:'+#13+#10+m3
   +#13+#10+'Ubah nama:'+#13+#10+m5,mtInformation,[mbOK]) do
  begin
    try
      begin
        Width := 322;
        Caption := 'Informasi Simpan data';
        Font.Name:= 'Times New Roman';
        Font.Size := 10;
        TButton(FindComponent('OK')).Caption := 'Lanjut hehe...';
        Edit5.Text := ednokwi.Text;
       // Edit6.Text := ed_SPK_No.Text;
       // ed_k1.Text := ednokwi.Text;
       // ed_k2.Text := ednokwi.Text;
        PageControl1.ActivePageIndex:=3;
        //rg_cetak.Controls
        ShowModal;
      end
    finally
      Free;
    end;
  end;
  KosongTex(True);
end;
 

procedure TFspk22_medis.SpeedButton1Click(Sender: TObject);
begin
  {
  Application.CreateForm(Tfrm_icnppn, frm_icnppn);
  frm_icnppn.chk1.checked := true;
  frm_icnppn.chkgrid.checked := false;
  frm_icnppn.ed_hrg.Text := Fsp_medis16.ed_hrg.Text;
  frm_icnppn.chkgrid.Font.Color := clRed;
  frm_icnppn.ShowModal;
  frm_icnppn.Free;
  }
end;

procedure TFspk22_medis.chktempoClick(Sender: TObject);
var
   n_t1,n_disk,n_t2,n_pajak, totalnilai1,totalnilai2,totspj :real;
begin


//khusus tempo
if  chktempo.Checked then
begin
//n_pajak := 0;
  ed_pjk.Color := clRed;
  Label49.Caption := 'Tempo';
  n_t1 :=strtofloat (clearDot(ed_t1.Text));
  //n_disk :=strtofloat (clearDot(ed_disk.Text));
  //n_t2 := (n_t1 - n_disk) / 1.1 ;
  //ed_t2.Text := floattostr(n_t2);
  n_pajak :=  n_t2 * (10/100);
  ed_pjk.Text := floattostr(n_pajak);
  totalnilai2 := n_t2 + n_pajak ;
  //ed_bayar.text := floattostr (totalnilai2);
  //ed_bayar.Color:=clMoneyGreen;

end
else
begin
n_pajak := n_t2 *(10/100);
ed_pjk.Text := floattostr(n_pajak);
totalnilai2 := n_t2 + n_pajak ;
end;

end;

procedure TFspk22_medis.btn5PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_barang_kontrak'; //nama sp
  LsvSetCol('Nama|satuan|harga|',
  '300|60|80|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxxxxxxx'); //Tabel / Query
  FCarisp.LsField.Items.Add('nama');
  FCarisp.LsField.Items.Add('satuan');
  FCarisp.LsField.Items.Add('hrga_satuan');
  FCarisp.ShowModal;
  //FCarisp.CmbField.ItemIndex:=0;
  if nFieldCari[0]<>'' then
  begin
    ed_nama.Text:=nFieldCari[0];
    ed_satuan.Text:=nFieldCari[1];
    ed_hrg.Text:=nFieldCari[2];
    //ed_nama.Color:=clWhite;
    ed_jml.Text := '1';
    ed_jml.SetFocus;
  end;
end;

procedure TFspk22_medis.btn6Click(Sender: TObject);
begin
if Frm_ba_baru =nil then
     Frm_ba_baru:=TFrm_ba_baru.Create(Application);
     Frm_ba_baru.Show;
end;

procedure TFspk22_medis.ed_aPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_agr';
  LsvSetCol('No.id|pro|keg|SUB Keg|nama rekening|KD REK|Dana|Sumber|',
            '140|50|50|90|340|160|140|180|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //Tabel
  FCarisp.LsField.Items.Add('no_a');  //0
  FCarisp.LsField.Items.Add('kd_pro'); //1
  FCarisp.LsField.Items.Add('kd_keg');    //2
  FCarisp.LsField.Items.Add('subkeg');//3
  FCarisp.LsField.Items.Add('rek_nama');//4
  FCarisp.LsField.Items.Add('kode_rekening');//5
  //FCarisp.LsField.Items.Add('u_sub_keg');//6
  FCarisp.LsField.Items.Add('dana');//6
  FCarisp.LsField.Items.Add('sumber_dana');//7
  FCarisp.ShowModal;
  if nFieldCari[0]<>'' then
  begin

    ed_a.Text:=nFieldCari[0];
    ed_pagu.Text:=nFieldCari[6];
    Label11.Caption :=nFieldCari[7];

    ed_u_a.Text:=nFieldCari[1]+
    '.'+ nFieldCari[2] +
    '.' + nFieldCari[3] +
    '.' + nFieldCari[5]+
    '.' + nFieldCari[6]+
   // '.' + nFieldCari[7]+
    '.' + nFieldCari[8];
   end;



end;

procedure TFspk22_medis.ed_aPropertiesChange(Sender: TObject);
var
  ds_cari_a : TMyQuery;
  qtotal    : TMyStoredProc;

  Begin
  try
    ds_cari_a := TMyQuery.Create(nil);
    ds_cari_a.Connection := DmModul.con1;
    ds_cari_a.Active := false;
    ds_cari_a.SQL.Clear;
    ds_cari_a.SQL.Text :='select a.no_a,a.kd_pro,kd_keg,'+
    ' c.sub_keg,a.rek_nama,'+
    ' a.kode_rekening,fRupiah(a.dana) as dana, '+
    ' b.U_keg , c.u_sub_keg, c.sumber_dana '+
    ' from m_rek_2023 a '+
    ' inner join m_keg b on a.kd_keg = b.no_keg '+
    ' inner join sub_keg c on a.sub_keg = c.no_keg '+
    ' where a.no_a like'+QuotedStr('%'+ed_a.Text+'%');
    ds_cari_a.Open;
    //ed_u_a.Text:=ds_cari_a.FieldByName('rek_nama').AsString;
    mmo1.Text :='Pro: '+ds_cari_a.FieldByName('kd_pro').AsString+
    ' Keg: '+ds_cari_a.FieldByName('kd_keg').AsString+' '+
    '('+ds_cari_a.FieldByName('U_keg').AsString+') '+
    ' Sub Keg : '+ds_cari_a.FieldByName('sub_keg').AsString+' '+
    '('+ds_cari_a.FieldByName('u_sub_keg').AsString+') '+
    ' Kode Rek : '+ds_cari_a.FieldByName('kode_rekening').AsString+' '+
    '('+ds_cari_a.FieldByName('rek_nama').AsString+')'+
    //' Sub Kode Rek : '+ds_cari_a.FieldByName('sub_rek').AsString+' '+
    //'('+ds_cari_a.FieldByName('nm_sub_rek').AsString+')'+
    ' Sumber Dana : '+ds_cari_a.FieldByName('sumber_dana').AsString+' '+
    ' Pagu : '+ds_cari_a.FieldByName('dana').AsString+' ';

  finally
    ds_cari_a.Close;
  end;

   qtotal := TMyStoredProc.Create(nil);

  try
    qtotal.Connection := DmModul.con1;
    qtotal.Close;
    qtotal.StoredProcName := 'sp_cari_rekap';
    qtotal.PrepareSQL;
    qtotal.ParamByName('cari').AsString := ed_a.text; //key ba
    qtotal.Execute;

   if qtotal.RecordCount > 0 then
  begin
    Edit1.text :=qtotal.FieldByName('danaku').AsString;
    Edit3.text :=qtotal.FieldByName('total').AsString;
    Edit4.text :=qtotal.FieldByName('sisa').AsString;
   end
  else
    begin
    ShowMessage( 'data kosong / Tidak ADA : ' + ed_a.Text );
    end;

  finally
    qtotal.Close;
    qtotal.Free;
  end;


end;

procedure TFspk22_medis.ed_bayarChange(Sender: TObject);
begin
formatRupiah(ed_bayar);
cxTerbiilang_kwi.Text := hitunguang(clearDot(ed_bayar.Text));
ed_nNego.Text := clearDot(ed_bayar.Text);
end;

procedure TFspk22_medis.ed_paguChange(Sender: TObject);
begin
ed_Tpagu.Text := Spell(clearDot(ed_pagu.Text));
formatRupiah(ed_pagu);
end;

procedure TFspk22_medis.ed_cvPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_cv'; //nama sp
  LsvSetCol('No |nama|alamat|pemilik|npwp|kota|',
  '120|320|220|180|160|140|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxxx');
  FCarisp.LsField.Items.Add('code');
  FCarisp.LsField.Items.Add('nama');
  FCarisp.LsField.Items.Add('alamat');
  FCarisp.LsField.Items.Add('pemilik');
  FCarisp.LsField.Items.Add('npwp');
  FCarisp.LsField.Items.Add('kota');
  FCarisp.ShowModal;
  if nFieldCari[0]<>'' then
  begin
    Ed_cv.Text:=nFieldCari[0];
    Ed_u_cv.Text:=nFieldCari[1];
    //KosongTex(False);
    //AktifControl(Self,PnInput,False);
    //ednokwi.Enabled:=True;
    //Ed_cv.Color:=clWhite;
    Ed_cv.SetFocus;
    end;
end;

procedure TFspk22_medis.ed_cvPropertiesChange(Sender: TObject);
var
  ds_cari_cv : TMyQuery;
  Begin
  try
    ds_cari_cv := TMyQuery.Create(nil);
    ds_cari_cv.Connection := DmModul.con1;
    ds_cari_cv.Active := false;
    ds_cari_cv.SQL.Clear;
    ds_cari_cv.SQL.Text :='Select novendor'+
    ' ,NamaPerusahaan,rekening_bank,npwp,Pemilik,BANK '+
    ' FROM m_perusahaan where novendor like '+
    QuotedStr('%'+ed_cv.Text+'%');
    ds_cari_cv.Open;
    Ed_u_cv.Text:=ds_cari_cv.FieldByName('NamaPerusahaan').AsString;
  finally
    ds_cari_cv.Close;
  end;

end;

procedure TFspk22_medis.btnBtnUbahClick(Sender: TObject);
begin
 //AktifControl(Self,PnInput, False);
 //AktifControl(Self,Pn_list, False);
 PnOperasi.Caption:='Ubah Data';
 ednokwi.Enabled:=True;
 ednokwi.Color:=clWhite;
 btncariClick(Sender);

 //btncrsp.Enabled:=True;
 //btncrspClick(Sender);
 //ednokwi.SetFocus;
 //tambah:=False;
end;

procedure TFspk22_medis.btncariClick(Sender: TObject);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_spk';
  LsvSetCol('No|Nama PBF|tgl. Faktur|faktur|total|Tgl. SPK|No. SPK|',
  '130|280|100|230|140|100|150|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('no_peng');
  FCarisp.LsField.Items.Add('namaperusahaan');
  FCarisp.LsField.Items.Add('faktur_tgl');
  FCarisp.LsField.Items.Add('faktur_no');
  FCarisp.LsField.Items.Add('kwitansi');
  FCarisp.LsField.Items.Add('spk_tgl');
  FCarisp.LsField.Items.Add('Spk_no');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    EdNokwi.Text:=nFieldCari[0];
    //Memo1.Text:=nFieldCari[1];
    EdNokwi.Color:=clWhite;
    EdNokwi.SetFocus;
    PnOperasi.Caption:='Ubah Data';
  end;
end;

procedure TFspk22_medis.btn2Click(Sender: TObject);
begin
 Aturgrid;
  ed_t1.Text:='0';
  //ed_disk.Text:='0';
  //ed_t2.Text:='0';
  ed_Pjk.Text:='0';

  ed_t1.Color:=clSkyBlue;
  //ed_disk.Color:=clSkyBlue;
  ed_pjk.Color:=clSkyBlue;
  //ed_bayar.Color:=clred;
  ed_tgl_jt.Color:=clred;

end;

procedure TFspk22_medis.StringGrid1GetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
begin
isFloat := Acol in [3,5,6,7,8];
case ACol of
  3: Floatformat :='%.0n';
  5: Floatformat :='%.0n';
  6: Floatformat :='%.0n';
  7: Floatformat :='%.0n';
  8: Floatformat :='%.0n';
end;

end;


procedure TFspk22_medis.Edit4Change(Sender: TObject);
begin
formatRupiah(Edit4);
Edit4.Font.Size := 14;
if edit4.Text <= '0' then
  edit4.Color := clred
  else
  edit4.Color := clMoneyGreen;
end;

procedure TFspk22_medis.ednokwiChange(Sender: TObject);
begin
Edkodetransaksi.Caption:= ednokwi.Text;
end;

procedure TFspk22_medis.btn5Click(Sender: TObject);
begin
StringGrid1.SaveFixedCells := False;
StringGrid1.SaveToCSV('detail_sp.csv');
ShowMessage('sudah di simpan cvs');
end;

procedure TFspk22_medis.ed_namaKeyPress(Sender: TObject; var Key: Char);
begin
if(Key=#13)then
	begin
    try
    Caribrg(ed_nama.Text);
    pnl4.Visible:=True;
    lv1.SetFocus;
    finally
    //cxLookupbrg.SetFocus;
    //cxLookupbrg.OnClick(Sender);
    end;
	end;
end;

procedure TFspk22_medis.lv1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=40)then  // panah bawah
      lv1.SetFocus;
  if (Key=13)then  //enter
      lv1.SetFocus;
  if (Key = 27)then //tombol END 35 , esc 27
    begin
      pnl4.Visible:=false;
      ed_nama.SetFocus;
      //edjml.SetFocus;
    end;
end;

procedure TFspk22_medis.lv1KeyPress(Sender: TObject; var Key: Char);
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
     ed_jml.SetFocus;
     pnl4.Visible:=false;
	end;
		except
	end;
end;

procedure TFspk22_medis.StringGrid1DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  Application.CreateForm(Tfrm_ganti_brg_spk_medis, frm_ganti_brg_spk_medis);
     //AktifControl(Self,Panel1, True);
     frm_ganti_brg_spk_medis.chkgrid.checked := True;
    // frm_ganti_brg.CheckBox1.checked := True;
     frm_ganti_brg_spk_medis.lblnama.Caption := Fspk22_medis.StringGrid1.Cells[1,arow];
     frm_ganti_brg_spk_medis.ed_nama.Text := Fspk22_medis.StringGrid1.Cells[2,arow];
     frm_ganti_brg_spk_medis.ed_jml.Text := clearDot(Fspk22_medis.StringGrid1.Cells[3,arow]);
     frm_ganti_brg_spk_medis.ed_satuan.Text := Fspk22_medis.StringGrid1.Cells[4,arow];
     frm_ganti_brg_spk_medis.ed_hrg.Text := clearDot(Fspk22_medis.StringGrid1.Cells[5,arow]);
     frm_ganti_brg_spk_medis.edT1disk.Text := clearDot(Fspk22_medis.StringGrid1.Cells[7,arow]);
     //frm_ganti_brg.lbl1.Caption :=clearDot(Fsp_medis16.StringGrid1.Cells[7,arow]);
     frm_ganti_brg_spk_medis.ShowModal;
//     frm_ganti_brg.CheckBox1.Checked := True;
     frm_ganti_brg_spk_medis.Free;

      if ed_nama.text = '' then exit else begin
          StringGrid1.Cells[2,arow]:=ed_nama.Text; //nama
          StringGrid1.Cells[3,arow]:=ed_jml.Text; //jml
          StringGrid1.Cells[4,arow]:=ed_satuan.Text; //satuan
          StringGrid1.Cells[5,arow]:=ed_hrg.Text; //harga
          StringGrid1.Cells[7,arow]:=ed_Tdisk.Text; //harga
          Total;
        end;
        jml:=StrToFloat(StringGrid1.Cells[3,arow]);
        harga:=StrToFloat(StringGrid1.Cells[5,arow]);
        total_harga:=jml*harga;
        StringGrid1.Cells[6,arow]:=FloatToStr(total_harga);
        ddisk := StrToFloat(StringGrid1.Cells[7,arow]);
        total2 := total_harga - ddisk;
        StringGrid1.Cells[8,arow]:=FloatToStr(total2);
        Total;

        //kosong data
   ed_nama.Text:='';
   ed_jml.Text:='0';
   ed_satuan.Text:='';
   ed_hrg.Text:='0';
   //Fsp_medis16.CheckBox1.Checked := True;
   ed_Tdisk.Text:='0';

end;

procedure TFspk22_medis.SpeedButton3Click(Sender: TObject);
var
  springkasan: TMyStoredProc;
begin
  if MessageDlg('Data dengan'+#13+#10+EdNokwi.Text+#13+#10+
        'akan di Cetak excel, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
    springkasan:= TMyStoredProc.Create(nil);
    springkasan.Connection := DmModul.con1;
  try
    Screen.cursor := crsqlWait;
    springkasan.Close;
    springkasan.StoredProcName := 'SP_ringkasankontrak';
    springkasan.PrepareSQL;
    springkasan.ParamByName('cari').AsString := Edit5.Text;
    springkasan.Execute;
    Screen.cursor := crDefault;
    if springkasan.Eof then exit;
      exlrprt1.template :=ExtractFilePath(Application.ExeName) + '\xls\'+'DB_Ringkasan_Kontrak22.xlsx';
      exlrprt1.Dataset:=springkasan;
      //sheet yg dipilih
      exlrprt1.TemplSheet :='db_ringkasan';
      exlrprt1.Show();
  finally
    springkasan.Close;
  end;

  end;
end;

procedure TFspk22_medis.ed_jmlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=13)then

   BEGIN
    HITUNG;
    btn_tambahClick(Sender);
    ed_nama.SetFocus;

end;
end;

procedure TFspk22_medis.Edit1Change(Sender: TObject);
begin
formatRupiah(Edit1);
Edit1.Font.Size := 14;
end;

procedure TFspk22_medis.Edit3Change(Sender: TObject);
begin
formatRupiah(Edit3);
Edit3.Font.Size := 14;
end;

procedure TFspk22_medis.cxcariPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_rekening';
  LsvSetCol('No|Nama|',
  '90|250|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('kd_keu');
  FCarisp.LsField.Items.Add('rek_nama');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    cxcari.Text:=nFieldCari[0];
    cxm1.Text:=nFieldCari[1];
    cxcari.SetFocus;
  end;
end;

procedure TFspk22_medis.btnexportdpaClick(Sender: TObject);
var i,I2,r , no_urut,barish : Integer;
   q1 : TMyStoredProc;
   q2 : TMyQuery;
   kd,al : string;

begin
   if trim(cxcari.Text) ='' then
      begin
         ShowMessage('Kode Rekening Blm dipilih Kosong');
         cxcari.Style.Color := clRed ;
         cxcari.SetFocus;
      //  Result:=False;
         exit
      end;
      
 no_urut := 1;

 //tglk3 := FormatDateTime('dddd , dd mmmm yyyy',dt1.Date);
 //tglk1 := FormatDateTime('yyyy-mm-dd',dt1.Date);
 //tglk2 := FormatDateTime('yyyy-mm-dd',dt2.Date);
 q1 := TMyStoredProc.Create(nil);

 Screen.Cursor := crHourGlass;

   {
  with MeeExcel do begin
    Clear;
    FileName := 'Lap_Detail_KONT_2017'+ FormatDatetime('yyyymmdd_hhss',now)+'.xlsx';    r:=1;
     //texts
    CellFormat.Alignment.HorizontalAlignment := -4108;
    CellFormat.Font.Color := 1;
    CellFormat.Border.Left.Color := -4105;
    CellFormat.Border.Left.LineStyle := 1;
    CellFormat.Border.Top.Color := -4105;
    CellFormat.Border.Top.LineStyle := 1;
    CellFormat.Border.Right.Color := -4105;
    CellFormat.Border.Right.LineStyle := 1;
    CellFormat.Border.Bottom.Color := -4105;
    CellFormat.Border.Bottom.LineStyle := 1;
    //data report
      q1.Connection := DmModul.con1;
      q1.Close;
      q1.StoredProcName := 'SP_LAP_XLS_MEE_KONT'; //--sp
      q1.PrepareSQL;
      q1.ParamByName('cari').AsString := cxcari.Text;
      q1.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp_awal.date); //key ba
      q1.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key ba
      q1.Execute;
      //q1.ParamByName('dtTglAwal').AsString := tglk1; //key ba
      //q1.ParamByName('dtTglAkhir').AsString := tglk2; //key ba

	  //q1.SQL.Text :='select * from i_pjbt';
	  //q2.SQL.Text :='select * from t_detail_penjualan where no_transaksi= ' +
      //QuotedStr(q1.fieldbyname ('no_transaksi').asstring)+'';
	  //q1.open;

      //--myquery Header

   if q1.Eof then
    begin
    ShowMessage('data Header tidak ada');
    Screen.Cursor := crDefault;
    exit;
    end;

    //--- data Detail
    q2 := TMyQuery.Create(nil);
    q2.Connection := DmModul.con1;
    q2.Active := false;

    //buat excel
    AddText(r, 1, 1, 1, 'No.');
    AddText(r, 2, 1, 1, 'Kode Rekening');
    AddText(r, 3, 1, 1, 'No SP');
    AddText(r, 4, 1, 1, 'Tanggal SP');
    AddText(r, 5, 1, 1, 'Tgl. BA');
    AddText(r, 6, 1, 1, 'No. BA ');
    AddText(r, 7, 1, 1, 'Jenis ');
    AddText(r, 8, 1, 1, 'Nama CV');
    AddText(r, 9, 1, 1, 'Nama');
    AddText(r, 10, 1, 1, 'Jumlah');
    AddText(r, 11, 1, 1, 'Satuan');
    AddText(r, 12, 1, 1, 'Nilai'); Inc(r);

   //data header
  // for i:=1 to 7 do AddText(r, i, 1, 1, IntToStr(i)); Inc(r);
     
      while not q1.Eof do begin
	//sql detail myquery
      q2.SQL.Clear;
      q2.SQL.Text :='select * from detail_sp_kontr where no_peng= ' +
      QuotedStr(q1.fieldbyname ('no_peng').asstring)+'';
      q2.Open;

    if q2.Eof then
    begin
    ShowMessage('data detail tidak ada');
    exit;
    end;

   
   //no_urut-1+
    //mulai data buat
    CellFormat.Alignment.HorizontalAlignment := 1;
    AddText(r, 1, 1, 1,IntToStr(no_urut)); inc(no_urut);
    AddText(r, 2, 1, 1,''+q1.FieldByName('kode_rekening').AsString);
    CellFormat.NumberFormat := 'General';
    AddText(r, 3, 1, 1,'027/'+ q1.FieldByName('SPK_No').AsString+'/102.6/2017');
    AddText(r, 4, 1, 1, q1.FieldByName('SPK_Tgl').AsString);
    AddText(r, 5, 1, 1, q1.FieldByName('Tgl_ba').AsString);
        CellFormat.NumberFormat := 'General';
    AddText(r, 6, 1, 1, '027/'+q1.FieldByName('no_penerimaan').AsString+'/P/102.6/2017');
    AddText(r, 7, 1, 1, q1.FieldByName('U_jenis').AsString);
    CellFormat.NumberFormat := 'General';
    AddText(r, 8, 1, 1,''+ q1.FieldByName('nmcv').AsString);
    CellFormat.NumberFormat := '#,##0.00';
    AddText(r, 12, 1, 1, q1.FieldByName('nilai').AsString);
    inc(r);


    //inc(r);
    //barish := 0;
    while not q2.Eof do begin
    //for no_urut := 1 to q1.RecordCount do begin
    //q2.Next;
    CellFormat.Alignment.HorizontalAlignment := -4108;
    CellFormat.NumberFormat := 'General';
    CellFormat.Alignment.HorizontalAlignment := 1;
    AddText(r, 9, 1, 1, q2.FieldByName('nama').AsString);
    //CellFormat.NumberFormat := '#,##0.00';
    AddText(r, 10, 1, 1, q2.FieldByName('jumlah').AsCurrency );
    AddText(r, 11, 1, 1, q2.FieldByName('satuan').AsString);
    q2.Next;
    Inc(r);
    //end;
      end;
    q1.Next;
    q2.Close;
      end;
    q1.Close;
    //end;

    q1.Free;
    q2.Free;
    //columns
    SetColumn(1, 5);
    SetColumn(2, 12);
    SetColumn(3, 20);
    SetColumn(4, 10);
    SetColumn(5, 10);
    SetColumn(6, 25);
    SetColumn(7, 35);
    SetColumn(8, 35);
    SetColumn(9, 50);
    SetColumn(10, 10);
    SetColumn(11, 10);
    SetColumn(12, 15);

    //pictures
    //pagesetup
    PageSetup.LeftMargin := 75;
    PageSetup.TopMargin := 54;
    PageSetup.RightMargin := 50.4;
    PageSetup.BottomMargin := 54;
    PageSetup.HeaderMargin := 21.6;
    PageSetup.FooterMargin := 21.6;

    //create
    if Execute then Open(Handle);
  end;
  Screen.Cursor := crDefault;
  }
end;

procedure TFspk22_medis.btn7Click(Sender: TObject);
begin
Close;
end;

procedure TFspk22_medis.dtgl_ujiChange(Sender: TObject);
begin
//edt_tba_uji.Text:=Capital(Spell(FormatDateTime('d',dtgl_uji.DateTime)));
end;

procedure TFspk22_medis.BitBtn5Click(Sender: TObject);
begin
if Frm_listSPK16 =nil then
     Frm_listSPK16:=TFrm_listSPK16.Create(Application);
     Frm_listSPK16.Show;
     Frm_listSPK16.ed_no.Text:=ednokwi.text;
     Frm_listSPK16.TampilData_2;
end;

procedure TFspk22_medis.BitBtn10Click(Sender: TObject);
begin
M_l.Text := mp.Text;
end;

procedure TFspk22_medis.ed_npenwChange(Sender: TObject);
begin
ed_TPewn.Text := hitunguang(clearDot(ed_npenw.Text));
formatRupiah(ed_npenw);
//RightEdit(ed_npenw);


end;

procedure TFspk22_medis.ed_nNegoChange(Sender: TObject);
begin
ED_Tnego.Text := hitunguang(clearDot(ed_nNego.Text));
formatRupiah(ed_nNego);
//RightEdit(ed_nNego);
end;


procedure TFspk22_medis.tgl_bayarClick(Sender: TObject);
begin
if tgl_bayar.Checked = true then
begin
    ShowMessage('Sudah Bayar');
    tgl_bayar.Color := $00FF00;
end
  else
    begin
    ShowMessage('Belum Bayar');
    tgl_bayar.Color := $0000FF;
    end;
end;

procedure TFspk22_medis.tgl_ba_ek_tglChange(Sender: TObject);
begin
e_ba_ek_t_hr.Text := Capital(hitunguang(FormatDateTime('d',tgl_ba_ek_tgl.DateTime)));
end;
{
procedure TFspk19.tgl_penj_p_tglChange(Sender: TObject);
begin
  e_penj_p_t_hr.Text := Capital(Spell(FormatDateTime('d',tgl_penj_p_tgl.DateTime)));
end;

procedure TFspk19.tgl_ba_pem_perw_tglChange(Sender: TObject);
begin
e_ba_pem_perw_t_hr.Text := Capital(Spell(FormatDateTime('d',tgl_ba_pem_perw_tgl.DateTime)));
end;

procedure TFspk19.tgl_ba_kla_nego_tglChange(Sender: TObject);
begin
e_ba_kla_nego_t_hr.Text := Capital(Spell(FormatDateTime('d',tgl_ba_kla_nego_tgl.DateTime)));
end;

procedure TFspk19.tgl_ba_h_pl_tglChange(Sender: TObject);
begin
e_ba_h_pl_t_hr.Text := Capital(Spell(FormatDateTime('d',tgl_ba_h_pl_tgl.DateTime)));
end;

procedure TFspk19.tgl_spk_tglChange(Sender: TObject);
begin
e_spk_t_hr.Text := Capital(Spell(FormatDateTime('d',tgl_spk_tgl.DateTime)));
end;

procedure TFspk19.tgl_ba_p_hasil_tglChange(Sender: TObject);
begin
e_ba_p_hasil_t_hr.Text := Capital(Spell(FormatDateTime('d',tgl_ba_p_hasil_tgl.DateTime)));
end;

procedure TFspk19.tgl_ba_peny_p_tglChange(Sender: TObject);
begin
e_ba_peny_p_t_hr.Text := Capital(Spell(FormatDateTime('d',tgl_ba_peny_p_tgl.DateTime)));
end;
  }
procedure TFspk22_medis.BitBtn14Click(Sender: TObject);
begin
     cariid := ednokwi.Text;
     datafilexls:=apDirxls+'DB_XLS22.xls';
     Screen.cursor := crsqlWait;
     buatxls_list(datafilexls,'sp_spk_cetak',cariid,'db');
     Screen.cursor := crDefault;
end;

procedure TFspk22_medis.tgl_penj_p_tglChange(Sender: TObject);
begin
    e_penj_p_t_hr.Text := Capital(hitunguang(FormatDateTime('d',tgl_penj_p_tgl.DateTime)));
end;

procedure TFspk22_medis.tgl_ba_pem_perw_tglChange(Sender: TObject);
begin
   e_ba_pem_perw_t_hr.Text := Capital(hitunguang(FormatDateTime('d',tgl_ba_pem_perw_tgl.DateTime)));
end;

procedure TFspk22_medis.tgl_ba_kla_nego_tglChange(Sender: TObject);
begin
   e_ba_kla_nego_t_hr.Text := Capital(hitunguang(FormatDateTime('d',tgl_ba_kla_nego_tgl.DateTime)));
end;

procedure TFspk22_medis.tgl_ba_h_pl_tglChange(Sender: TObject);
begin
   e_ba_h_pl_t_hr.Text := Capital(hitunguang(FormatDateTime('d',tgl_ba_h_pl_tgl.DateTime)));
end;

procedure TFspk22_medis.tgl_spk_tglChange(Sender: TObject);
begin
   e_spk_t_hr.Text := Capital(hitunguang(FormatDateTime('d',tgl_spk_tgl.DateTime)));
end;

procedure TFspk22_medis.BitBtn2Click(Sender: TObject);
begin
Tgl_sekarang(True);
end;

procedure TFspk22_medis.ed_t2Change(Sender: TObject);
var
   n_t1,n_disk,n_t2,n_pajak,ppn,n_pengiriman, totalnilai1,totalnilai2,totspj :real;
begin
formatRupiah(ed_t2);
n_t1 :=strtofloat (clearDot(ed_t1.Text));
n_t2 :=strtofloat (clearDot(ed_t2.Text));
ppn :=strtofloat (clearDot(ed_perpjk.Text));
//t2
ed_t2.Color:=clMoneyGreen;

if  chk2.Checked then
begin
n_pajak := 0;
ed_pjk.Color := clRed;
Label49.Caption := 'Non Ppn';
Label49.Color := clRed;
ed_pjk.Text := floattostr(n_pajak);
totalnilai2 := n_t2 + n_pajak ;
end
else
begin
//n_pajak := n_t2 *(10/100);
n_pajak := n_t2 *(ppn/100);
ed_pjk.Text := floattostr(n_pajak);
totalnilai2 := n_t2 + n_pajak ;
end;

if  chk1.Checked then
begin
n_pengiriman := strtofloat(clearDot(edtpengiriman.Text));
edtpengiriman.Color := clGreen;
lbl8.Caption := 'Ada Biaya Pengiriman';
totalnilai2 := n_t2 + n_pengiriman ;
end
else
begin
edtpengiriman.Color := clRed;
end;


ed_bayar.text := floattostr (totalnilai2);
ed_bayar.Color:=clMoneyGreen;
totspj := n_t1 + n_pajak ;
//ed_spj.Text := floattostr(totspj);
//ed_spj.Color:=clMoneyGreen;
//formatRupiah(ed_spj);
end;

procedure TFspk22_medis.ed_hpsChange(Sender: TObject);
begin
Ed_thps.Text := hitunguang(clearDot(ed_hps.Text));
formatRupiah(ed_hps);
RightEdit(ed_hps);
end;

procedure TFspk22_medis.dtp_spmkChange(Sender: TObject);
begin
edt_tspmk.Text := Capital(hitunguang(FormatDateTime('d',dtp_spmk.DateTime)));
end;

procedure TFspk22_medis.dtgl_eva_perwChange(Sender: TObject);
begin
edt_hr_eva_perw.Text := Capital(hitunguang(FormatDateTime('d',dtgl_eva_perw.DateTime)));
end;

procedure TFspk22_medis.ed_perpjkChange(Sender: TObject);
begin
ed_t2Change(Sender);
end;

procedure TFspk22_medis.BitBtn8Click(Sender: TObject);
var i,I2,r , no_urut,barish : Integer;
   q1 : TMyStoredProc;
   q2 : TMyQuery;
   kd,al : string;
  begin
if MessageDlg('Data dengan'+#13+#10+EdNokwi.Text+#13+#10+
        'akan di Cetak excel, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin

    q1:= TMyStoredProc.Create(nil);
    q1.Connection := DmModul.con1;
  try
    Screen.cursor := crsqlWait;
    q1.Close;
    q1.StoredProcName := 'sp_export_detail_spk';
    q1.PrepareSQL;
    q1.ParamByName('cari').AsString := EdNokwi.Text;
    q1.Execute;
    Screen.cursor := crDefault;
    if q1.Eof then exit;
      exlrprt1.template :=ExtractFilePath(Application.ExeName) + '\xls\'+'brg_detail_spk22.xlsx';
      exlrprt1.Dataset:=q1;
      //sheet yg dipilih
      exlrprt1.TemplSheet :='detail_spk_des';
      exlrprt1.Show();
  finally
    q1.Close;
  end;

end;

end;

end.
