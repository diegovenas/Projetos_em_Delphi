program Formulario;

uses
  Vcl.Forms,
  TelaPrincipal in 'TelaPrincipal.pas' {FormPrincipal},
  TelaSecundaria in 'TelaSecundaria.pas' {Observacoes},
  Conexaobanco in 'Conexaobanco.pas' {dm_dados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TObservacoes, Observacoes);
  Application.CreateForm(Tdm_dados, dm_dados);
  Application.Run;
end.
