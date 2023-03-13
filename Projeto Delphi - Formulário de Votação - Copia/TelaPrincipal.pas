unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, TelaSecundaria, Conexaobanco;

type
  TFormPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    ImageList1: TImageList;
    Panel6: TPanel;
    Label1: TLabel;
    Panel7: TPanel;
    BtCCenter: TSpeedButton;
    BtRecep: TSpeedButton;
    BtnFat: TSpeedButton;
    Panel8: TPanel;
    BtnMed: TSpeedButton;
    BtnGes: TSpeedButton;
    BtnFin: TSpeedButton;
    LEmpresa: TLabel;
    LNome: TLabel;
    LTipUsuario: TLabel;
    EmpresaN: TEdit;
    UserName: TEdit;
    TipUs: TEdit;
    Memo1: TMemo;
    procedure BtCCenterClick(Sender: TObject);
    procedure BtRecepClick(Sender: TObject);
    procedure BtnFatClick(Sender: TObject);
    procedure BtnFinClick(Sender: TObject);
    procedure BtnGesClick(Sender: TObject);
    procedure BtnMedClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    dadosg: string;
    bdLocal: array of String;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}


procedure TFormPrincipal.FormShow(Sender: TObject);

{ Pode pegar usuário e senha para validar dos dados e entrar na query
  ele vai ter que fazer uma busca no banco para validar o usuário e a partir disso
  pegar os dados empresa, usuario e tipo }
  begin

    SetLength( bdLocal, 1);


    TelaPrincipal.FormPrincipal.Color         :=  $D1B499;
    TelaPrincipal.FormPrincipal.Panel7.Color  :=  $D1B499;

  Conexaobanco.dm_dados.QueryEmpresa.Open();
//        LEmpresa.caption := Conexaobanco.dm_dados.QueryEmpresa.FieldByName
//          ('EMP_FANTASIA').AsString;
    EmpresaN.Text := Conexaobanco.dm_dados.QueryEmpresa.FieldByName('EMP_FANTASIA').AsString;

    Conexaobanco.dm_dados.QueryEmpresa.Close();

  end;

// BOTÃO CALL CENTER
procedure TFormPrincipal.BtCCenterClick(Sender: TObject);

var
   Resposta: Integer;
   Dados: string;
   valorDoBtn: string;
   i : integer;

begin
    Resposta     := MessageDlg('Você confirma sua opção: ' + BtCCenter.caption,
                   mtConfirmation, [mbYes, mbNo], 0);
    valorDoBtn  := 'call center';
    Memo1.Lines.Clear;
      // Confirmação de resposta de usuário
  case Resposta of
      mrYes:
        begin
           ShowMessage('Alterações salvas!');
           Dados := LEmpresa.caption + LNome.caption + LTipUsuario.caption +
           BtCCenter.caption;
           dadosg := Dados;

           // TelaSecundaria.Observacoes.ObsEscClick(dad);

            // adicionar um elemento ao final do array
            SetLength(bdLocal, Length(bdLocal) + 1);
            bdLocal[High(bdLocal)] := BtCcenter.Caption;

           for i := Low(bdLocal) to High(bdLocal) do
            Memo1.Lines.Add (bdLocal[i]);

//           Memo1.Lines.Add(FloatToStr(bdLocal));
//           Observacoes.ShowModal;
        end;

      mrNo:
        begin
          ShowMessage('Alterações descartadas!');
        end;

  end;
//  close;
end;

// BOTÃO FATURAMENTO
procedure TFormPrincipal.BtnFatClick(Sender: TObject);

var
   Resposta: Integer;
   Dados: string;
   valorDoBtn: string;
   i : integer;

begin
    Resposta     := MessageDlg('Você confirma sua opção: ' + BtCCenter.caption,
                   mtConfirmation, [mbYes, mbNo], 0);
    valorDoBtn := 'Faturamento';
    Memo1.Lines.Clear;

  // Confirmação de resposta de usuário
  case Resposta of
      mrYes:
        begin
           ShowMessage('Alterações salvas!');
           Dados := LEmpresa.caption + LNome.caption + LTipUsuario.caption +
           BtCCenter.caption;
           dadosg := Dados;

           // TelaSecundaria.Observacoes.ObsEscClick(dad);

            // adicionar um elemento ao final do array
            SetLength(bdLocal, Length(bdLocal) + 1);
            bdLocal[High(bdLocal)] := valorDoBtn;

           for i := Low(bdLocal) to High(bdLocal) do
            Memo1.Lines.Add (bdLocal[i]);

//           Memo1.Lines.Add(FloatToStr(bdLocal));
//           Observacoes.ShowModal;
        end;

      mrNo:
        begin
          ShowMessage('Alterações descartadas!');
        end;

  end;
//  close;
end;

// BOTÃO FINANCEIRO
procedure TFormPrincipal.BtnFinClick(Sender: TObject);

var
   Resposta: Integer;
   Dados: string;
   valorDoBtn: string;
   i : integer;

