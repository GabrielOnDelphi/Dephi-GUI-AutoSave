object frmContainer: TfrmContainer
  Left = 0
  Top = 0
  Caption = 'Container'
  ClientHeight = 220
  ClientWidth = 281
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object grpContainer: TGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 40
    Width = 261
    Height = 139
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Container on second form'
    Color = 15194831
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 111
      Width = 257
      Height = 26
      Align = alBottom
      Alignment = taCenter
      Caption = 
        'This will demonstrate that the controls on the second form are s' +
        'aved/restored also.'
      WordWrap = True
    end
    object chk1: TCheckBox
      Left = 40
      Top = 33
      Width = 97
      Height = 17
      Caption = 'CheckBox 1'
      TabOrder = 0
    end
    object chk2: TCheckBox
      Left = 40
      Top = 59
      Width = 104
      Height = 17
      Caption = 'CheckBox 2'
      TabOrder = 1
    end
  end
end
