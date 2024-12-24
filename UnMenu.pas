unit UnMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ExtCtrls, jpeg,axCtrls,
  DB, ADODB, Buttons, StdCtrls, DBCtrls, DADump, MyDump, DAScript, MyScript,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPC,  dxNavBarCollns,
  cxClasses, dxNavBarBase, dxNavBar, cxStyles, dxNavBarStyles,
  AdvShapeButton, AdvPageControl, dxSkinsdxBarPainter, dxBar, dxRibbon,
  XPMan, ImgList, dxSkinsdxStatusBarPainter, dxStatusBar, cxButtons, MemDS,
  DBAccess, MyAccess,uglobal,IniFiles,ShellAPI, cxSplitter, AdvMenus,
  dxSkinOffice2007Silver,AdvStyleIF, AdvToolBar, dxBarBuiltInMenu, cxImageList,
  dxBarApplicationMenu, System.ImageList;

type
  TFMenu = class(TForm)
    dlgOpen1: TOpenDialog;
    tmr1: TTimer;
    dlgSave1: TSaveDialog;
    MyDump1: TMyDump;
    myscrpt1: TMyScript;
    cxlkndflcntrlr1: TcxLookAndFeelController;
    cxStyleRepository1: TcxStyleRepository;
    Lkode: TAdvShapeButton;
    Mytrans: TMyDump;
    btnjam1: TAdvShapeButton;
    labelku: TAdvShapeButton;
    il1: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton5: TdxBarLargeButton;
    dxbrbtn1: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxbrlrgbtn1: TdxBarLargeButton;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtn2: TdxBarLargeButton;
    dxbrlrgbtn3: TdxBarLargeButton;
    dxbrManager_tool: TdxBar;
    dxbrlrgbtn4: TdxBarLargeButton;
    dxbrlrgbtn5: TdxBarLargeButton;
    dxbrlrgbtn6: TdxBarLargeButton;
    dxbrlrgbtn7: TdxBarLargeButton;
    dxbrlrgbtn8: TdxBarLargeButton;
    dxbrsbtm1: TdxBarSubItem;
    dxbrbtn2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxbrbtn3: TdxBarButton;
    dxbrlrgbtn9: TdxBarLargeButton;
    dxbrlrgbtn10: TdxBarLargeButton;
    dxbrlrgbtn11: TdxBarLargeButton;
    dxbrsbtm2: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxbrlrgbtn12: TdxBarLargeButton;
    dxbTutupBuku: TdxBarSubItem;
    dxbTutupBuku1: TdxBarLargeButton;
    btn_jabatan1: TdxBarLargeButton;
    dxbrsbtm3: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    btn_jabatan2: TdxBarLargeButton;
    Label3: TLabel;
    Label4: TLabel;
    LLokasi: TAdvShapeButton;
    btn_setting: TdxBarLargeButton;
    dxbrManager1Bar2: TdxBar;
    dxbrlrgbtn13: TdxBarLargeButton;
    cxpgcntrl_proses: TcxPageControl;
    xpmnfst1: TXPManifest;
    iltolbar: TImageList;
    Timer1: TTimer;
    cxtbsht1: TcxTabSheet;
    dxStatusBar1: TdxStatusBar;
    img1: TImage;
    dlgOpen2: TOpenDialog;
    cxmglst1: TcxImageList;
    Mainmenu1: TAdvMainMenu;
    file2: TMenuItem;
    MnLog: TMenuItem;
    mn_Keluar: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    x11: TMenuItem;
    x21: TMenuItem;
    BASerahTerima1: TMenuItem;
    ool1: TMenuItem;
    backup1: TMenuItem;
    MenuItem4: TMenuItem;
    msagr: TMenuItem;
    Importsp1: TMenuItem;
    tranfer1: TMenuItem;
    help1: TMenuItem;
    Versi1: TMenuItem;
    master1: TMenuItem;
    Masuk1: TMenuItem;
    stok1: TMenuItem;
    Barang1: TMenuItem;
    img2: TImage;
    mn_peg: TMenuItem;
    Penjualankasir1: TMenuItem;
    Pemesanan1: TMenuItem;
    mncv: TMenuItem;
    Dokter1: TMenuItem;
    PenerimaanResep1: TMenuItem;
    Kasir1: TMenuItem;
    ReturPenjualan1: TMenuItem;
    DaftarProduk1: TMenuItem;
    STOKOPNAME1: TMenuItem;
    FakturPembelian1: TMenuItem;
    ReturBeli1: TMenuItem;
    RAK1: TMenuItem;
    SetupPrinter1: TMenuItem;
    mnlaporan: TMenuItem;
    Konsinyasi1: TMenuItem;
    Operasional1: TMenuItem;
    Konsiyansi1: TMenuItem;
    ReturKonsiyansi1: TMenuItem;
    procedure MnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmr1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure kelura1Click(Sender: TObject);
    procedure keluar1Click(Sender: TObject);
    procedure img1DblClick(Sender: TObject);
    procedure Versi1Click(Sender: TObject);
    procedure mn_KeluarClick(Sender: TObject);
    procedure backup1Click(Sender: TObject);
    procedure MnLogClick(Sender: TObject);
    procedure tranfer1Click(Sender: TObject);
    procedure Importsp1Click(Sender: TObject);
    procedure msagrClick(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure stok1Click(Sender: TObject);
    procedure Pemesanan1Click(Sender: TObject);
    procedure mncvClick(Sender: TObject);
    procedure mn_pegClick(Sender: TObject);
    procedure FakturPembelian1Click(Sender: TObject);
    procedure DaftarProduk1Click(Sender: TObject);
    procedure STOKOPNAME1Click(Sender: TObject);
    procedure Dokter1Click(Sender: TObject);
    procedure Kasir1Click(Sender: TObject);
    procedure SetupPrinter1Click(Sender: TObject);
    procedure mnlaporanClick(Sender: TObject);
    procedure PenerimaanResep1Click(Sender: TObject);
    procedure Operasional1Click(Sender: TObject);
    procedure x11Click(Sender: TObject);
    procedure ReturBeli1Click(Sender: TObject);
    procedure Konsiyansi1Click(Sender: TObject);
    procedure ReturPenjualan1Click(Sender: TObject);
    procedure ReturKonsiyansi1Click(Sender: TObject);

//    procedure Image2DblClick(Sender: TObject);
  private
    { Private declarations }
//    procedure convertobmp(filename:TFileName);
  public
    { Public declarations }
//    procedure kodeEnter(Sender: TObject);
 //   procedure kodeExit(Sender: TObject);
 function IsFormOpen(const FormName : string): Boolean;
 procedure MenuNonAktif;

//  procedure MenuAktif;
//  procedure MenuNonAktif;
  end;

var
  FMenu: TFMenu;
  f : TIniFile;
  user:string;
  i:integer;
  Host, IP, Err: string;
	fileku,dir : string;
	trs : Boolean;


implementation

uses UnModul,uVariabel,uconfig,uMBarang24,
Un_settingDB,UCekVersiAplikasi,uLogin,UnPesanan,unMastersuplier,UnPembelianBrg,unMasterPegawai,
uMasterDokter,Unpenjualan,uSetupPrint,Ulaporan,UnPenerimaanResep,
UnKonsiyansi,UnOP,UBayar,UnReturBeli,UnReturJual,UnOpname,UnReturKonsiyansi;

{$R *.dfm}

function TFMenu.IsFormOpen(const FormName: string): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := Screen.FormCount - 1 DownTo 0 do
    if (Screen.Forms[i].Name = FormName) then
    begin
      Result := True;
      Break;
    end;
end;

procedure TFMenu.Kasir1Click(Sender: TObject);
var
   aForm : tFrmPenjualan; // FrmPenjualan
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tFrmPenjualan') then
    begin
      //Create a new tab sheet
      tabSheet[6] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[6].PageControl := cxpgcntrl_proses;
      tabSheet[6].Caption := 'Kasir Penjualan';
      tabSheet[6].Parent := cxpgcntrl_proses;
      tabSheet[6].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[6];
      //create a form
      aForm := tFrmPenjualan.Create(tabSheet[6]) ;
      aForm.Parent := tabSheet[6];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[6];
    end;
  end;

end;

{}
 {
procedure Tfrmmain.kodeEnter(Sender: TObject);
begin

   if sender is tedit then
   begin
     if (sender as tedit).tag=100 then
     begin
       (sender as tedit).text:='';
     end;
    (sender as tedit).Color:=$00E8A200 ;
    (sender as tedit).font.Color:=clwhite ;
    (sender as tedit).Font.Style:=[fsbold];
   end;
   if sender is Tdatetimepicker then
   begin
    (sender as Tdatetimepicker).Color:=$00E8A200 ;
    (sender as Tdatetimepicker).font.Color:=clwhite ;
    (sender as Tdatetimepicker).Font.Style:=[fsbold];
   end;
   if sender is TComboBox then
   begin
    (sender as TComboBox).Color:=$00E8A200 ;
    (sender as TComboBox).font.Color:=clwhite ;
    (sender as TComboBox).Font.Style:=[fsbold];
   end;

end;
}

{
procedure TFMenu.kodeExit(Sender: TObject);
begin
   if sender is tedit then
   begin
     if (sender as tedit).tag=100 then
     begin
      (sender as tedit).Color:=clyellow;
       if (sender as tedit).text='' then
       (sender as tedit).text:='Search...';
     end
     else
     (sender as tedit).Color:=clwhite ;
     (sender as tedit).font.Color:=clblack ;
     (sender as tedit).Font.Style:=(sender as tedit).Font.Style-[fsbold];
   end;
   if sender is TComboBox then
   begin
     (sender as TComboBox).Color:=clwhite ;
     (sender as TComboBox).font.Color:=clblack ;
     (sender as TComboBox).Font.Style:=(sender as TComboBox).Font.Style-[fsbold];
   end;
   if sender is Tdatetimepicker then
   begin
     (sender as Tdatetimepicker).Color:=clwhite ;
     (sender as Tdatetimepicker).font.Color:=clblack ;
     (sender as Tdatetimepicker).Font.Style:=(sender as Tdatetimepicker).Font.Style-[fsbold];
   end;

end;

   }
procedure TFMenu.MnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFMenu.mnlaporanClick(Sender: TObject);
begin
if FrmLaporan=nil then
     FrmLaporan:=TFrmLaporan.Create(Application);
     FrmLaporan.Show;
end;

procedure TFMenu.FakturPembelian1Click(Sender: TObject);
var
   aForm : tFrmPembelian; // Pembelian
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tFrmPembelian') then
    begin
      //Create a new tab sheet
      tabSheet[2] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[2].PageControl := cxpgcntrl_proses;
      tabSheet[2].Caption := 'Faktur Pembelian';
      tabSheet[2].Parent := cxpgcntrl_proses;
      tabSheet[2].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[2];
      //create a form
      aForm := tFrmPembelian.Create(tabSheet[2]) ;
      aForm.Parent := tabSheet[2];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[2];
    end;
  end;

end;

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if Application.MessageBox('Keluar aplikasi?','Apotik 24.02.03',MB_YESNO+MB_ICONQUESTION)=mrno then
  Action:=caNone;
  end;

procedure TFMenu.tmr1Timer(Sender: TObject);
//var a,b,c:string;
var tgl:TDateTime;

begin
tgl:=Now;
dxStatusBar1.Panels[3].Text:='Waktu / Jam  : '+
DateToStr(date)+ ' : '+FormatDateTime('HH:MM:ss', tgl);
//dxStatusBar1.Panels[3].Text:=formatdatetime('dddd, dd mmmm yyyy',date())+'   '+TimetoStr(Now);
dxStatusBar1.Panels[3].Width := 200;

  end;


procedure TFMenu.FormShow(Sender: TObject);

begin
//Caption := apNamaAplikasi;
application.Title:=P_APLIKASI;
windowstate:=wsmaximized;
//Lkode.Text  :='Komputer   : '+ComputerName;
  {
   if  GetIPFromHost(Host, IP, Err) then begin
     LLokasi.Text:='IP : '+ ip +' Kom :'+ComputerName;
  end;
   }
  Caption := apNamaAplikasi;

  //lbl1.Text := 'RSU. Karsa Husada';
  //lbl2.Text := 'Program Pengadaan (DPPA)';
  //lbl2.Font.Size := 12;
  {
  if FLogin=nil then
  FLogin:=TFLogin.Create(Application);
  FLogin.Show;
   }
end;

procedure TFMenu.MenuNonAktif;
begin
  //PageForm.Visible :=false;
//  FMenu.MainMenu1.Items[0].Items[0].Enabled := True;
//  FMenu.MainMenu1.Items[0].Items[1].Enabled := True;
  //FMenu.MainMenu1.Items[1].Enabled := true;
//  FMenu.MainMenu1.Items[1].Enabled := True;
//  FMenu.MainMenu1.Items[2].Enabled := True;
//  FMenu.MainMenu1.Items[3].Enabled := True;
//  FMenu.MainMenu1.Items[4].Enabled := True;
//  FMenu.MainMenu1.Items[1].Enabled := false;
//  FMenu.MainMenu1.Items[2].Enabled := false;
//  FMenu.MainMenu1.Items[3].Enabled := false;
//  FMenu.MainMenu1.Items[4].Enabled := false;


  {
  FMenu.MainMenu1.Items[4].Items[0].Enabled := False;
  FMenu.MainMenu1.Items[4].Items[1].Enabled := False;
  FMenu.MainMenu1.Items[4].Items[2].Enabled := False;
  FMenu.MainMenu1.Items[4].Items[3].Enabled := False;
  FMenu.MainMenu1.Items[4].Items[4].Enabled := False;
  }
  //pProses.Visible := True;
  //pc_proses.Visible := False;

end;


procedure TFMenu.mncvClick(Sender: TObject);
var
   aForm : tfrm_mcv; //frm_mcv
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tfrm_mcv') then // nama form
    begin
      //Create a new tab sheet
      tabSheet[5] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[5].PageControl := cxpgcntrl_proses;
      tabSheet[5].Caption := 'Master Perusahaan';
      tabSheet[5].Parent := cxpgcntrl_proses;
      tabSheet[5].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[5];
      //create a formS
      aForm := tfrm_mcv.Create(tabSheet[5]) ; // nama form
      aForm.Parent := tabSheet[5];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[5];
    end;
  end;

end;

procedure TFMenu.FormCreate(Sender: TObject);
var
n : string;
f : TIniFile;
begin
     try
    apLoadKonfigurasiProgram;
    MenuNonAktif;
    //FMenu.Height := 800;
    //FMenu.Width := 1280;
    img1.Align:=alClient;
    f:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\bin\gmbr.ini');
    n:=f.ReadString('lokasi','file','');
    img1.Picture.LoadFromFile(n);
  except
    f.Free;
  end;
   {
   ThousandSeparator:='.';
   DecimalSeparator:=',';
   CurrencyFormat:= 1;
   NegCurrFormat:= 5;
   CurrencyDecimals:= 2;
   DateSeparator:= '/';
   TimeSeparator:= ':';
   ListSeparator:= ',';
   CurrencyString:= '$';
   ShortDateFormat:= 'dd/mm/yyyy';
   LongDateFormat:= 'dd" "mmmm" "yyyy';
   TimeAMString:= 'AM';
   TimePMString:= 'PM';
   ShortTimeFormat:= 'hh:nn';
   LongTimeFormat:= 'hh:nn:ss';
     }

end;



  {
procedure TFMenu.Restoredatabase1Click(Sender: TObject);
begin
  dlgOpen1.Title := 'Restore data';
  dlgOpen1.InitialDir := apdirback;
  dlgOpen1.Filter := 'Restore Database|*.bck';
  if dlgOpen1.Execute then begin
    Screen.cursor := crsqlWait;
    MyDump1.Connection := DmModul.con1;
    MyDump1.RestoreFromFile(dlgOpen1.FileName);
    MyDump1.Restore;
    Screen.cursor := crDefault;
    MessageDlg('Data Berhasil di Restore '+dlgOpen1.FileName+' !!', mtInformation, [mbOK], 0);
  end else
  abort;
end;
 }

{
procedure TFMenu.UpdateSQL1Click(Sender: TObject);
begin
  fmenu.Caption := 'Proses Update Database';
  with dlgOpen1 do
 begin
 Options := [ofFileMustExist];
 InitialDir := apDirupdate;
 Filter :='update Database|*.sql';
 FilterIndex := 1;
 Execute;
 end;
 if dlgOpen1.FileName = '' then exit;

  try
    myscrpt1.Connection := DmModul.con1;
    myscrpt1.SQL.Clear;
    myscrpt1.SQL.LoadFromFile(dlgOpen1.FileName);
    myscrpt1.Execute;
  finally
    myscrpt1.SQL.Clear;
    myscrpt1.Free;
  end;
  Application.MessageBox('Update database...!!','Update database.',MB_OK+mb_iconinformation);
  fmenu.Caption := 'Proses Update Selesai';
  end;
 }
{
procedure TFMenu.dxtranferClick(Sender: TObject);
var
	fileku,dir : string;
	trs : Boolean;
begin
//back dulu
  dlgSave1.Title := 'Tranfer data ';
  dlgSave1.Filter := 'Tranfer_database|*.trn';
  dlgSave1.FileName := 'dbselip17_'+ FormatDatetime('yyyymmdd_hhss',now)+'.trn';
   If dlgSave1.Execute then
    begin
        if FileExists(dlgSave1.FileName) then
        begin
            if MessageDlg('File '+dlgSave1.FileName+' sudah ada , akan ditindas ?', mtconfirmation, [mbyes, mbno], 0) = mryes then
            begin
                trs:=true;
                DeleteFile(dlgSave1.FileName);
            end else trs:=false;
        end else trs:=true;
        if trs then
        begin
		//proses

		 Try
            if dlgSave1.FileName<>'' then
   begin
  Screen.cursor := crsqlWait;
  Mytrans.Connection := DmModul.con1;
  Mytrans.BackupToFile(dlgSave1.FileName);
  Mytrans.Backup;

  MessageDlg('Data Berhasil di Tranfer Table di '+dlgSave1.FileName+' !!', mtInformation, [mbOK], 0);
  Screen.cursor := crDefault;
  end else
  abort;
              Except ShowMessage('Backup Gagal') End;
        end;
    end;

end;

procedure TFMenu.dxterimaClick(Sender: TObject);
begin
  dlgOpen1.Title := 'Terima Data';
  dlgOpen1.Filter := 'Terima Data|*.trn';
  if dlgOpen1.Execute then begin
    Screen.cursor := crsqlWait;
    //MyDump1.Connection := DmModul.con1;
    //MyDump1.RestoreFromFile(dlgOpen1.FileName);
    //MyDump1.Restore;
    try
    myscrpt1.Connection := DmModul.con1;
    myscrpt1.SQL.Clear;
    myscrpt1.SQL.LoadFromFile(dlgOpen1.FileName);
    myscrpt1.Execute;
  finally
    myscrpt1.SQL.Clear;
    myscrpt1.Free;
  end;
    Screen.cursor := crDefault;
    MessageDlg('Data Berhasil di Terima '+dlgOpen1.FileName+' !!', mtInformation, [mbOK], 0);
  end else
  ShowMessage('Gagal terima Tranfer :'+ dlgOpen1.FileName);
  abort;
end;
  }

{
  }

procedure TFMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
{
if messagedlg('Anda Yakin ingin keluar program...?',mtconfirmation,[mbyes,mbno],0)=mryes then
begin
DmModul.con1.Connected:=false;
canclose:=true;
end
else
canclose:=false;
}
end;


{
procedure TFMenu.btn_settingClick(Sender: TObject);
begin
if frm_setting=nil then
frm_setting:=Tfrm_setting.Create(Application);
//fcariPetugas.pcontrol.Caption:='fMasuk';
frm_setting.BringToFront;
end;
  }

{

procedure TFMenu.dxnvbrtm_backClick(Sender: TObject);
var
	fileku,dir : string;
	trs : Boolean;
begin
//back dulu
  dlgSave1.Title := 'Back up data ';
  dlgSave1.InitialDir := apdirback;
  dlgSave1.Filter := 'back_database|*.bck';
  dlgSave1.FileName := 'dbgudang23_'+ FormatDatetime('yyyymmdd_hhss',now)+'.bck';
   If dlgSave1.Execute then
    begin
        if FileExists(dlgSave1.FileName) then
        begin
            if MessageDlg('File '+dlgSave1.FileName+' sudah ada , akan ditindas ?', mtconfirmation, [mbyes, mbno], 0) = mryes then
            begin
                trs:=true;
                DeleteFile(dlgSave1.FileName);
            end else trs:=false;
        end else trs:=true;
        if trs then
        begin
		//proses

		 Try
            if dlgSave1.FileName<>'' then
   begin
  Screen.cursor := crsqlWait;
  MyDump1.Connection := DmModul.con1;
  MyDump1.BackupToFile(dlgSave1.FileName);
  MyDump1.Backup;
   //ShellExecute(self.Handle, PCHAR('open'),
   //PCHAR('C:\Program Files (x86)\MySQL\MySQL Server 5.0\bin\mysqldump.exe'),
   //PCHAR('d:\xampp\mysql\bin\mysqldump.exe'),
   //PCHAR('-uroot -hlocalhost -R -r "'+ dlgSave1.FileName+'.sql" dbselip14'),
   //PCHAR('d:\xampp\mysql\bin'),SW_HIDE);
  MessageDlg('Data Berhasil di Backup di '+dlgSave1.FileName+' !!', mtInformation, [mbOK], 0);
  Screen.cursor := crDefault;
  end else
  abort;

            Except ShowMessage('Backup Gagal') End;
        end;
    end;

end;
  }
procedure TFMenu.kelura1Click(Sender: TObject);
begin
close;
end;

procedure TFMenu.Konsiyansi1Click(Sender: TObject);
var
   aForm : tFrmKonsiyansi; // Konsinyansi  : FrmKonsiyansi
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tFrmKonsiyansi') then
    begin
      //Create a new tab sheet
      tabSheet[10] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[10].PageControl := cxpgcntrl_proses;
      tabSheet[10].Caption := 'Konsiyansi';
      tabSheet[10].Parent := cxpgcntrl_proses;
      tabSheet[10].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[10];
      //create a form
      aForm := tFrmKonsiyansi.Create(tabSheet[10]) ;
      aForm.Parent := tabSheet[10];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[10];
    end;
  end;
end;

procedure TFMenu.keluar1Click(Sender: TObject);
//var
//   aForm : tFrmKeluar; //frm_masuk
begin
//  with FMenu do
//  begin
//    cxpgcntrl_proses.Visible := True;
//    if not IsFormOpen('tFrmKeluar') then  //tFrmKeluar
//    begin
//      //Create a new tab sheet
//      tabSheet[3] := TcxTabSheet.Create(cxpgcntrl_proses) ;
//      tabSheet[3].PageControl := cxpgcntrl_proses;
//      tabSheet[3].Caption := 'Transaksi Keluar';
//      tabSheet[3].Parent := cxpgcntrl_proses;
//      tabSheet[3].Visible := True;
//      cxpgcntrl_proses.ActivePage := tabSheet[3];
//      //create a form
//      aForm := tFrmKeluar.Create(tabSheet[3]) ; //tFrmKeluar
//      aForm.Parent := tabSheet[3];
//      aForm.Align := alClient;
//      aForm.BorderStyle := bsNone;
//      aForm.Show;
//    end
//    else
//    begin
//      cxpgcntrl_proses.ActivePage := tabSheet[2];
//    end;
//  end;

end;

procedure TFMenu.img1DblClick(Sender: TObject);
Var
     OleGraphic               : TOleGraphic;
     fs                       : TFileStream;
     Source                   : TImage;
     BMP                      : TBitmap;


Begin

 dlgOpen2.InitialDir := GetCurrentDir;
 dlgOpen2.Options := [ofFileMustExist];
 dlgOpen2.Filter := 'gambar files|*.jpg|gambar jpeg files|*.jpeg';
 dlgOpen2.FilterIndex := 2;


    if dlgOpen2.Execute then
    begin
         Try
              OleGraphic := TOleGraphic.Create;

              fs := TFileStream.Create(dlgOpen2.FileName, fmOpenRead Or fmSharedenyNone);
              OleGraphic.LoadFromStream(fs);

              Source := Timage.Create(Nil);
              Source.Picture.Assign(OleGraphic);

              BMP := TBitmap.Create;
              bmp.Width := Source.Picture.Width;
              bmp.Height := source.Picture.Height;
              bmp.Canvas.Draw(0, 0, source.Picture.Graphic);
              img1.Picture.Bitmap := bmp;


              if MessageDlg('gambar dengan'+#13+#10+dlgOpen2.FileName+#13+#10+
              'akan di Ganti, lanjutkan?',
              mtWarning, [mbOK, mbCancel], 0) = mrOK then
                begin
              //----simpan gambar update---//
              f:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\bin\gmbr.ini');
              f.WriteString('lokasi','file',dlgOpen2.FileName);
              f.UpdateFile;
              f.Free;
                  end;
         except
              fs.Free;
              OleGraphic.Free;
              Source.Free;
              bmp.Free;
         End;
    End;

end;


procedure TFMenu.Versi1Click(Sender: TObject);
var ht1 : string;
begin
//FCekVersiUpdate.Show;

 Application.messageBox('Update Exe' + chr(10)
              + 'Silahkan untuk melakukan '+'BUKA PROGRAM KEMBALI','Information',
              MB_OK or MB_ICONINFORMATION);
DmModul.con1.Connected:=false;
ht1:='PrjUpdateEXE';
ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);
Application.Terminate;

