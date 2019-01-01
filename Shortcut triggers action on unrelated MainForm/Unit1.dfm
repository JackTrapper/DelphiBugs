object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 186
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 72
    Width = 127
    Height = 13
    Caption = 'Test: Press Ctrl+S to save'
  end
  object Button1: TButton
    Left = 24
    Top = 24
    Width = 113
    Height = 25
    Action = actSave
    TabOrder = 0
  end
  object ActionList1: TActionList
    Left = 288
    Top = 24
    object actSave: TAction
      Caption = '&Save and Close'
      OnExecute = actSaveExecute
    end
  end
  object MainMenu1: TMainMenu
    Left = 200
    Top = 40
    object File1: TMenuItem
      Caption = '&File'
      object SaveandClose1: TMenuItem
        Action = actSave
      end
    end
  end
end
