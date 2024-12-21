unit UnGantiBrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmGantiBarang = class(TForm)
    Panel1: TPanel;
    btn1: TSpeedButton;
    SpeedButton1: TSpeedButton;
    lblnama: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label36: TLabel;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    lbl1: TLabel;
    lbl2: TLabel;
    ed_hrg: TEdit;
    chkgrid: TCheckBox;
    BitBtn1: TBitBtn;
    ed_jml: TEdit;
    ed_satuan: TComboBox;
    ed_nama: TMemo;
    Ed_disk_d: TEdit;
    CheckBox1: TCheckBox;
    Ed_t1d: TEdit;
    ed_t2_d: TEdit;
    edT1disk: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGantiBarang: TFrmGantiBarang;

implementation
 uses uconfig,UnModul,UFunctions,UF_dbsql,UF_setting, UnCarisp,UnCarisp2,UnPembelianBrg;
{$R *.dfm}

procedure TFrmGantiBarang.BitBtn1Click(Sender: TObject);
begin
FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_ambilbarang'; //nama sp
  LsvSetCol('Nama|satuan|harga|',
  '300|60|80|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxxxxxxx'); //Tabel / Query
  FCarisp.LsField.Items.Add('nm_obat');
  FCarisp.LsField.Items.Add('sat_jual');
  FCarisp.LsField.Items.Add('hrg_obat');
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

procedure TFrmGantiBarang.btn1Click(Sender: TObject);
begin
// hitungppn;
 if chkgrid.Checked=true then
   begin
//     Fsp17m.ed_nama.Text:=ed_nama.Text;
//     Fsp17m.ed_jml.Text:=ed_jml.Text;
//     Fsp17m.ed_satuan.Text:=ed_satuan.Text;
//     Fsp17m.ed_hrg.Text:=clearDot(ed_hrg.Text);
//     Fsp17m.CheckBox1.Checked := True;
//     Fsp17m.ed_Tdisk.Text:=clearDot(edT1disk.Text);
//     HITUNG_brg;
  //   Fsp17m.Total;

   Close;

   end
   else
   begin
//     Fsp17m.ed_nama.Text:=ed_nama.Text;
//     Fsp17m.ed_jml.Text:=ed_jml.Text;
//     Fsp17m.ed_satuan.Text:=ed_satuan.Text;
//     Fsp17m.ed_hrg.Text:=clearDot(ed_hrg.Text);
//     Fsp17m.CheckBox1.Checked := True;
//     Fsp17m.ed_Tdisk.Text:=clearDot(edT1disk.Text);
//     HITUNG_brg;
//     Fsp17m.Total;
     Close;

   end;
end;

end.