end;

procedure TFMenu.x11Click(Sender: TObject);
var
   aForm : tfrmBayar; //FrmPetugas
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tfrmBayar') then // nama form
    begin
      //Create a new tab sheet
      tabSheet[12] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[12].PageControl := cxpgcntrl_proses;
      tabSheet[12].Caption := 'Bayar/Lunas';
      tabSheet[12].Parent := cxpgcntrl_proses;
      tabSheet[12].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[12];
      //create a formS
      aForm := tfrmBayar.Create(tabSheet[12]) ; // nama form
      aForm.Parent := tabSheet[12];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[12];
    end;
  end;

end;

procedure TFMenu.mn_KeluarClick(Sender: TObject);
begin
close;
end;

procedure TFMenu.mn_pegClick(Sender: TObject);
var
   aForm : tFrmPetugas; //FrmPetugas
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tFrmPetugas') then // nama form
    begin
      //Create a new tab sheet
      tabSheet[6] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[6].PageControl := cxpgcntrl_proses;
      tabSheet[6].Caption := 'Master petugas';
      tabSheet[6].Parent := cxpgcntrl_proses;
      tabSheet[6].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[6];
      //create a formS
      aForm := tFrmPetugas.Create(tabSheet[6]) ; // nama form
      aForm.Parent := tabSheet[6];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[6];
    end;
  end;

