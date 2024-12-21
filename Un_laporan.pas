unit Un_laporan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, EXLReportExcelTLB,
  EXLReportBand, EXLReport, MyAccess, DB, MemDS, DBAccess;

type
  Tfrm_Laporan = class(TForm)
    Panel1: TPanel;
    dtgl1: TDateTimePicker;
    dtgl2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    EXLReport1: TEXLReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var        
  frm_Laporan: Tfrm_Laporan;

implementation

uses UnCari,UnModul, UnCari_com,UF_setting,UF_terbilang, UnCari_all;


{$R *.dfm}


procedure Tfrm_Laporan.FormClose(Sender: TObject; var Action: TCloseAction);
///var
 // I,n1,n2,n3,n4:integer;

begin
  frm_laporan:=nil;
  Action:=caFree;
end;

procedure Tfrm_Laporan.Timer1Timer(Sender: TObject);
begin
  {
if LbPerhatian.Font.Color=clBlack then
  LbPerhatian.Font.Color:=clRed
else
  LbPerhatian.Font.Color:=clBlack;
  }
  end;

procedure Tfrm_Laporan.BitBtn1Click(Sender: TObject);
var
// D: TDatabase;
		// Q: TQuery;
 //ds_lap :TMyDataSource;
 sp_lap: TMyStoredProc;
 tgl1 : string;
 tgl2 : string;
begin

  if MessageDlg('Data dengan'+#13+#10+'xxxxxxxx'+#13+#10+
        'akan di Cetak eXCEL, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
    sp_lap := TMyStoredProc.Create(nil);
    //ds_lap := TMyDataSource.Create(nil);
    //try
    tgl1 := FormatDateTime('yyyy-mm-dd',dtgl1.date);
    tgl2 := FormatDateTime('yyyy-mm-dd',dtgl2.date);

    sp_lap.Connection := DmModul.con1;
    sp_lap.Close;
    sp_lap.StoredProcName := 'sp_pendapatan';
    sp_lap.PrepareSQL;
    sp_lap.ParamByName('strTglAwal').AsString := tgl1;
    sp_lap.ParamByName('strTglAkhir').AsString := tgl2;
    sp_lap.Execute;
    //ds_lap.DataSet := sp_lap;
    //    ShowMessage(sp_lap.ParamByName('cari').AsString);
    EXLReport1.template :=ExtractFilePath(Application.ExeName)
    + '\xls\'+'rekapitulasi_pendapatan_obat.xls';
    EXLReport1.DataSet:= sp_lap;
    EXLReport1.TemplSheet :='lap1';
    EXLReport1.Show();
  end;

end;

end.
