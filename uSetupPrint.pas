unit uSetupPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Printers, StdCtrls, ExtCtrls, Buttons;

type
  TfSetupPrint = class(TForm)
    Label1: TLabel;
    CmbPrinter: TComboBox;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    LblPrintAkt: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSetupPrint: TfSetupPrint;

implementation

//uses uCetak;

{$R *.dfm}

function GetDefaultPrinter : string;
var
  ResStr : array[0..255] of char;
begin
  GetProfileString('Windows','device','',ResStr,255);
  Result:=StrPas(ResStr);
end;

procedure SetDefaultPrinter(NewDefPrinter : string);
var
  ResStr : array[0..255] of char;
begin
  StrPCopy(ResStr,NewdefPrinter);
  WriteProfileString ('windows', 'device', ResStr);
  StrCopy (ResStr, 'windows');
  SendMessage (HWND_BROADCAST, WM_WININICHANGE, 0, LongInt(@ResStr));
end;

procedure TfSetupPrint.FormCreate(Sender: TObject);
begin
try
 LblPrintAkt.Caption := GetDefaultPrinter;
 CmbPrinter.Items.Clear;
 CmbPrinter.Items.AddStrings(Printer.Printers);
 CmbPrinter.ItemIndex:=0;
except
 MessageDlg('Belum ada printer yang terinstall !',mtInformation,[mbOK],0);
end;
end;

procedure TfSetupPrint.BitBtn1Click(Sender: TObject);
begin
 SetDefaultPrinter(CmbPrinter.Text);
 try
  LblPrintAkt.Caption := GetDefaultPrinter;
  //fCetak.LblDefPrint.Caption:=LblPrintAkt.Caption;
 except
 end;
end;

procedure TfSetupPrint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=CaFree;
end;

procedure TfSetupPrint.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=27 then
    Close;
end;

procedure TfSetupPrint.BitBtn2Click(Sender: TObject);
begin
 Close;
end;

end.