end;

procedure TFMenu.backup1Click(Sender: TObject);

begin
//back dulu
  dlgSave1.Title := 'Back up data ';
  dlgSave1.InitialDir := apdirback;
  dlgSave1.Filter := 'back_database|*.bck';
  dlgSave1.FileName := 'dbApotik24_'+ FormatDatetime('yyyymmdd_hhnnss',now)+'.bck';
   If dlgSave1.Execute then
    begin
        if FileExists(dlgSave1.FileName) then
        begin
            if MessageDlg('File '+dlgSave1.FileName+' sudah ada , akan ditindas ?', mtconfirmation, [mbyes, mbno], 0) = mryes then
            begin
                trs:=true;
                DeleteFile(dlgSave1.FileName);
            end else trs:=false;
        end else trs:=true;
        if trs then
        begin
		//proses

		 Try
            if dlgSave1.FileName<>'' then
   begin
  Screen.cursor := crsqlWait;
  MyDump1.Connection := DmModul.con1;
  MyDump1.BackupToFile(dlgSave1.FileName);
  MyDump1.Backup;
   //ShellExecute(self.Handle, PCHAR('open'),
   //PCHAR('C:\Program Files (x86)\MySQL\MySQL Server 5.0\bin\mysqldump.exe'),
   //PCHAR('d:\xampp\mysql\bin\mysqldump.exe'),
   //PCHAR('-uroot -hlocalhost -R -r "'+ dlgSave1.FileName+'.sql" dbselip14'),
   //PCHAR('d:\xampp\mysql\bin'),SW_HIDE);
  MessageDlg('Data Berhasil di Backup di '+dlgSave1.FileName+' !!', mtInformation, [mbOK], 0);
  Screen.cursor := crDefault;
  end else
  abort;

            Except ShowMessage('Backup Gagal') End;
        end;
    end;

