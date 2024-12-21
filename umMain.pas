unit umMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, dxmdaset;

type
  TmMain = class(TDataModule)
    dxMeeXL: TdxMemData;
    dxRow: TIntegerField;
    dxCol: TIntegerField;
    dxRowSpan: TIntegerField;
    dxColSpan: TIntegerField;
    dxValue: TStringField;
    dxNumberFormat: TStringField;
    dxHAlignment: TIntegerField;
    dxVAlignment: TIntegerField;
    dxWrapText: TIntegerField;
    dxIndentLevel: TIntegerField;
    dxFontColor: TIntegerField;
    dxFontName: TStringField;
    dxFontSize: TIntegerField;
    dxFontStyle: TStringField;
    dxUnderline: TIntegerField;
    dxLBorderColor: TIntegerField;
    dxLBorderStyle: TIntegerField;
    dxLBorderWeight: TIntegerField;
    dxTBorderColor: TIntegerField;
    dxTBorderStyle: TIntegerField;
    dxTBorderWeight: TIntegerField;
    dxRBorderColor: TIntegerField;
    dxRBorderStyle: TIntegerField;
    dxRBorderWeight: TIntegerField;
    dxBBorderColor: TIntegerField;
    dxBBorderStyle: TIntegerField;
    dxBBorderWeight: TIntegerField;
    dxPattern: TIntegerField;
    dxPatternCIndex: TIntegerField;
    dxColorIndex: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mMain: TmMain;

implementation

{$R *.DFM}

end.