begin
    Resposta     := MessageDlg('Você confirma sua opção: ' + BtCCenter.caption,
                   mtConfirmation, [mbYes, mbNo], 0);
    valorDoBtn := 'Financeiro';
    Memo1.Lines.Clear;

  // Confirmação de resposta de usuário
  case Resposta of
      mrYes:
        begin
           ShowMessage('Alterações salvas!');
           Dados := LEmpresa.caption + LNome.caption + LTipUsuario.caption +
           BtCCenter.caption;
           dadosg := Dados;

           // TelaSecundaria.Observacoes.ObsEscClick(dad);

            // adicionar um elemento ao final do array
            SetLength(bdLocal, Length(bdLocal) + 1);
            bdLocal[High(bdLocal)] := valorDoBtn;

           for i := Low(bdLocal) to High(bdLocal) do
            Memo1.Lines.Add (bdLocal[i]);

//           Memo1.Lines.Add(FloatToStr(bdLocal));
//           Observacoes.ShowModal;
        end;

      mrNo:
        begin
          ShowMessage('Alterações descartadas!');
        end;

  end;
//  close;
end;

// BOTÃO GESTÃO
procedure TFormPrincipal.BtnGesClick(Sender: TObject);

var
   Resposta: Integer;
   Dados: string;
   valorDoBtn: string;
   i : integer;

begin
    Resposta     := MessageDlg('Você confirma sua opção: ' + BtCCenter.caption,
                   mtConfirmation, [mbYes, mbNo], 0);
    valorDoBtn := 'Gestao';
    Memo1.Lines.Clear;

  // Confirmação de resposta de usuário
  case Resposta of
      mrYes:
        begin
           ShowMessage('Alterações salvas!');
           Dados := LEmpresa.caption + LNome.caption + LTipUsuario.caption +
           BtCCenter.caption;
           dadosg := Dados;

           // TelaSecundaria.Observacoes.ObsEscClick(dad);

            // adicionar um elemento ao final do array
            SetLength(bdLocal, Length(bdLocal) + 1);
            bdLocal[High(bdLocal)] := valorDoBtn;

           for i := Low(bdLocal) to High(bdLocal) do
            Memo1.Lines.Add (bdLocal[i]);

//           Memo1.Lines.Add(FloatToStr(bdLocal));
//           Observacoes.ShowModal;
        end;

      mrNo:
        begin
          ShowMessage('Alterações descartadas!');
        end;

  end;
//  close;
end;

// BOTÃO FLUXO MEDNEWS
procedure TFormPrincipal.BtnMedClick(Sender: TObject);
var
   Resposta: Integer;
   Dados: string;
   valorDoBtn: string;
   i : integer;

begin
    Resposta     := MessageDlg('Você confirma sua opção: ' + BtCCenter.caption,
                   mtConfirmation, [mbYes, mbNo], 0);
    valorDoBtn := 'Fluxo MedNews';
    Memo1.Lines.Clear;

  // Confirmação de resposta de usuário
  case Resposta of
      mrYes:
        begin
           ShowMessage('Alterações salvas!');
           Dados := LEmpresa.caption + LNome.caption + LTipUsuario.caption +
           BtCCenter.caption;
           dadosg := Dados;

           // TelaSecundaria.Observacoes.ObsEscClick(dad);

            // adicionar um elemento ao final do array
            SetLength(bdLocal, Length(bdLocal) + 1);
            bdLocal[High(bdLocal)] := valorDoBtn;

           for i := Low(bdLocal) to High(bdLocal) do
            Memo1.Lines.Add (bdLocal[i]);

//           Memo1.Lines.Add(FloatToStr(bdLocal));
//           Observacoes.ShowModal;
        end;

      mrNo:
        begin
          ShowMessage('Alterações descartadas!');
        end;

  end;
//  close;
end;

// BOTÃO RECEPÇÃO
procedure TFormPrincipal.BtRecepClick(Sender: TObject);

var
   Resposta: Integer;
   Dados: string;
   valorDoBtn: string;
   i : integer;

begin
    Resposta     := MessageDlg('Você confirma sua opção: ' + BtCCenter.caption,
                   mtConfirmation, [mbYes, mbNo], 0);
    valorDoBtn := 'Recepção';
    Memo1.Lines.Clear;

  // Confirmação de resposta de usuário
  case Resposta of
      mrYes:
        begin
           ShowMessage('Alterações salvas!');
           Dados := LEmpresa.caption + LNome.caption + LTipUsuario.caption +
           BtCCenter.caption;
           dadosg := Dados;

           // TelaSecundaria.Observacoes.ObsEscClick(dad);

            // adicionar um elemento ao final do array
            SetLength(bdLocal, Length(bdLocal) + 1);
            bdLocal[High(bdLocal)] := valorDoBtn;

           for i := Low(bdLocal) to High(bdLocal) do
            Memo1.Lines.Add (bdLocal[i]);

//           Memo1.Lines.Add(FloatToStr(bdLocal));
//           Observacoes.ShowModal;
        end;

      mrNo:
        begin
          ShowMessage('Alterações descartadas!');
        end;

  end;
//  close;

end;



end.
