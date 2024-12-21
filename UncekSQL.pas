unit UncekSQL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmCekSQL = class(TForm)
    memoSQL: TMemo;
    SpeedButton8: TSpeedButton;
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCekSQL: TFrmCekSQL;

implementation

{$R *.dfm}

procedure TFrmCekSQL.SpeedButton8Click(Sender: TObject);
begin
Close;
end;

end.
