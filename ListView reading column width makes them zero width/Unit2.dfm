object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 247
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 303
    Height = 18
    Caption = 'Notice columns 0 and 2 are missing at runtime'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10040064
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ListView1: TListView
    Left = 24
    Top = 48
    Width = 353
    Height = 150
    Columns = <
      item
        Caption = 'Delphi 5'
        Width = 80
      end
      item
        Caption = 'Delphi 7'
        Width = 80
      end
      item
        Caption = 'Delphi XE6'
        Width = 80
      end
      item
        Caption = 'Delphi 10.3'
      end>
    TabOrder = 0
    ViewStyle = vsReport
    OnResize = ListView1Resize
  end
end
