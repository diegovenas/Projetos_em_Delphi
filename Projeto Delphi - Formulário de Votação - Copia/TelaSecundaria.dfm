object Observacoes: TObservacoes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Observa'#231#245'es'
  ClientHeight = 299
  ClientWidth = 355
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
    Width = 355
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 14
      Width = 320
      Height = 23
      Caption = 'Voc'#234' gostaria de deixar alguma observa'#231#227'o? '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 355
    Height = 56
    Align = alTop
    TabOrder = 1
    object ObsEsc: TRadioGroup
      Left = 32
      Top = -4
      Width = 273
      Height = 61
      Align = alCustom
      Columns = 2
      Items.Strings = (
        'Sim, Gostaria. '
        'N'#227'o, N'#227'o gostaria.')
      TabOrder = 0
      OnClick = ObsEscClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 113
    Width = 355
    Height = 186
    Align = alClient
    TabOrder = 2
  end
end