end;

procedure TFMenu.MnLogClick(Sender: TObject);
begin
if Flogin=nil then
Flogin:=TFlogin.Create(Application);
//fcariPetugas.pcontrol.Caption:='fMasuk';
Flogin.Show;
end;

procedure TFMenu.tranfer1Click(Sender: TObject);
var
	fileku,dir : string;
	trs : Boolean;
begin
//back dulu
  {
  dlgSave1.Title := 'Tranfer data ';
  dlgSave1.Filter := 'Tranfer_database|*.trn';
  dlgSave1.FileName := 'dbselip17_'+ FormatDatetime('yyyymmdd_hhss',now)+'.trn';
   If dlgSave1.Execute then
    begin
        if FileExists(dlgSave1.FileName) then
        begin
            if MessageDlg('File '+dlgSave1.FileName+' sudah ada , akan ditindas ?', mtconfirmation, [mbyes, mbno], 0) = mryes then
            begin
                trs:=true;
                DeleteFile(dlgSave1.FileName);
            end else trs:=false;
        end else trs:=true;
        if trs then
        begin
		//proses

		 Try
            if dlgSave1.FileName<>'' then
   begin
  Screen.cursor := crsqlWait;
  Mytrans.Connection := DmModul.con1;
  Mytrans.BackupToFile(dlgSave1.FileName);
  Mytrans.Backup;

  MessageDlg('Data Berhasil di Tranfer Table di '+dlgSave1.FileName+' !!', mtInformation, [mbOK], 0);
  Screen.cursor := crDefault;
  end else
  abort;
              Except ShowMessage('Backup Gagal') End;
        end;
    end;
    }
