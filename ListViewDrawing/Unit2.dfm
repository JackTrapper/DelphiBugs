object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 205
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 40
    Top = 28
    Width = 353
    Height = 150
    Columns = <
      item
        Width = 60
      end
      item
        Width = 120
      end
      item
        Width = 120
      end>
    TabOrder = 0
    ViewStyle = vsReport
    OnCustomDrawSubItem = ListView1CustomDrawSubItem
  end
end
