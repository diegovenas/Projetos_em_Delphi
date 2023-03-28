object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 360
  ClientWidth = 507
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
    Left = 0
    Top = 0
    Width = 507
    Height = 360
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 320
    ExplicitTop = 200
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Memo1: TMemo
      Left = 321
      Top = 1
      Width = 185
      Height = 358
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 322
      ExplicitTop = 0
      ExplicitHeight = 360
    end
    object Button2: TButton
      Left = 128
      Top = 224
      Width = 75
      Height = 25
      Caption = 'criar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 128
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
end
