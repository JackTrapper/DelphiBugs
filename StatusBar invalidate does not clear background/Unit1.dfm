object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 212
    Width = 505
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'SimpleText'
    ExplicitLeft = 240
    ExplicitTop = 72
    ExplicitWidth = 0
  end
  object Button1: TButton
    Left = 64
    Top = 56
    Width = 129
    Height = 25
    Caption = 'Invalidate StatusBar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