end;

procedure TFMenu.Importsp1Click(Sender: TObject);
begin

if frm_setting=nil then
     frm_setting:=Tfrm_setting.Create(Application);
     frm_setting.Show;

  {
  dlgOpen1.Title := 'Terima Data';
  dlgOpen1.Filter := 'Terima Data|*.trn';
  if dlgOpen1.Execute then begin
    Screen.cursor := crsqlWait;
    //MyDump1.Connection := DmModul.con1;
    //MyDump1.RestoreFromFile(dlgOpen1.FileName);
    //MyDump1.Restore;
    try
    myscrpt1.Connection := DmModul.con1;
    myscrpt1.SQL.Clear;
    myscrpt1.SQL.LoadFromFile(dlgOpen1.FileName);
    myscrpt1.Execute;
  finally
    myscrpt1.SQL.Clear;
    myscrpt1.Free;
  end;
    Screen.cursor := crDefault;
    MessageDlg('Data Berhasil di Terima '+dlgOpen1.FileName+' !!', mtInformation, [mbOK], 0);
  end else
  ShowMessage('Gagal terima Tranfer :'+ dlgOpen1.FileName);
  abort;
  }
end;

procedure TFMenu.msagrClick(Sender: TObject);

var
  script: TMyScript;

begin

fmenu.Caption := 'Proses Update Database';
  with dlgOpen1 do
 begin
 Options := [ofFileMustExist];
 InitialDir := apDirupdate;
 Filter :='update Database|*.sql';
 FilterIndex := 1;
 //InitialDir:='d:\back\';
 Execute;
 //Edit1.Text := dlgOpen1.FileName;
 end;

 if dlgOpen1.FileName = '' then exit;

  try
    myscrpt1.Connection := DmModul.con1;
    myscrpt1.SQL.Clear;
    myscrpt1.SQL.LoadFromFile(dlgOpen1.FileName);
    myscrpt1.Execute;
  finally
    myscrpt1.SQL.Clear;
    myscrpt1.Free;
  end;
  Application.MessageBox('Update SQL database...!!','Update database.',MB_OK+mb_iconinformation);
  fmenu.Caption := 'Proses SQL Update Selesai';

