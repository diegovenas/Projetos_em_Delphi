object DM: TDM
  OldCreateOrder = False
  Height = 431
  Width = 395
  object conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    Left = 16
    Top = 16
  end
  object tbPaciente: TFDTable
    Active = True
    AfterInsert = tbPacienteAfterInsert
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'clinica.paciente'
    Left = 88
    Top = 16
    object tbPacienteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbPacientenome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
    object tbPacientecelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      EditMask = '(##)#.####-####;1;_'
      Size = 16
    end
    object tbPacientedata_cadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
    end
    object tbPacientecpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
  end
  object tbAgendamento: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'clinica.agendamento'
    Left = 160
    Top = 24
    object tbAgendamentoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbAgendamentoid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
    end
    object tbAgendamentodata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbAgendamentohora: TStringField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
      EditMask = '##:##;1;_'
      Size = 8
    end
    object tbAgendamentoespecialidade: TStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Required = True
      Size = 25
    end
    object tbAgendamentomedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 30
    end
  end
  object dsPaciente: TDataSource
    DataSet = tbPaciente
    Left = 88
    Top = 72
  end
  object dsAgendamento: TDataSource
    DataSet = tbAgendamento
    Left = 168
    Top = 72
  end
end
