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
    ItemIndex = 0
    TabOrder = 0
    Text = '1:1'
    OnChange = cbScaleChange
    Items.Strings = (
      '1:1'
      '1:2'
      '1:3'
      '1:4'
      '1:5'
      '1:6')
  end
  object rgColor: TRadioGroup
    Left = 8
    Top = 54
    Width = 145
    Height = 99
    Caption = #1062#1074#1077#1090
    ItemIndex = 0
    Items.Strings = (
      #1050#1088#1072#1089#1085#1099#1081
      #1047#1077#1083#1077#1085#1099#1081
      #1057#1080#1085#1080#1081)
    TabOrder = 1
    OnClick = rgColorClick
  end
end
