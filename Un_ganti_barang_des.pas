unit Un_ganti_barang_des;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,DBTables, DBAccess, MyAccess,
  MemDS;

type
  Tfrm_ganti_brg_des = class(TForm)
    Panel1: TPanel;
    ed_hrg: TEdit;
    Label2: TLabel;
    btn1: TSpeedButton;
    SpeedButton1: TSpeedButton;
    chkgrid: TCheckBox;
    lblnama: TLabel;
    BitBtn1: TBitBtn;
    ed_jml: TEdit;
    ed_satuan: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ed_nama: TMemo;
    Label36: TLabel;
    Ed_disk_d: TEdit;
    CheckBox1: TCheckBox;
    Ed_t1d: TEdit;
    ed_t2_d: TEdit;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    lbl1: TLabel;
    edT1disk: TEdit;
    lbl2: TLabel;
    procedure ed_hrgChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender:TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Ed_disk_dChange(Sender: TObject);
    procedure ed_Tdisk1Change(Sender: TObject);
    procedure ed_jmlChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edT1diskChange(Sender: TObject);
    procedure Ed_t1dChange(Sender: TObject);
    procedure ed_t2_dChange(Sender: TObject);
    procedure ed_jmlKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed_hrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure HITUNG_brg;
    procedure combsat;
  end;

var
  frm_ganti_brg_des: Tfrm_ganti_brg_des;
  jml,hrg,ppn,pajak,n_hrgjd,thrg,ppnkurang :real;
  total1,total2,tdisk,diskper :real;


implementation
uses UnModul,UF_dbsql,UF_setting,UnCarisp,UFunctions,Clipbrd,
  Unsp_medis16, Unsp_medis17,Unsp_medis23_des;
{$R *.dfm}


procedure Tfrm_ganti_brg_des.HITUNG_brg;
begin

  if ed_jml.Text='' then begin
   ShowMessage('Masukan jumlah Qty!');
   ed_jml.SetFocus;
   exit;
  end;

   if ed_hrg.Text='' then begin
   ShowMessage('Masukan Harga Satuan!');
   ed_hrg.SetFocus;
   exit;
  end;

  {
  if ed_hrg.Text='' then begin
   ShowMessage('@ Harga Rp');
   ed_hrg.SetFocus;
   exit;
  end;
   }
  jml :=strtofloat(ed_jml.Text);
  hrgd :=strtofloat(clearDot(ed_hrg.Text));
  ddisk :=strtofloat(clearDot(Ed_disk_d.Text));

  n_t1d := jml * hrgd;

  if CheckBox1.Checked then
    begin
     n_diskd := strtofloat(clearDot(edT1disk.Text));
   end
    else
  begin
   n_diskd := n_t1d * (ddisk /100 );
  end;
//n_diskd := n_t1d * (ddisk /100 );

//Penjumlahan
n_t2d := n_t1d - n_diskd;

edT1disk.text := floattostr (n_diskd);
edT1disk.Color:=clMoneyGreen;
ed_t2_d.text := floattostr (n_t2d);
ed_t2_d.Color:=clMoneyGreen;
Ed_t1d.text := floattostr (n_t1d);
Ed_t1d.Color:=clMoneyGreen;
end;



Procedure Tfrm_ganti_brg_des.combsat;
var
    qcom1ppn : TMyQuery;
begin
    try
      qcom1ppn := TMyQuery.Create(nil);
      qcom1ppn.Connection := DmModul.con1;
      qcom1ppn.Close;
      qcom1ppn.SQL.Text:=
      'Select satuan From satuan order by satuan';
      qcom1ppn.Open;
      ed_satuan.Items.Clear;
while not qcom1ppn.Eof do
begin
ed_satuan.Items.Add(qcom1ppn.FieldByName('satuan').AsString);
qcom1ppn.Next;
end;

finally
qcom1ppn.Close;
qcom1ppn.Free;
end;
end;



procedure Tfrm_ganti_brg_des.ed_hrgChange(Sender: TObject);
begin
if ed_hrg.Text = '' then Exit;
formatRupiah(ed_hrg);
//HITUNG_brg;
//hitungppn;
end;

