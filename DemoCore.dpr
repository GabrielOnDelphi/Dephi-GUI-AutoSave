program DemoCore;

uses
  fastmm4,
  Forms,
  MainForm in 'MainForm.pas' {frmTester},
  SecondForm in 'SecondForm.pas' {frmContainer},
  ccINIFile in '..\..\ccINIFile.pas',
  FormLog in '..\..\FormLog.pas',
  ccAppData in '..\..\ccAppData.pas',
  cvINIFileEx in '..\..\..\cvINIFileEx.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;    { If true, a taskbar button represents the application's main form and displays its caption. All child forms will stay on top of the MainForm (bad)! If False, a taskbar button represents the application's (hidden) main window and bears the application's Title. Must be True to use Windows (Vista) Aero effects (ive taskbar thumbnails, Dynamic Windows, Windows Flip, Windows Flip 3D). https://stackoverflow.com/questions/66720721/ }
  AppName:= 'Tester cc_IniFileEx';          { Absolutelly critical if you use the SaveForm/LoadForm functionality. This string will be used as the name of the INI file. }
  CreateLogForm;
  Application.CreateForm(TfrmTester, frmTester);
  Application.CreateForm(TfrmContainer, frmContainer);
  frmTester.Show;
  Application.Run;
end.
