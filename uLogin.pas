unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxButtons, DB, MemDS, DBAccess, MyAccess, ExtCtrls;

type
  TFlogin = class(TForm)
    eUserName: TEdit;
    bLogin: TcxButton;
    bKeluar: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    MyStoredProc1: TMyStoredProc;
    Edit1: TEdit;
    Label3: TLabel;
    LsSem: TListBox;
    ePassword: TEdit;
    tmr1: TTimer;
    procedure bLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bKeluarClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure eUserNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ePasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AturMenu;
    //function ApplayHakAkses(vHakAkses: String) : Boolean;
    //function Login(vUser,vPassw,vSID:String):String;

  end;

var
  Flogin: TFlogin;

implementation

uses UnModul,UnMenu;

{$R *.dfm}

procedure TFLogin.AturMenu;
var
  i,j,k:Integer;
  nNoMen:Integer;
  nMen:string;
  MenSem:string;
  nAktif:Boolean;
  qlogin1 : TMyQuery;
  A:array [0..10] of integer;
begin
  {
  qlogin1 := TMyQuery.Create(nil);
  qlogin1.Connection := DmModul.con1;
  qlogin1.Active := false;
  qlogin1.Close;
  qlogin1.SQL.Clear;
  qlogin1.SQL.Text := 'select * from pengguna where Nm='+
  QuotedStr(eUserName.Text)+' and Pass='+
  QuotedStr(ePassword.Text)+'';
  qlogin1.Open;


  for i:=1 to qlogin1.RecordCount do
  begin
    qlogin1.RecNo:=i;
    nMen:='';
    LsSem.Clear;
    MenSem:=qlogin1.FieldByName('NoMenu').AsString;
    nAktif:=qlogin1['Ak'];

    for j:=1 to Length(MenSem) do
    begin
      if MenSem[j]='.' then
      begin
        LsSem.Items.Add(nMen);
        nMen:='';
      end
      else
        nMen:=nMen+MenSem[j];
    end;
    for J:=0 to LsSem.Items.Count -1 do
    begin
      nNoMen:=StrToInt(LsSem.Items[j]);
      A[j]:=nNoMen;
    end;

    j:=j-1;
    Case j of
 {
    0:FMenu.MainMenu1.Items[A[0]].Enabled:=nAktif;
    1:FMenu.MainMenu1.Items[A[0]].Items[a[1]].Enabled:=nAktif;
    2:FMenu.MainMenu1.Items[A[0]].Items[A[1]].Items[A[2]].Enabled:=nAktif;
    3:FMenu.MainMenu1.Items[A[0]].Items[A[1]].Items[A[2]].Items[A[3]].Enabled:=nAktif;
    4:FMenu.MainMenu1.Items[A[0]].Items[A[1]].Items[A[2]].Items[A[3]].Items[A[4]].Enabled:=nAktif;
  }
    {
    5:FMenu.MainMenu1.Items[A[0]].Items[A[1]].Items[A[2]].Items[A[3]].Items[A[4]].Enabled:=nAktif;
    6:FMenu.MainMenu1.Items[A[0]].Items[A[1]].Items[A[2]].Items[A[3]].Items[A[4]].Enabled:=nAktif;
    7:FMenu.MainMenu1.Items[A[0]].Items[A[1]].Items[A[2]].Items[A[3]].Items[A[4]].Enabled:=nAktif;
    8:FMenu.MainMenu1.Items[A[0]].Items[A[1]].Items[A[2]].Items[A[3]].Items[A[4]].Enabled:=nAktif;
    }
 //   end;

//  end;
  //FMenu.cxtbsht1.Visible :=true;

end;


procedure TFlogin.bLoginClick(Sender: TObject);
var
qlogin : TMyQuery;
//qversi : TMyQuery;
begin
  //fWait.Show;
  Application.ProcessMessages;
  if (eUserName.Text = 'Adm') and (ePassword.Text = '123') then
  begin
    Application.ProcessMessages;
    MessageDlg('User & Pasword Admin',mtError,[mbOK],0);

  end
  else if (eUserName.Text <> '') and (ePassword.Text <> '') then
  begin
    //Login(eUserName.Text,ePassword.Text);
    qlogin := TMyQuery.Create(nil);
    //qversi := TMyQuery.Create(nil);
 try
  qlogin.Connection := DmModul.con1;
  qlogin.Active := false;
  qlogin.SQL.Clear;
  qlogin.SQL.Text := 'select * from pengguna where Nm='+
  QuotedStr(eUserName.Text)+' and Pass='+
  QuotedStr(ePassword.Text)+'';
  qlogin.Open;

  if qlogin.RecordCount > 0 then
  begin
   nPengg:=eUserName.Text;
   nPass:=ePassword.Text;
   FMenu.dxStatusBar1.Panels[1].Text:= qlogin.FieldByName('nm').AsString;
   AturMenu;
   close;
   //apRunAplikasi:= True;

  end
  else
  begin
    Application.MessageBox('User tidak dikenal','Login',
    MB_OK+MB_ICONERROR);
  end;
 finally
   qlogin.close;
 end;
  end
  else
  begin
    MessageDlg('User & Pasword HARUS DIISI DENGAN BENAR',mtError,[mbOK],0);
    eUserName.SetFocus;
  end;
end;

procedure TFlogin.FormShow(Sender: TObject);
begin
Application.ProcessMessages;
  Left := 310;
  Top := 310;
  eUserName.Text := '';
  ePassword.Text := '';
  eUserName.SetFocus;
end;

procedure TFlogin.bKeluarClick(Sender: TObject);
begin
 if MessageDlg('Yakin akan keluar dari aplikasi?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
    DmModul.con1.Connected:=false;
    Application.Terminate;
    //Action:=caNone;
    end
  else
    Application.Run;
end;

{
function TfLogin.ApplayHakAkses(vHakAkses: String): Boolean;
var
  i    : integer;
begin
  Result := False;
  with DmModul.Q do
  begin
    Close;
    SQL.Text := 'select ket from group_hak_akses where kode=:kode';
    try
      Params[0].AsString := vHakAkses;
      Open;
      //ShowMessage(IntToStr(RecordCount));
      if recordcount > 0 then
      begin
        for i := 0 to FMenu.  fMain.dxNavBar1.Items.Count-1 do
        begin
          //if fMain.dxNavBar1.Items[i] is TdxNavBarItem then
          begin
            with FMenu.Components[i] as tMenuItem do
            begin
              if DM.Q.Locate('ket',uppercase(name),[]) or
                (uppercase(Name) = 'SISTEM1') or
                  (uppercase(Name) = 'MENULOGIN') or
                  (uppercase(Name) = 'MENUKUNCISISTEM') or
                  (uppercase(Name) = 'MENUKELUAR') or
                (uppercase(Name) = 'MHELP') or
                  (uppercase(Name) = 'HELP1') or
                  (uppercase(Name) = 'ABOUT1')
                then
                  Visible := true
              else
                  Visible := false;
            end;
          end;
        end;
        Result := True;

      end
      else
      begin
        Result := False;
      end;
    except on E: Exception do
    begin
      //ErrorProg('Error, Select ket from group_hak_ases where kode= '+vHakAkses+' Ket error '+E.Message);
    end;
    end;
  end;

end;
}

{
function TfLogin.Login(vUser, vPassw, vSID: String): String;
var
  uniSP : TMyStoredProc;
  SData,SField : TStringList;
  Thn,Bln,Hr : Word;
  vTempStr : String;
begin
  try
    //fWait.Show;
    Application.ProcessMessages;
    SData := TStringList.Create;
    SField := TStringList.Create;
    uniSP := TMyStoredProc.Create(Application);
    uniSP.Connection := DmModul.con1;
    uniSP.Close;
    uniSP.StoredProcName := 'login';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_user_name',ptInput).AsString := vUser;
      uniSP.Params.CreateParam(ftString,'v_password',ptInput).AsString := vPassw;
      //uniSP.Params.CreateParam(ftString,'v_id_alat',ptInput).AsString := vSID;
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;
      //fWait.Hide;
      Application.ProcessMessages;
      if Pos('Error',uniSP.Params.ParamValues['RESULT']) > 0 then
      begin
        MessageDlg('Error Login, Ket error : '+uniSP.Params.ParamValues['RESULT'],mtError,[mbOK],0);
      end
      else
      begin
        SData.Clear;
        //SData.Text := ParsingStr(uniSP.Params.ParamValues['RESULT'],'#');

        if SData.Strings[0]='1' then
        begin
          SField.Clear;
          //SField.Text := ParsingStr(SData.Strings[1],'|');
          if SField.Count = 28 then
          begin


            vIDPetugas := SField.Strings[0];
            vNamaPetugas := SField.Strings[3];
            vLevelPetugas := SField.Strings[11];
            vJabatanPetugas := SField.Strings[7];

            Log('LOGIN ONLINE SUKSES, USER '+vIDPetugas+' NAMA LENGKAP '+vNamaPetugas+' HAK AKSES '+vLevelPetugas);
            fMain.StatusBar1.Panels[1].Text := FormatDateTime('dddd dd-mm-yyyy',TTglSrvSkr);
            fMain.StatusBar1.Panels[2].Text := 'ON-LINE';
            fMain.StatusBar1.Panels[3].Text := '* '+vNamaPetugas+'*';
            MessageDlgInformation('------------------------------------------------------------------------------------'+#$D#$A+
                       'SELAMAT DATANG DI SISTEM INFORMASI '+#$D#$A+
                       '------------------------------------------------------------------------------------'+#$D#$A+
                       'ID PETUGAS              : '+ eUserName.Text+#$D#$A+
                       'NAMA LENGKAP     : '+ vNamaPetugas+#$D#$A+
                       'TANGGAL                 : '+ UpperCase(SField.Strings[27])+#$D#$A+
                       '------------------------------------------------------------------------------------'+#$D#$A+
                       'SELAMAT BEKERJA !!!'+#$D#$A+
                       '------------------------------------------------------------------------------------');

            Close;
            //fFormAktif := nil;

            //fMain.MenuAktif;
          end
          else
          begin
            MessageDlg('Login Gagal'+#$D#$A+
                       'Data Response Tidak Valid : '+SData.Strings[1]+#$D#$A+
                       'Terimakasih',mtWarning,[mbOK],0);
          end;
        end
        else
        begin
          MessageDlg('Login Gagal'+#$D#$A+
                     'Keterangan : '+SData.Strings[1]+#$D#$A+
                     'Terimakasih',mtWarning,[mbOK],0);
        end;
      end;
    except on E: Exception do
    begin
      //ErrorProgDialog('Error,..login.Open%Error :'+E.Message);
    end
    end;
  finally
    FreeAndNil(uniSP);
    FreeAndNil(SData);
    FreeAndNil(SField);
  end;
end;
}
procedure TFlogin.tmr1Timer(Sender: TObject);
begin
if edit1.Font.Color=clred then
  begin
    edit1.Font.Color:=clWhite;
  end
  else
  begin
    edit1.Font.Color:=clRed;
  end;
end;

procedure TFlogin.eUserNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=13)then
    ePassword.SetFocus;
end;

procedure TFlogin.ePasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=13)then
    bLoginClick(Sender);
end;

end.