end;

procedure TFMenu.Operasional1Click(Sender: TObject);
var
   aForm : tFrmOp; //frm_masuk  : FrmOp
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tFrmOp') then  //tFrmKeluar
    begin
      //Create a new tab sheet
      tabSheet[11] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[11].PageControl := cxpgcntrl_proses;
      tabSheet[11].Caption := 'Operasional';
      tabSheet[11].Parent := cxpgcntrl_proses;
      tabSheet[11].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[11];
      //create a form
      aForm := tFrmOp.Create(tabSheet[11]) ; //FrmOp
      aForm.Parent := tabSheet[11];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[2];
    end;
  end;

end;

procedure TFMenu.Pemesanan1Click(Sender: TObject);
var
   aForm : tFrmPesanan; // Pemesanan
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tFrmPesanan') then
    begin
      //Create a new tab sheet
      tabSheet[2] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[2].PageControl := cxpgcntrl_proses;
      tabSheet[2].Caption := 'Transaksi Pemesanan';
      tabSheet[2].Parent := cxpgcntrl_proses;
      tabSheet[2].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[2];
      //create a form
      aForm := tFrmPesanan.Create(tabSheet[2]) ;
      aForm.Parent := tabSheet[2];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[2];
    end;
  end;

end;

procedure TFMenu.PenerimaanResep1Click(Sender: TObject);
var
   aForm : tFrmPenerimaanResep; // FrmPenerimaanResep
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tFrmPenerimaanResep') then
    begin
      //Create a new tab sheet
      tabSheet[7] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[7].PageControl := cxpgcntrl_proses;
      tabSheet[7].Caption := 'Penerimaan Resep';
      tabSheet[7].Parent := cxpgcntrl_proses;
      tabSheet[7].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[7];
      //create a form
      aForm := tFrmPenerimaanResep.Create(tabSheet[7]) ;
      aForm.Parent := tabSheet[7];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[7];
    end;
  end;