procedure Tfrm_ganti_brg_des.btn1Click(Sender: TObject);
begin
 // hitungppn;
 if chkgrid.Checked=true then
   begin
   Fsp23m_des.ed_nama.Text:=ed_nama.Text;
   Fsp23m_des.ed_jml.Text:=ed_jml.Text;
   Fsp23m_des.ed_satuan.Text:=ed_satuan.Text;
   Fsp23m_des.ed_hrg.Text:=clearDot(ed_hrg.Text);
   Fsp23m_des.CheckBox1.Checked := True;
   Fsp23m_des.ed_Tdisk.Text:=clearDot(edT1disk.Text);
   HITUNG_brg;
   Fsp23m_des.Total;

   //kosong data
   Close;
   {
   Fsp_medis16.ed_nama.Text:='';
   Fsp_medis16.ed_jml.Text:='0';
   Fsp_medis16.ed_satuan.Text:='';
   Fsp_medis16.ed_hrg.Text:='0';
   Fsp_medis16.CheckBox1.Checked := True;
   Fsp_medis16.ed_Tdisk.Text:='0';
    }
   end
   else
   begin
   Fsp23m_des.ed_nama.Text:=ed_nama.Text;
   Fsp23m_des.ed_jml.Text:=ed_jml.Text;
   Fsp23m_des.ed_satuan.Text:=ed_satuan.Text;
   Fsp23m_des.ed_hrg.Text:=clearDot(ed_hrg.Text);
   Fsp23m_des.CheckBox1.Checked := True;
   Fsp23m_des.ed_Tdisk.Text:=clearDot(edT1disk.Text);
   HITUNG_brg;
   Fsp23m_des.Total;
   Close;
      //kosong data
   {
   Fsp_medis16.ed_nama.Text:='';
   Fsp_medis16.ed_jml.Text:='0';
   Fsp_medis16.ed_satuan.Text:='';
   Fsp_medis16.ed_hrg.Text:='0';
   //Fsp_medis16.CheckBox1.Checked := True;
   Fsp_medis16.ed_Tdisk.Text:='0';
    }

   //Fsp_medis16.SpeedButton6Click(Sender);

   end;

end;

procedure Tfrm_ganti_brg_des.FormCreate(Sender: TObject);
begin
  AktifControl(Self,Panel1, true);
  RightEdit(ed_hrg);
  RightEdit(edT1disk);
  RightEdit(Ed_t1d);
  RightEdit(ed_t2_d);

  combsat;
  //chk1.checked := False;
end;

procedure Tfrm_ganti_brg_des.SpeedButton1Click(Sender: TObject);
begin
 //hitungppn;
 if chkgrid.Checked=true then
   begin
   Fsp17m.ed_nama.Text:=ed_nama.Text;
   Fsp17m.ed_jml.Text:=ed_jml.Text;
   Fsp17m.ed_satuan.Text:=ed_satuan.Text;
   Fsp17m.ed_hrg.Text:=clearDot(ed_hrg.Text);
   Fsp17m.ed_Tdisk.Text:=clearDot(edT1disk.Text);
   Close;
   end
   else
   begin
   Fsp17m.ed_nama.Text:=ed_nama.Text;
   Fsp17m.ed_jml.Text:=ed_jml.Text;
   Fsp17m.ed_satuan.Text:=ed_satuan.Text;
   Fsp17m.ed_hrg.Text:=clearDot(ed_hrg.Text);
   Fsp17m.ed_Tdisk.Text:=clearDot(edT1disk.Text);
   Close;
   //frm_masuk.btn1Click(Sender);
   end;

Close;
//Exit;
//Fsp_medis.ed5.Text:='0';
end;

procedure Tfrm_ganti_brg_des.BitBtn1Click(Sender: TObject);
begin

  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_barang'; //nama sp
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
    ed_nama.Color:=clWhite;
    ed_jml.SetFocus;
  end;


end;

procedure Tfrm_ganti_brg_des.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
begin
edT1disk.Color := clCream;
edT1disk.SetFocus;
end
else
begin
edT1disk.Color := clRed;
end;
end;

procedure Tfrm_ganti_brg_des.Ed_disk_dChange(Sender: TObject);
begin
HITUNG_brg;
end;

procedure Tfrm_ganti_brg_des.ed_Tdisk1Change(Sender: TObject);
begin
HITUNG_brg;
end;

procedure Tfrm_ganti_brg_des.ed_jmlChange(Sender: TObject);
begin
//HITUNG_brg;
end;

procedure Tfrm_ganti_brg_des.SpeedButton2Click(Sender: TObject);
begin
HITUNG_brg;
end;

procedure Tfrm_ganti_brg_des.edT1diskChange(Sender: TObject);
begin
HITUNG_brg;
end;

procedure Tfrm_ganti_brg_des.Ed_t1dChange(Sender: TObject);
begin
if Ed_t1d.Text = '' then Exit;
formatRupiah(Ed_t1d);
end;

procedure Tfrm_ganti_brg_des.ed_t2_dChange(Sender: TObject);
begin
if Ed_t2_d.Text = '' then Exit;
formatRupiah(Ed_t2_d);
end;

procedure Tfrm_ganti_brg_des.ed_jmlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=13)then
   BEGIN
    HITUNG_brg;
 //   btn_tambahClick(Sender);
 //   bt.SetFocus;

end;
end;

procedure Tfrm_ganti_brg_des.ed_hrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=13)then
   BEGIN
    HITUNG_brg;
 //   btn_tambahClick(Sender);
 //   bt.SetFocus;

end;
end;

end.
