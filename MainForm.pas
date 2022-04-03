UNIT MainForm;

{-------------------------------------------------------------------------------------------------------------
This application will demonstrate:

  1. How to save the state of all GUI controls on application shutdown and then restore them loaded on application startup:
       * checkboxes
       * radiobuttons
       * cubic custom controls
       * form's position
       * controls on the second form

  2. How to send messages to the AppLog

  This demo app requires the Cubic Light Saber library.
-------------------------------------------------------------------------------------------------------------}

INTERFACE

USES
  WinApi.Windows, WinApi.Messages, System.SysUtils, System.Classes, Vcl.StdCtrls, VCL.Forms, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Samples.Spin, Vcl.ComCtrls, System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.Dialogs,
  ccCore, ccINIFile, FormLog, clRichLogTrack;

TYPE
 TfrmTester = class(TForm)
    FontDialog: TFontDialog;
    GroupBox1: TGroupBox;
    chkAutoSave: TCheckBox;
    radShow: TRadioButton;
    MainMenu: TMainMenu;
    File1: TMenuItem;
    Autosave1: TMenuItem;
    ActionList: TActionList;
    actAutoSave: TAction;
    GroupBox2: TGroupBox;
    Button4: TButton;
    Button3: TButton;
    btnShowLog: TButton;
    Button2: TButton;
    actSaveGUI: TAction;
    actLoadGui: TAction;
    SaveGUItoINI1: TMenuItem;
    LoadGUIfromINI1: TMenuItem;
    radShowNot: TRadioButton;
    Button1: TButton;
    btnLoad: TButton;
    Button5: TButton;
    procedure FormCreate  (Sender: TObject);
    procedure FormDestroy (Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure actAutoSaveExecute(Sender: TObject);
    procedure btnShowLogClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure actSaveGUIExecute(Sender: TObject);
    procedure actLoadGuiExecute(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    procedure LateInitialize(VAR message: TMessage);  message MSG_LateInitialize;
  public
 end;

VAR
   frmTester: TfrmTester;

IMPLEMENTATION  {$R *.dfm}

USES
   ccAppData, ccIO, ccINIFileVCL, SecondForm;



{--------------------------------------------------------------------------------------------------
   APP START/CLOSE
--------------------------------------------------------------------------------------------------}
procedure TfrmTester.FormCreate(Sender: TObject);
begin
 PostMessage(Self.Handle, MSG_LateInitialize, 0, 0);   { This will call LateInitialize }
end;


procedure TfrmTester.LateInitialize;
begin
 LoadForm(frmTester);
 LoadForm(frmContainer);

 if AppRunningFirstTime
 then MesajInfo(
           'This application will demonstrate:'+ CRLF+
           CRLF+
           '1. How to save the state of all GUI controls on application shutdown and then restore them loaded on application startup:'+ CRLF+
                '* checkboxes'+ CRLF+
                '* radiobuttons'+ CRLF+
                '* cubic custom controls'+ CRLF+
                '* form''s position'+ CRLF+
                '* controls on the second form'+ CRLF+
                CRLF+
           '2. How to send messages to the AppLog');

 if radShow.Checked
 then Button5Click(Self);

 AppInitializing:= FALSE;
 LogAddImpo('Application started ok.');
end;

//todo 1: the log's trackbar is not saved!

procedure TfrmTester.FormDestroy(Sender: TObject);
begin
 LogAddWarn('Application shutting down...');

 if actAutoSave.Checked
 then SaveForm(Self);

 ReleaseLogForm;
end;




procedure TfrmTester.actSaveGUIExecute(Sender: TObject);
begin
 SaveForm(Self);
end;

procedure TfrmTester.actLoadGuiExecute(Sender: TObject);
begin
 LoadForm(Self);
end;

procedure TfrmTester.btnShowLogClick(Sender: TObject);
begin
 ShowLog;
end;


procedure TfrmTester.actAutoSaveExecute(Sender: TObject);
begin
 //The status of this action (autocheck) will be stored to the ini file also
end;


procedure TfrmTester.Button2Click(Sender: TObject);
begin
 if FontDialog.Execute
 then Font:= FontDialog.Font;
end;


procedure TfrmTester.Button3Click(Sender: TObject);
begin
 LogAddVerb('Some less important information');
 MesajInfo('You need to set log''s verbosity to "verbose" in order to see this message.');
end;


procedure TfrmTester.Button4Click(Sender: TObject);
begin
 LogAddError('Error encountered!');
end;


procedure TfrmTester.Button5Click(Sender: TObject);
begin
 frmContainer.grpContainer.Parent:= Self;
 frmContainer.grpContainer.Align:= alBottom;
end;

end.






































.3