end;

procedure TFMenu.ReturBeli1Click(Sender: TObject);
var
   aForm : tFrmReturBeli; //FrmReturBeli
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tFrmReturBeli') then
    begin
      //Create a new tab sheet
      tabSheet[5] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[5].PageControl := cxpgcntrl_proses;
      tabSheet[5].Caption := 'Retur Beli';
      tabSheet[5].Parent := cxpgcntrl_proses;
      tabSheet[5].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[5];
      //create a form
      aForm := tFrmReturBeli.Create(tabSheet[5]) ;
      aForm.Parent := tabSheet[5];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[5];
    end;
//  end;

end;
end;

procedure TFMenu.ReturKonsiyansi1Click(Sender: TObject);
var
   aForm : tFrmReturKonsiyansi; // Konsinyansi  : FrmReturKonsiyansi
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tFrmReturKonsiyansi') then
    begin
      //Create a new tab sheet
      tabSheet[12] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[12].PageControl := cxpgcntrl_proses;
      tabSheet[12].Caption := 'Retur - Konsiyansi';
      tabSheet[12].Parent := cxpgcntrl_proses;
      tabSheet[12].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[12];
      //create a form
      aForm := tFrmReturKonsiyansi.Create(tabSheet[12]) ;
      aForm.Parent := tabSheet[12];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[12];
    end;
  end;

