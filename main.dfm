object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1047#1072#1076#1072#1095#1072'. '#1056#1080#1089#1091#1077#1084' '#1082#1088#1091#1075' + '#1084#1072#1089#1096#1090#1072#1073' + '#1094#1074#1077#1090'.'
  ClientHeight = 321
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 45
    Height = 13
    Caption = #1052#1072#1089#1096#1090#1072#1073
  end
  object cbScale: TComboBox
    Left = 8
    Top = 27
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'cbScale'
    OnChange = cbScaleChange
  end
  object rgColor: TRadioGroup
    Left = 8
    Top = 54
    Width = 145
    Height = 99
    Caption = #1062#1074#1077#1090
    TabOrder = 1
    OnClick = rgColorClick
  end
end
