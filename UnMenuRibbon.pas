unit UnMenuRibbon;

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
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPC, dxSkinsdxNavBar2Painter, dxNavBarCollns,
  cxClasses, dxNavBarBase, dxNavBar, cxStyles, dxNavBarStyles, dmatrix,
  AdvShapeButton, AdvPageControl, dxSkinsdxBarPainter, dxBar, dxRibbon,
  XPMan, ImgList, dxSkinsdxStatusBarPainter, dxStatusBar, cxButtons,
  dxSkinsdxRibbonPainter;

type
  TFMenu = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dlgOpen1: TOpenDialog;
    tmr1: TTimer;
    dlgSave1: TSaveDialog;
    MyDump1: TMyDump;
    myscrpt1: TMyScript;
    cxlkndflcntrlr1: TcxLookAndFeelController;
    cxStyleRepository1: TcxStyleRepository;
    lbl1: TAdvShapeButton;
    lbl2: TAdvShapeButton;
    img1: TImage;
    Mytrans: TMyDump;
    Pageform: TAdvPageControl;
    btnjam1: TAdvShapeButton;
    img2: TImage;
    labelku: TAdvShapeButton;
    dxStatusBar1: TdxStatusBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxrbntbRibbon1Tab2: TdxRibbonTab;
    dxRibbon1Tab2: TdxRibbonTab;
    il1: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton5: TdxBarLargeButton;
    dxbrbtn1: TdxBarButton;
    dxBarButton4: TdxBarButton;
    XPManifest1: TXPManifest;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxbrlrgbtn1: TdxBarLargeButton;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtn2: TdxBarLargeButton;
    dxbrlrgbtn3: TdxBarLargeButton;
    dxbrManager_tool: TdxBar;
    dxbrlrgbtn4: TdxBarLargeButton;
    dxbrlrgbtn5: TdxBarLargeButton;
    dxbrlrgbtn6: TdxBarLargeButton;
    dxbrManager1Bar1: TdxBar;
    dxbrlrgbtn7: TdxBarLargeButton;
    dxbrlrgbtn8: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxRibbon1Tab3: TdxRibbonTab;
    procedure MnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmr1Timer(Sender: TObject);
    procedure MnBackClick(Sender: TObject);
    procedure MnLogClick(Sender: TObject);
    procedure MnKemClick(Sender: TObject);
    procedure EditAktifAnggota1Click(Sender: TObject);
    procedure MnLapPeminjamanClick(Sender: TObject);
    procedure LaporanDataAnggota1Click(Sender: TObject);
    procedure LaporanDataBukuDinamis1Click(Sender: TObject);
    procedure LabelBuku1Click(Sender: TObject);
    procedure BukuTamu1Click(Sender: TObject);
    procedure ActDataPerpus1Click(Sender: TObject);
    procedure KeluarClick(Sender: TObject);
    procedure MnLapKembali1Click(Sender: TObject);
    procedure LapuranDenda1Click(Sender: TObject);
    procedure LaporanDtaPengunjung1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure MainMenu1Change(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure FormShow(Sender: TObject);
    procedure MasterPBF1Click(Sender: TObject);
    procedure MasterSatuan1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SuratKeluar1Click(Sender: TObject);
    procedure ambahPegPNS1Click(Sender: TObject);
    procedure ambahPegKontrak1Click(Sender: TObject);
    procedure sql1Click(Sender: TObject);
    procedure Restoredatabase1Click(Sender: TObject);
    procedure SelipPTT1Click(Sender: TObject);
    procedure UpdateSQL1Click(Sender: TObject);
    procedure ambahPTT1Click(Sender: TObject);
    procedure dxTpnsClick(Sender: TObject);
    procedure dxkeluarClick(Sender: TObject);
    procedure dxBludClick(Sender: TObject);
    procedure dxpttnonClick(Sender: TObject);
    procedure dxrestoreClick(Sender: TObject);
    procedure dxupdateClick(Sender: TObject);
    procedure dxsbludClick(Sender: TObject);
    procedure dxspttClick(Sender: TObject);
    procedure dxtranferClick(Sender: TObject);
    procedure dxterimaClick(Sender: TObject);
    procedure mnuRekeningClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxbrlrgbtn2Click(Sender: TObject);
    procedure dxbrlrgbtn3Click(Sender: TObject);
    procedure dxbrlrgbtn4Click(Sender: TObject);
    procedure dxbrlrgbtn5Click(Sender: TObject);
    procedure dxbrlrgbtn6Click(Sender: TObject);
    procedure dxbrlrgbtn7Click(Sender: TObject);
    procedure dxbrlrgbtn8Click(Sender: TObject);
//    procedure Image2DblClick(Sender: TObject);
  private
    { Private declarations }
//    procedure convertobmp(filename:TFileName);
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

uses UnModul,Un_carisp,Un_kosong,
uconfig, Un_irna_gz, Un_cetak;

{$R *.dfm}

{}

procedure TFMenu.MnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if Application.MessageBox('Keluar aplikasi?','Selip 18.01',MB_YESNO+MB_ICONQUESTION)=mrno then
  Action:=caNone;
  end;

procedure TFMenu.tmr1Timer(Sender: TObject);
//var a,b,c:string;
var tgl:TDateTime;

begin
tgl:=Now;
dxStatusBar1.Panels[3].Text:='Waktu / Jam  : '+FormatDateTime('HH:MM:ss', tgl);
dxStatusBar1.Panels[3].Width := 200;
//btnjam1.Text :=FormatDateTime('HH:MM:ss', tgl);

//a:=LbDemo.Caption;
//b:=copy(a,1,1);
//c:=copy(a,2,length(a));
//LbDemo.Caption:=c+b;
  {
  if LbDemo.Font.Color=clred then
  begin
    LbDemo.Font.Color:=clWhite;
  end
  else
  begin
    LbDemo.Font.Color:=clRed;
  end;
  lbdemo.Caption :=  'by harisdillah@gmail.com';
  lbdemo.Font.Size := 12;
  }
  end;

procedure TFMenu.MnBackClick(Sender: TObject);
begin
  {
  if FUser=nil then
    FUser:=TFUser.Create(Application);
  FUser.BringToFront;
  }
end;

procedure TFMenu.MnLogClick(Sender: TObject);
begin
  {
  if FLogin1 =nil then
  begin
    FLogin1:=TFlogin1.Create(Application);
    FLogin1.ShowModal;
  end;
  }
end;

procedure TFMenu.MnKemClick(Sender: TObject);
begin
{
  if Fspt_bantran=nil then
    Fspt_bantran:=TFspt_bantran.Create(Application);
  Fspt_bantran.BringToFront;
 }
 end;

procedure TFMenu.EditAktifAnggota1Click(Sender: TObject);
begin
//  if FEditAktif=nil then
//    FEditAktif:=TFEditAktif.Create(Application);
//  FEditAktif.BringToFront;
end;

procedure TFMenu.MnLapPeminjamanClick(Sender: TObject);
begin
//Frm_cetak_bl.show;
{
  if FLpPin=nil then
    FLpPin:=TFLpPin.Create(Application);
  FLpPin.BringToFront;
  }
  end;

procedure TFMenu.LaporanDataAnggota1Click(Sender: TObject);
begin
{
  if FLpAng=nil then
    FLpAng:=TFLpAng.Create(Application);
  FLpAng.BringToFront;
  }
  end;

procedure TFMenu.LaporanDataBukuDinamis1Click(Sender: TObject);
begin
{
  if FLpBuku=nil then
    FLpBuku:=TFLpBuku.Create(Application);
  FLpBuku.BringToFront;
  }
  end;

procedure TFMenu.LabelBuku1Click(Sender: TObject);
begin
{
  if FLpLabel=nil then
    FLpLabel:=TFLpLabel.Create(Application);
  FLpLabel.BringToFront;
  }
  end;

procedure TFMenu.BukuTamu1Click(Sender: TObject);
begin
{
  if FTamu=nil then
    FTamu:=TFTamu.Create(Application);
  FTamu.BringToFront;
  }
  end;

procedure TFMenu.ActDataPerpus1Click(Sender: TObject);
//tampil menu
begin
{
  if FUser=nil then
  FUser:=TFUser.Create(Application);
  FUser.BringToFront;
  }
  end;

procedure TFMenu.KeluarClick(Sender: TObject);
begin
  close;
end;

procedure TFMenu.MnLapKembali1Click(Sender: TObject);
begin
{
  if FLpBkKel=nil then
    FLpBkKel:=TFLpBkKel.Create(Application);
  FLpBkKel.BringToFront;
  }
  end;

procedure TFMenu.LapuranDenda1Click(Sender: TObject);
begin
{
  if FLpDenda=nil then
    FLpDenda:=TFLpDenda.Create(Application);
  FLpDenda.BringToFront;
  }
  end;

procedure TFMenu.LaporanDtaPengunjung1Click(Sender: TObject);
begin
{
  if FLpTamu=nil then
    FLpTamu:=TFLpTamu.Create(Application);
  FLpTamu.BringToFront;
  }
  end;

procedure TFMenu.About1Click(Sender: TObject);
begin
{
  if FAbout=nil then
    FAbout:=TFAbout.Create(Application);
  FAbout.ShowModal;
  }
  end;

procedure TFMenu.MainMenu1Change(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
{if TbAktif=true then
begin
  if MnAng.Enabled=false then
    FInMenu.BtnAng.Enabled:=False
  else
    FInMenu.BtnAng.Enabled:=True;

  if MnBuku.Enabled=false then
    FInMenu.BtnBuku.Enabled:=False
  else
    FInMenu.BtnBuku.Enabled:=True;

  if MnLog.Enabled=false then
    FInMenu.BtnLogin.Enabled:=False
  else
    FInMenu.BtnLogin.Enabled:=True;

  if MnPin.Enabled=false then
    FInMenu.BtnPin.Enabled:=False
  else
    FInMenu.BtnPin.Enabled:=True;

  if MnKem.Enabled=false then
    FInMenu.BtnKem.Enabled:=False
  else
    FInMenu.BtnKem.Enabled:=True;
end; }
end;

procedure TFMenu.FormShow(Sender: TObject);
begin
Caption := apNamaAplikasi;
lbl1.Text := 'Program Selip Gaji 2018';
lbl2.Text := 'RSU. KARSA HUSADA BATU';

//StatusBar1.Panels[3].Width := 200;
//StatusBar1.Panels[3].Text := aptgl;

//  StatusBar1.Panels[5].Width := 150;
//  StatusBar1.Panels[5].Text := 'ver : 16.02.24' ;

 {
  if FLogin =nil then
  begin
    FLogin:=TFlogin.Create(Application);
    FLogin.ShowModal;
  end;
  }
end;


procedure TFMenu.MasterPBF1Click(Sender: TObject);
begin
{
  if fJenis=nil then
    fJenis:=TfJenis.Create(Application);
  fJenis.BringToFront;
 }
//  fjenis.Show;


//fJenis.shows;
end;

procedure TFMenu.MasterSatuan1Click(Sender: TObject);
begin

//  if fsatuan=nil then
//    fsatuan:=Tfsatuan.Create(Application);
//  fsatuan.BringToFront;


end;

procedure TFMenu.FormCreate(Sender: TObject);
//var
 // l, t : integer;
 // IniName : string;
begin
 // IniName := ExtractFilePath(Application.ExeName) + 'ASkinDemo.ini';
 // if (t <> -1) and (l <> -1) then begin
 //   SetBounds(l, t, Width, Height);
 //   Position := poDesigned;
 // end;
  // Select a required skin
 // sknmngr1.SkinName := skinku;



end;




{
procedure TFMenu.Image2DblClick(Sender: TObject);
var gambar : TMemorystream;
begin
 // if(Ed_gmbr.Text = '') then begin
 //   ShowMessage('Silahkan isi nama dulu');
 //   Ed_gmbr.SetFocus;
 //   exit;
 // end;
 dlgOpen1.InitialDir := GetCurrentDir;
 dlgOpen1.Options := [ofFileMustExist];
 dlgOpen1.Filter := 'gambar files|*.jpg|gambar jpeg files|*.jpeg';
 dlgOpen1.FilterIndex := 2;


  if dlgOpen1.Execute then
  begin
   // try
      convertobmp(dlgOpen1.FileName);
      gambar := TMemorystream.Create;
      Image2.Picture.Graphic.SaveToStream(gambar);
    //ADOQuery1.Close;
      //ADOQuery1.SQL.Clear;
      //ADOQuery1.SQL.Text := 'insert into tb_foto (nama,gambar) values (:p0, :p1)';
      //ADOQuery1.Parameters[0].Value :=  Edit1.text;
      //ADOQuery1.Parameters[1].LoadFromStream(gambar,ftBlob);
      //ADOQuery1.ExecSQL;
      //tampildata();
    //except
    //on E:Exception do
    //  ShowMessage('Maaf terjadi kesalahan.' + #13 + 'Error : ' + E.Message);
   // end;
   end
    else
    begin
   ShowMessage('Gagal Rubah gambar' +#13 + 'belum '  );
   //dlgOpen1.Free;
   end;
   end;
   }

procedure TFMenu.SuratKeluar1Click(Sender: TObject);
var
  MyPage5: TadvTabSheet;
begin
  
end;

procedure TFMenu.ambahPegPNS1Click(Sender: TObject);
var
  MyPage: TadvTabSheet;
begin

  mypage := tadvtabsheet.Create(PageForm);
  mypage.AdvPageControl := PageForm;
  mypage.Caption := 'Tambah PNS ';
  mypage.Parent := PageForm;
  mypage.Visible := True;
  mypage.ShowClose := true;
  mypage.AdvPageControl.ActivePage := MyPage;

  //frm_Tpns := Tfrm_Tpns.Create(MyPage);
  //frm_Tpns.Parent := MyPage;
  //frm_Tpns.Align := alClient;
  //frm_Tpns.BorderStyle := bsNone;
  //frm_Tpns.Show;

  //PageForm.ActivePage := MyPage;
{
if frm_Tpns=nil then
     frm_Tpns:=Tfrm_Tpns.Create(Application);
     frm_Tpns.BringToFront;
 }


     end;

procedure TFMenu.ambahPegKontrak1Click(Sender: TObject);
var
  MyPage1: TadvTabSheet;
begin
  mypage1 := tadvtabsheet.Create(PageForm);
  mypage1.AdvPageControl := PageForm;
  mypage1.Caption := 'Tambah BLUD ';
  mypage1.Parent := PageForm;
  mypage1.Visible := True;
  mypage1.ShowClose := true;
  mypage1.AdvPageControl.ActivePage := MyPage1;

  //frm_tkontrak := Tfrm_tkontrak.Create(MyPage1);
  //frm_tkontrak.Parent := MyPage1;
  //frm_tkontrak.Align := alClient;
  //frm_tkontrak.BorderStyle := bsNone;
  //frm_tkontrak.Show;

 // PageForm.ActivePage := MyPage1;
{
if frm_tkontrak=nil then
   frm_tkontrak:=Tfrm_tkontrak.Create(Application);
   frm_tkontrak.BringToFront;
 }
end;

procedure TFMenu.sql1Click(Sender: TObject);
begin
 // Application.CreateForm(Tfrmsql,frmsql);
//  frmsql.ShowModal;
 // frmsql.Free;
end;

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

procedure TFMenu.SelipPTT1Click(Sender: TObject);
//var
 // MyPage6: TadvTabSheet;
begin
  {
  mypage6 := tadvtabsheet.Create(PageForm);
  mypage6.AdvPageControl := PageForm;
  mypage6.Caption := 'Selip PTT ';
  mypage6.Parent := PageForm;
  mypage6.Visible := True;
  mypage6.ShowClose := true;
  mypage6.AdvPageControl.ActivePage := MyPage6;
  frm_ptt := Tfrm_ptt.Create(MyPage6);
  frm_ptt.Parent := MyPage6;
  frm_ptt.Align := alClient;
  frm_ptt.BorderStyle := bsNone;
  frm_ptt.Show;
  }
//  PageForm.ActivePage := MyPage6;
  //Form PTT
  {
  if frm_ptt=nil then
   frm_ptt:=Tfrm_ptt.Create(Application);
   frm_ptt.BringToFront;
   }
end;

procedure TFMenu.UpdateSQL1Click(Sender: TObject);
{
var
  script: TMyScript;
 }
begin
// script := TMyScript.Create(nil);
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
  Application.MessageBox('Update database...!!','Update database.',MB_OK+mb_iconinformation);
  fmenu.Caption := 'Proses Update Selesai';
  end;

procedure TFMenu.ambahPTT1Click(Sender: TObject);
//var
//  MyPage3: TadvTabSheet;
begin
  {
  mypage3 := tadvtabsheet.Create(PageForm);
  mypage3.AdvPageControl := PageForm;
  mypage3.Caption := 'Tambah PTT ';
  mypage3.Parent := PageForm;
  mypage3.Visible := True;
  mypage3.ShowClose := true;
  mypage3.AdvPageControl.ActivePage := MyPage3;

  frm_tptt := Tfrm_tptt.Create(MyPage3);
  frm_tptt.Parent := MyPage3;
  frm_tptt.Align := alClient;
  frm_tptt.BorderStyle := bsNone;
  frm_tptt.Show;
//  PageForm.ActivePage := MyPage3;
{
if frm_tptt=nil then
   frm_tptt:=Tfrm_tptt.Create(Application);
   frm_tptt.BringToFront;
 }
end;

procedure TFMenu.dxTpnsClick(Sender: TObject);
begin
ambahPegPNS1Click(Sender);
end;

procedure TFMenu.dxkeluarClick(Sender: TObject);
begin
close;
end;

procedure TFMenu.dxBludClick(Sender: TObject);
begin
ambahPegKontrak1Click(Sender);
end;

procedure TFMenu.dxpttnonClick(Sender: TObject);
begin
//ambahPTT1Click(Sender);
end;

procedure TFMenu.dxrestoreClick(Sender: TObject);
begin
Restoredatabase1Click(Sender);
end;

procedure TFMenu.dxupdateClick(Sender: TObject);
begin
UpdateSQL1Click(Sender);
end;

procedure TFMenu.dxsbludClick(Sender: TObject);
begin
SuratKeluar1Click(Sender);
end;

procedure TFMenu.dxspttClick(Sender: TObject);
begin
//SelipPTT1Click(Sender);
end;

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

procedure TFMenu.mnuRekeningClick(Sender: TObject);
begin
//  if frmRekening=nil then
//   frmRekening:=TfrmRekening.Create(Application);
//  frmRekening.Show;
end;

procedure TFMenu.dxBarLargeButton1Click(Sender: TObject);
begin
close;
end;

procedure TFMenu.dxbrlrgbtn2Click(Sender: TObject);
var
  MyPage4: TadvTabSheet;
begin
  {
  mypage4 := tadvtabsheet.Create(PageForm);
  mypage4.AdvPageControl := PageForm;
  mypage4.Caption := 'Data Gizi Irja';
  mypage4.Parent := PageForm;
  mypage4.Visible := True;
  mypage4.ShowClose := true;
  mypage4.AdvPageControl.ActivePage := MyPage4;

  F_irnagz := TF_irnagz.Create(MyPage4);
  F_irnagz.Parent := MyPage4;
  F_irnagz.Align := alClient;
  F_irnagz.BorderStyle := bsNone;
  F_irnagz.Show;
   }
  {
  if frm_pns=nil then
     frm_pns:=Tfrm_pns.Create(Application);
     frm_pns.BringToFront;
   }

end;

procedure TFMenu.dxbrlrgbtn3Click(Sender: TObject);
var
  MyPage5: TadvTabSheet;
begin
  mypage5 := tadvtabsheet.Create(PageForm);
  mypage5.AdvPageControl := PageForm;
  mypage5.Caption := 'Selip PTT-PK ';
  mypage5.Parent := PageForm;
  mypage5.Visible := True;
  mypage5.ShowClose := true;
  mypage5.AdvPageControl.ActivePage := MyPage5;

//  frm_kontrak := Tfrm_kontrak.Create(MyPage5);
///  frm_kontrak.Parent := MyPage5;
 // frm_kontrak.Align := alClient;
//  frm_kontrak.BorderStyle := bsNone;
//  frm_kontrak.Show;
  //F_srtkeluar
  //Application.CreateForm(TF_srtkeluar, F_srtkeluar);
  //F_srtkeluar.ShowModal;
  //F_srtkeluar.Free;

  {
  if  frm_kontrak=nil then
    frm_kontrak:=Tfrm_kontrak.Create(Application);
    frm_kontrak.BringToFront;
   }

end;

procedure TFMenu.dxbrlrgbtn4Click(Sender: TObject);
var
	fileku,dir : string;
	trs : Boolean;
begin
//back dulu
  dlgSave1.Title := 'Back up data ';
  dlgSave1.InitialDir := apdirback;
  dlgSave1.Filter := 'back_database|*.bck';
  dlgSave1.FileName := 'dbgizi18.02_'+ FormatDatetime('yyyymmdd_hhss',now)+'.bck';
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

procedure TFMenu.dxbrlrgbtn5Click(Sender: TObject);
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

procedure TFMenu.dxbrlrgbtn6Click(Sender: TObject);
begin
// script := TMyScript.Create(nil);
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
  Application.MessageBox('Update database...!!','Update database.',MB_OK+mb_iconinformation);
  fmenu.Caption := 'Proses Update Selesai';
end;

procedure TFMenu.dxbrlrgbtn7Click(Sender: TObject);
var
  MyPage5: TadvTabSheet;
begin
  mypage5 := tadvtabsheet.Create(PageForm);
  mypage5.AdvPageControl := PageForm;
  mypage5.Caption := 'Data cetak';
  mypage5.Parent := PageForm;
  mypage5.Visible := True;
  mypage5.ShowClose := true;
  mypage5.AdvPageControl.ActivePage := MyPage5;

  frm_cetak := Tfrm_cetak.Create(MyPage5);
  frm_cetak.Parent := MyPage5;
  frm_cetak.Align := alClient;
  frm_cetak.BorderStyle := bsNone;
  frm_cetak.Show;
end;

procedure TFMenu.dxbrlrgbtn8Click(Sender: TObject);
begin
//if frm_tkontrak=nil then
//   frm_tkontrak:=Tfrm_tkontrak.Create(Application);
//   frm_tkontrak.BringToFront;
end;

end.
