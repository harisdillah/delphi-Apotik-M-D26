unit UDataBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSmoothMenu, ExtCtrls, ComCtrls, StdCtrls, AdvStyleIF, jpeg,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, OleCtrls, SHDocVw, cxLabel, AdvSmoothPanel, Grids,
  DBGrids, CRGrid, Buttons,nuest, DB, MemDS, DBAccess, MyAccess;

type
  TFrmDataBarang = class(TForm)
    AdvSmoothMenu1: TAdvSmoothMenu;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Image2: TImage;
    Label7: TLabel;
    Image3: TImage;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Edit3: TEdit;
    Edit2: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Memo3: TMemo;
    Label13: TLabel;
    Label12: TLabel;
    Button1: TButton;
    Label14: TLabel;
    EKodeBrg: TEdit;
    CheckBox1: TCheckBox;
    Label15: TLabel;
    ENamaBarang: TEdit;
    cbb_satuan: TComboBox;
    cxLabel3: TcxLabel;
    Label16: TLabel;
    EBarcode: TEdit;
    cxLabel1: TcxLabel;
    dtp_ed: TDateTimePicker;
    Label17: TLabel;
    eNo_rak: TEdit;
    ehrgbeli: TEdit;
    Label18: TLabel;
    ehrgjual: TEdit;
    Label19: TLabel;
    wb2: TWebBrowser;
    AdvSmoothPanel1: TAdvSmoothPanel;
    MyQuery1: TMyQuery;
    ds1: TMyDataSource;
    dsBarang: TMyDataSource;
    Qcari: TMyQuery;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothMenu1ItemClick(Sender: TObject; ItemIndex: Integer);
    procedure EdCarinamaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDataBarang: TFrmDataBarang;

implementation

uses unMenu, UF_setting,UnModul,UnCarisp,UAwalTahun,UBarangAktif,UImportMasterbarang;

{$R *.dfm}

procedure TFrmDataBarang.AdvSmoothMenu1ItemClick(Sender: TObject; ItemIndex: Integer);
begin
  PageControl1.ActivePageIndex := ItemIndex;
end;

procedure TFrmDataBarang.BitBtn3Click(Sender: TObject);
begin
cari(MyQuery1,'select * from tbl_dataobat WHERE nm_obat like '+
QuotedStr('%'+EdCarinama.Text+'%')+
' OR barcode like '+ QuotedStr('%'+EdCarinama.Text+'%')+
' ORDER BY nm_obat');

//cari(MyQuery1,'select * from m_barang WHERE gudang = '+
//QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
//' AND nama_barang like '+ QuotedStr('%'+Edit5.Text+'%')+
//' OR  kode_brg like '+ QuotedStr('%'+Edit5.Text+'%' + ' ORDER BY nama_barang'));

CRDBGrid1.Columns.Clear;
DBGridAddColumn(CRDBGrid1,'kd_obat','Kode',150,1);
DBGridAddColumn(CRDBGrid1,'nm_obat','Nama',280,1);
DBGridAddColumn(CRDBGrid1,'sat_obat','satuan',70,1);
DBGridAddColumn(CRDBGrid1,'exp_obat','Tgl. ED',60,2);
DBGridAddColumn(CRDBGrid1,'hrgbeli_obat','@Hrg Beli',80,3);
DBGridAddColumn(CRDBGrid1,'hrg_obat','@Hrg Jual',80,3);
end;

procedure TFrmDataBarang.ComboBox1Change(Sender: TObject);
var
  s: TTMSStyle;
begin
s := tsWindows8;
  case ComboBox1.ItemIndex of
    0: s := tsOffice2003Blue;
    1: s := tsOffice2003Silver;
    2: s := tsOffice2003Olive;
    3: s := tsOffice2003Classic;
    4: s := tsOffice2007Luna;
    5: s := tsOffice2007Obsidian;
    6: s := tsOffice2007Silver;
    7: s := tsOffice2010Blue;
    8: s := tsOffice2010Silver;
    9: s := tsOffice2010Black;
    10: s := tsWindowsXP;
    11: s := tsWhidbey;
    12: s := tsWindowsVista;
    13: s := tsWindows7;
    14: s := tsTerminal;
    15: s := tsWindows8;
  end;
  AdvSmoothMenu1.SetComponentStyle(s);
end;

procedure TFrmDataBarang.EdCarinamaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
    begin
    BitBtn3Click(Sender);
    end;
end;

procedure TFrmDataBarang.FormCreate(Sender: TObject);
begin
  DoubleBuffered := true;
  ComboBox1.ItemIndex := 7;
  AdvSmoothMenu1.SetComponentStyle(tsWindows8);
end;


end.
