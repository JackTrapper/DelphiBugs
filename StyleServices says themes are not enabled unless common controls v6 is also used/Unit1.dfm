object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 303
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object lblStyleServicesAvailable: TLabel
    Left = 32
    Top = 24
    Width = 163
    Height = 21
    Caption = 'StyleServices.Available: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10040064
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 32
    Top = 51
    Width = 457
    Height = 15
    Caption = 
      'Indicates if the Theme API is availble on the operating system (' +
      'i.e. Windows XP or later)'
  end
  object lblIsAppThemed: TLabel
    Left = 32
    Top = 80
    Width = 170
    Height = 21
    Cursor = crHandPoint
    Caption = 'UxTheme.IsAppThemed: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10040064
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Transparent = True
    OnClick = lblIsAppThemedClick
  end
  object Label3: TLabel
    Left = 32
    Top = 107
    Width = 481
    Height = 15
    Caption = 
      'WinAPI: Reports whether the current application'#39's user interface' +
      ' displays using visual styles.'
  end
  object lblCommonControlsVersion: TLabel
    Left = 32
    Top = 128
    Width = 191
    Height = 21
    Caption = 'Common Controls Version: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10040064
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 32
    Top = 155
    Width = 274
    Height = 15
    Caption = 'The version of '#39'comctl32.dll'#39' used by the application'
  end
  object lblStyleServicesEnabled: TLabel
    Left = 32
    Top = 192
    Width = 151
    Height = 21
    Caption = 'StyleServices.Enabled:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10040064
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 32
    Top = 219
    Width = 418
    Height = 15
    Caption = 
      'Indicates if the Theme API is available on the local PC, and if ' +
      'the App is Themed'
  end
  object lblResult: TLabel
    Left = 32
    Top = 256
    Width = 45
    Height = 15
    Caption = 'lblResult'
  end
end
