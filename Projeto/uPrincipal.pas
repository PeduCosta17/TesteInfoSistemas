unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.ExtCtrls,
  IPPeerClient, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter, IdSMTP, IdSSLOpenSSL,
  IdMessage, IdText, IdAttachmentFile,  IdExplicitTLSClientServerBase, Util, Cliente;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    lblNome: TLabel;
    lblCPF: TLabel;
    lblTelefone: TLabel;
    lblEmail: TLabel;
    lblEndereco: TLabel;
    lblIdentidade: TLabel;
    pnlBotoes: TPanel;
    btnSalvar: TButton;
    pnlEndereco: TPanel;
    lblCEP: TLabel;
    lblNumero: TLabel;
    lblLogradouro: TLabel;
    lblComplemento: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblEstado: TLabel;
    lblPais: TLabel;
    edtLogradouro: TEdit;
    edtNumero: TEdit;
    edtComplemento: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtEstado: TEdit;
    edtPais: TEdit;
    mskCEP: TMaskEdit;
    btnBuscar: TButton;
    edtNome: TEdit;
    edtIdentidade: TEdit;
    edtTelefone: TEdit;
    edtEmail: TEdit;
    mskCPF: TMaskEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnBuscarClick(Sender: TObject);
begin

  if(Length(mskCEP.Text) <> 8) then
    begin
      ShowMessage('CEP inválido');
      exit;
    end;

  //preenchendo o fim do BaseURL para realizar a consulta ao executar a requisição.
  RESTRequest1.Resource := mskCEP.Text + '/json';
  RESTRequest1.Execute;

  //adaptação: configurações de envio de e-mail, https://support.google.com/a/answer/176600?hl=pt
  if RESTRequest1.Response.StatusCode = 200 then
  begin
    if (RESTRequest1.Response.Content.IndexOf('erro') > 0) then
      ShowMessage('CEP não encontrado')
    else
    begin
      //capturando os campos do MemLabel preenhcidos através do tabular data.
      with FDMemTable1 do
      begin
        edtLogradouro.Text  := FieldByName('logradouro').AsString;
        edtComplemento.Text := FieldByName('complemento').AsString;
        edtBairro.Text      := FieldByName('bairro').AsString;
        edtCidade.Text      := FieldByName('localidade').AsString;
        edtEstado.Text      := FieldByName('uf').AsString;
        edtPais.Text        := 'Brasil';
      end;
    end;
  end
  else
    ShowMessage('Erro ao consultar CEP');
end;

procedure TfrmPrincipal.btnSalvarClick(Sender: TObject);
var
  email : TUtil;
  cliente : TCliente;

begin
    cliente:= TCliente.create(edtNome.text, edtIdentidade.text, mskCPF.text, edtTelefone.text, edtEmail.text, mskCEP.text, edtLogradouro.text, edtNumero.text, edtComplemento.text, edtBairro.text, edtCidade.text, edtEstado.text, edtPais.text);
    email.GerarXml(cliente);
    ShowMessage(email.EnviarMail(cliente, edtEmail.Text));
end;

end.
