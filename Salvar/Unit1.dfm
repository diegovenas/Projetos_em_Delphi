object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 385
  ClientWidth = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 92
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 394
    Top = 0
    Width = 185
    Height = 385
    Align = alRight
    TabOrder = 1
    ExplicitTop = 8
  end
  object Button1: TButton
    Left = 208
    Top = 56
    Width = 163
    Height = 25
    Caption = 'Salvar Edit String'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 87
    Width = 163
    Height = 25
    Caption = 'String to Edit'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 24
    Top = 131
    Width = 289
    Height = 246
    TabOrder = 4
  end
end
