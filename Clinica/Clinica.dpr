program Clinica;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {formPrincipal},
  unitCadPacientes in 'unitCadPacientes.pas' {formCadPacientes},
  unitCadAgendamentos in 'unitCadAgendamentos.pas' {formCadAgendamentos},
  unitDM in 'unitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadPacientes, formCadPacientes);
  Application.CreateForm(TformCadAgendamentos, formCadAgendamentos);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
