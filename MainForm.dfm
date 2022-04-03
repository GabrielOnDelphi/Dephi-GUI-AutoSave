object frmTester: TfrmTester
  Left = 785
  Top = 327
  Margins.Top = 5
  Anchors = []
  Caption = 'Cubic Core Functions'
  ClientHeight = 489
  ClientWidth = 410
  Color = clBtnFace
  Constraints.MinHeight = 100
  Constraints.MinWidth = 90
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesigned
  ScreenSnap = True
  ShowHint = True
  SnapBuffer = 4
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 400
    Height = 206
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    Caption = 'Demo GUI'
    TabOrder = 0
    DesignSize = (
      400
      206)
    object chkAutoSave: TCheckBox
      AlignWithMargins = True
      Left = 31
      Top = 23
      Width = 156
      Height = 17
      Hint = 
        'You need to manually press the "Save" button if this checkbox is' +
        ' not checked.'
      Action = actAutoSave
      State = cbChecked
      TabOrder = 0
    end
    object radShow: TRadioButton
      AlignWithMargins = True
      Left = 31
      Top = 73
      Width = 219
      Height = 17
      Caption = 'Show second form at start up'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 292
      Top = 22
      Width = 103
      Height = 36
      Anchors = [akTop, akRight]
      Caption = 'TEST FONT'
      TabOrder = 2
      OnClick = Button2Click
    end
    object radShowNot: TRadioButton
      AlignWithMargins = True
      Left = 31
      Top = 96
      Width = 219
      Height = 17
      Caption = 'Don'#39't show second form at start up'
      TabOrder = 3
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 5
      Top = 131
      Width = 390
      Height = 32
      Action = actSaveGUI
      Align = alBottom
      TabOrder = 4
    end
    object btnLoad: TButton
      AlignWithMargins = True
      Left = 5
      Top = 169
      Width = 390
      Height = 32
      Action = actLoadGui
      Align = alBottom
      TabOrder = 5
    end
    object Button5: TButton
      AlignWithMargins = True
      Left = 292
      Top = 76
      Width = 103
      Height = 36
      Anchors = [akTop, akRight]
      Caption = 'TEST SECOND FORM'
      TabOrder = 6
      WordWrap = True
      OnClick = Button5Click
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 5
    Top = 221
    Width = 400
    Height = 114
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    Caption = 'Demo Log'
    TabOrder = 1
    object Button4: TButton
      Left = 32
      Top = 35
      Width = 127
      Height = 25
      Margins.Right = 1
      Caption = 'Send error msg'
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button3: TButton
      Left = 182
      Top = 35
      Width = 127
      Height = 25
      Caption = 'Send verbose msg'
      TabOrder = 1
      OnClick = Button3Click
    end
    object btnShowLog: TButton
      AlignWithMargins = True
      Left = 24
      Top = 78
      Width = 352
      Height = 31
      Margins.Left = 22
      Margins.Top = 9
      Margins.Right = 22
      Align = alBottom
      Caption = 'Show Log'
      TabOrder = 2
      OnClick = btnShowLogClick
    end
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 106
    Top = 23
  end
  object MainMenu: TMainMenu
    Left = 176
    Top = 24
    object File1: TMenuItem
      Caption = 'File'
      object Autosave1: TMenuItem
        Action = actAutoSave
        AutoCheck = True
      end
      object SaveGUItoINI1: TMenuItem
        Action = actSaveGUI
      end
      object LoadGUIfromINI1: TMenuItem
        Action = actLoadGui
      end
    end
  end
  object ActionList: TActionList
    Left = 34
    Top = 23
    object actAutoSave: TAction
      AutoCheck = True
      Caption = 'Auto save GUI to INI'
      Checked = True
      ShortCut = 16449
      OnExecute = actAutoSaveExecute
    end
    object actSaveGUI: TAction
      Caption = 'Save GUI to INI'
      ShortCut = 16467
      OnExecute = actSaveGUIExecute
    end
    object actLoadGui: TAction
      Caption = 'Load GUI from INI'
      ShortCut = 16460
      OnExecute = actLoadGuiExecute
    end
  end
end
