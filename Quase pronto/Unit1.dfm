object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 385
  ClientWidth = 422
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Label1: TLabel
    Left = 140
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 237
    Top = 0
    Width = 185
    Height = 385
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 221
    ExplicitTop = 8
  end
  object Button1: TButton
    Left = 8
    Top = 35
    Width = 163
    Height = 25
    Caption = 'Salvar Edit String'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 66
    Width = 163
    Height = 25
    Caption = 'String to Edit'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 123
    Width = 231
    Height = 246
    TabOrder = 4
  end
end