end;

procedure TFMenu.ReturPenjualan1Click(Sender: TObject);
var
   aForm : tFrmReturJual; //FrmReturJual
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tFrmReturJual') then
    begin
      //Create a new tab sheet
      tabSheet[6] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[6].PageControl := cxpgcntrl_proses;
      tabSheet[6].Caption := 'Retur Jual';
      tabSheet[6].Parent := cxpgcntrl_proses;
      tabSheet[6].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[6];
      //create a form
      aForm := tFrmReturJual.Create(tabSheet[6]) ;
      aForm.Parent := tabSheet[6];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[6];
    end;
//  end;

end;

end;

procedure TFMenu.SetupPrinter1Click(Sender: TObject);
begin
   if fSetupPrint=nil then
     fSetupPrint:=TfSetupPrint.Create(Application);
     fSetupPrint.Show;
end;

procedure TFMenu.stok1Click(Sender: TObject);
//var
//   aForm : tFrmBidang; //FrmBidang
begin
//  with FMenu do
//  begin
//    cxpgcntrl_proses.Visible := True;
//    if not IsFormOpen('tFrmBidang') then
//    begin
//      //Create a new tab sheet
//      tabSheet[5] := TcxTabSheet.Create(cxpgcntrl_proses) ;
//      tabSheet[5].PageControl := cxpgcntrl_proses;
//      tabSheet[5].Caption := 'Transaksi Bidang';
//      tabSheet[5].Parent := cxpgcntrl_proses;
//      tabSheet[5].Visible := True;
//      cxpgcntrl_proses.ActivePage := tabSheet[5];
//      //create a form
//      aForm := tFrmBidang.Create(tabSheet[5]) ;
//      aForm.Parent := tabSheet[5];
//      aForm.Align := alClient;
//      aForm.BorderStyle := bsNone;
//      aForm.Show;
//    end
//    else
//    begin
//      cxpgcntrl_proses.ActivePage := tabSheet[5];
//    end;
//  end;

end;

procedure TFMenu.STOKOPNAME1Click(Sender: TObject);
begin
   if FrmOpname=nil then
     FrmOpname:=TFrmOpname.Create(Application);
     FrmOpname.Show;
end;

procedure TFMenu.MenuItem4Click(Sender: TObject);
begin

  dlgOpen1.Title := 'Restore data';
  dlgOpen1.InitialDir := apdirback;
  dlgOpen1.Filter := 'Restore Database|*.bck';
  if dlgOpen1.Execute then begin
    Screen.cursor := crsqlWait;
    MyDump1.Connection := DmModul.con1;
    MyDump1.RestoreFromFile(dlgOpen1.FileName);
    MyDump1.Restore;
    Screen.cursor := crDefault;
    MessageDlg('Data Berhasil di Restore '+dlgOpen1.FileName+' !!', mtInformation, [mbOK], 0);
  end else
  abort;

end;

procedure TFMenu.DaftarProduk1Click(Sender: TObject);
var
   aForm : tFrmBrg24; //frm_barang
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tFrmBrg24') then // nama form
    begin
      //Create a new tab sheet
      tabSheet[4] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[4].PageControl := cxpgcntrl_proses;
      tabSheet[4].Caption := 'Daftar Produk';
      tabSheet[4].Parent := cxpgcntrl_proses;
      tabSheet[4].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[4];
      //create a formS
      aForm := tFrmBrg24.Create(tabSheet[4]) ; // nama form
      aForm.Parent := tabSheet[4];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[4];
    end;
  end;

end;

procedure TFMenu.Dokter1Click(Sender: TObject);
var
   aForm : tfrmDokter; //frm_mcv
begin
  with FMenu do
  begin
    cxpgcntrl_proses.Visible := True;
    if not IsFormOpen('tfrmDokter') then // nama form
    begin
      //Create a new tab sheet
      tabSheet[8] := TcxTabSheet.Create(cxpgcntrl_proses) ;
      tabSheet[8].PageControl := cxpgcntrl_proses;
      tabSheet[8].Caption := 'Master Dokter';
      tabSheet[8].Parent := cxpgcntrl_proses;
      tabSheet[8].Visible := True;
      cxpgcntrl_proses.ActivePage := tabSheet[8];
      //create a formS
      aForm := tfrmDokter.Create(tabSheet[8]) ; // nama form
      aForm.Parent := tabSheet[8];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Show;
    end
    else
    begin
      cxpgcntrl_proses.ActivePage := tabSheet[8];
    end;
  end;

//FrmMasterDokter
//if frmDokter=nil then
//     frmDokter:=TfrmDokter.Create(Application);
//     frmDokter.Show;
end;





end.
