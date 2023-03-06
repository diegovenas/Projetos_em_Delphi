object formCadPacientes: TformCadPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pacientes'
  ClientHeight = 488
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 113
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 24
    Top = 203
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label4: TLabel
    Left = 198
    Top = 115
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label6: TLabel
    Left = 198
    Top = 289
    Width = 85
    Height = 13
    Caption = 'Data do Cadastro'
  end
  object Label7: TLabel
    Left = 24
    Top = 289
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label5: TLabel
    Left = 424
    Top = 113
    Width = 90
    Height = 13
    Caption = 'Buscar Paciente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 89
    Align = alTop
    TabOrder = 8
    object Label1: TLabel
      Left = 0
      Top = 32
      Width = 233
      Height = 25
      Caption = 'Cadastro de Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object editID: TDBEdit
    Left = 24
    Top = 132
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = DM.dsPaciente
    TabOrder = 0
  end
  object editCPF: TDBEdit
    Left = 198
    Top = 132
    Width = 139
    Height = 21
    DataField = 'cpf'
    DataSource = DM.dsPaciente
    MaxLength = 14
    TabOrder = 1
  end
  object editNOME: TDBEdit
    Left = 24
    Top = 222
    Width = 313
    Height = 21
    DataField = 'nome'
    DataSource = DM.dsPaciente
    TabOrder = 2
  end
  object editDATA: TDBEdit
    Left = 198
    Top = 308
    Width = 139
    Height = 21
    DataField = 'data_cadastro'
    DataSource = DM.dsPaciente
    ReadOnly = True
    TabOrder = 4
  end
  object editCELULAR: TDBEdit
    Left = 24
    Top = 308
    Width = 121
    Height = 21
    DataField = 'celular'
    DataSource = DM.dsPaciente
    MaxLength = 15
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 352
    Top = 159
    Width = 290
    Height = 321
    DataSource = DM.dsPaciente
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'Pacientes Cadastrados'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clLime
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 270
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 352
    Top = 132
    Width = 290
    Height = 21
    TabOrder = 5
    OnChange = txtBuscaChange
  end
  object DBNavigator1: TDBNavigator
    Left = 312
    Top = 28
    Width = 310
    Height = 33
    DataSource = DM.dsPaciente
    TabOrder = 7
  end
end
