object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 368
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 24
    Top = 24
    Width = 250
    Height = 120
    Caption = 'Panel1'
    TabOrder = 0
    object ListView1: TListView
      Left = 1
      Top = 1
      Width = 200
      Height = 235
      Columns = <>
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 296
    Top = 24
    Width = 250
    Height = 120
    Caption = 'Panel1'
    TabOrder = 1
    object WebBrowser1: TWebBrowser
      Left = 1
      Top = 1
      Width = 200
      Height = 235
      TabOrder = 0
      ControlData = {
        4C000000AC1400004A1800000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object Button1: TButton
    Left = 576
    Top = 24
    Width = 145
    Height = 25
    Caption = 'Set Panels to Autosize'
    TabOrder = 2
    OnClick = Button1Click
  end
end
