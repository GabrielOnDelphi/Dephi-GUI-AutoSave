UNIT SecondForm;

INTERFACE

USES
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

TYPE
  TfrmContainer = class(TForm)
    Label1         : TLabel;
    chk1: TCheckBox;
    grpContainer   : TGroupBox;
    chk2: TCheckBox;
    procedure FormDestroy(Sender: TObject);
  end;

VAR
  frmContainer: TfrmContainer;

IMPLEMENTATION {$R *.dfm}

USES ccINIFileVCL;


procedure TfrmContainer.FormDestroy(Sender: TObject);
begin
 SaveForm(Self);
end;

end.
