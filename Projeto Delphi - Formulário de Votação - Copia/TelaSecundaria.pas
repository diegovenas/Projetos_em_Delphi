unit TelaSecundaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TObservacoes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    ObsEsc: TRadioGroup;

    procedure ObsEscClick(Sender: TObject);
  private
    { Private declarations }
  public
    dadosg: string;
  end;

var
  Observacoes: TObservacoes;

implementation

{$R *.dfm}

uses TelaPrincipal;

procedure TObservacoes.ObsEscClick(Sender: TObject);

var
  Memo1: TMemo;
  Botao: TButton;

  dados: String;

begin

  dados := dadosg;

  if ObsEsc.ItemIndex = 0 then
  begin
    Memo1 := TMemo.Create(Self);
    Memo1.Parent := Self;
    Memo1.Top := 140;
    Memo1.Left := 32;
    Memo1.Width := 273;
    Memo1.Height := 105;

    Memo1.lines.Add('' + dados);

    Botao := TButton.Create(Self);

    Botao.Parent := Self;
    Botao.Visible := True;
    Botao.Top := 260;
    Botao.Left := 112;
    Botao.Width := 105;
    Botao.Height := 22;
    Botao.Caption := 'Enviar';

  end

  else if ObsEsc.ItemIndex = 1 then

  begin
    ShowMessage('Obrigado por participar!');

    FormPrincipal.Close;
    // Criar aqui embaixo o comando para enviar.

  end;

end;

end.
