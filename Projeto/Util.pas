unit Util;

interface
  uses
    System.SysUtils, IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile,
      IdExplicitTLSClientServerBase, Cliente, XMLIntf, Xml.XmlDoc;
  Type
    TUtil = class
    public
      function GerarXml(Cliente: TCliente): String;
      function EnviarMail(cliente : TCliente; destinatario : string):string;
  end;

implementation

function TUtil.GerarXml(Cliente: TCliente): String;
  var xml: TXmlDocument;
      rCliente, rEndereco, Nome, Identidade, Cpf, Telefone, Email, Cep,Logradouro,
      Numero, Complemento, Bairro, Cidade, Estado, Pais :  IXMLNode;
  begin
     xml:= TXmlDocument.Create(nil);
     xml.Active:= true;
     xml.FileName := '';
     xml.XML.Text := '';
     xml.Active := False;
     xml.Active := True;
     xml.Version := '1.0';
     xml.Encoding := 'UTF-8';

     //Tag Pai
     rCliente:= xml.AddChild('cliente');

     //Tag's filhas de Clinte
       Nome:= xml.CreateNode('Nome', ntElement);
       Nome.Text:= cliente.getNome;
       rCliente.ChildNodes.Add(Nome);

       Identidade:=  xml.CreateNode('Identidade', ntElement);
       Identidade.Text :=  cliente.getIdentidade;
       rCliente.ChildNodes.Add(Identidade);

       Cpf:=  xml.CreateNode('Cpf', ntElement);
       Cpf.Text:=  cliente.getIdentidade;
       rCliente.ChildNodes.Add(Cpf);

       Telefone:=  xml.CreateNode('Telefone', ntElement);
       Telefone.Text:=  cliente.getTelefone;
       rCliente.ChildNodes.Add(Telefone);

       Email:= xml.CreateNode('Email', ntElement);
       Email.Text:= cliente.getEmail;
       rCliente.ChildNodes.Add(Email);

       //Tag Pai
       rEndereco:= xml.CreateNode('endereco', ntElement);

       //Tag's Filhas e endereco
         Cep:= xml.CreateNode('Cep', ntElement);
         Cep.Text:= cliente.getCep;
         rEndereco.ChildNodes.Add(Cep);

         Logradouro:= xml.CreateNode('Logradouro', ntElement);
         Logradouro.Text:= cliente.getLogradouro;
         rEndereco.ChildNodes.Add(Logradouro);

         Numero:= xml.CreateNode('Numero', ntElement);
         Numero.Text:= cliente.getNumero;
         rEndereco.ChildNodes.Add(Numero);

         Complemento:= xml.CreateNode('Complemento', ntElement);
         Complemento.Text:= cliente.getComplemento;
         rEndereco.ChildNodes.Add(Complemento);

         Bairro:= xml.CreateNode('Bairro', ntElement);
         Bairro.Text:= cliente.getBairro;
         rEndereco.ChildNodes.Add(Bairro);

         Cidade:= xml.CreateNode('Cidade', ntElement);
         Cidade.Text:= cliente.getCidade;
         rEndereco.ChildNodes.Add(Cidade);

         Estado:= xml.CreateNode('Estado', ntElement);
         Estado.Text:= cliente.getEstado;
         rEndereco.ChildNodes.Add(Estado);

         Pais:= xml.CreateNode('Pais', ntElement);
         Pais.Text:= cliente.getPais;
         rEndereco.ChildNodes.Add(Pais);
     rCliente.ChildNodes.Add(rEndereco);

     xml.SaveToFile('Arquivo.xml');
     result:= 'Arquivo.xml';
  end;

function TUtil.EnviarMail(cliente : TCliente; destinatario: string): string;
var
  lSSL: TIdSSLIOHandlerSocketOpenSSL;
  lSMTP: TIdSMTP;
  lMessage: TIdMessage;
  lText: TIdText;
  lAnexo: string;

begin
  Result := 'E-mail não enviado';
  lSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  try
    lSMTP := TIdSMTP.Create(nil);
    try
      lMessage := TIdMessage.Create(nil);
      try
        lSSL.SSLOptions.Method := sslvSSLv23;
        lSSL.SSLOptions.Mode := sslmClient;
        lSMTP.IOHandler := lSSL;
        lSMTP.AuthType := satDefault;
        lSMTP.UseTLS := utUseImplicitTLS;
        lSMTP.Host := 'smtp.gmail.com';
        lSMTP.Port := 465;
        lSMTP.Username := 'phcparkour@gmail.com';
        lSMTP.Password := 'Lc112388';
        lMessage.From.Address := 'phcparkour@gmail.com';
        lMessage.From.Name := 'Pedro Info Remetente';
        lMessage.ReplyTo.EMailAddresses := lMessage.From.Address;
        lMessage.Recipients.Add.Text := destinatario;
        lMessage.Subject := 'Assunto no envio de e-mail';
        lMessage.Encoding := meMIME;
        lText := TIdText.Create(lMessage.MessageParts);
        lText.Body.Add('Nome: '       +cliente.getNome);
        lText.Body.Add('Identidade: ' +cliente.getIdentidade);
  	    lText.Body.Add('CPF: '        +cliente.getCPF);
    	  lText.Body.Add('Telefone: '   +cliente.getTelefone);
      	lText.Body.Add('Email: '      +cliente.getEmail);
       	lText.Body.Add('Endereço');
        lText.Body.Add('Cep: '        +cliente.getCep);
        lText.Body.Add('Logradouro: ' +cliente.getLogradouro);
        lText.Body.Add('Numero: '     +cliente.getNumero);
        lText.Body.Add('Complemento: '+cliente.getComplemento);
        lText.Body.Add('Bairro: '     +cliente.getBairro);
        lText.Body.Add('Cidade: '     +cliente.getCidade);
        lText.Body.Add('Estado: '     +cliente.getEstado);
        lText.Body.Add('País: '       +cliente.getPais);
        lText.ContentType := 'text/plain; charset=iso-8859-1';

        lAnexo := 'Arquivo.xml';

        if FileExists(lAnexo) then
        begin
          TIdAttachmentFile.Create(lMessage.MessageParts, lAnexo);
        end;
        try
          lSMTP.Connect;
          lSMTP.Authenticate;
        except
          on E:Exception do
          begin
            Result:= E.Message;
            Exit;
          end;
        end;
        try
          lSMTP.Send(lMessage);
          Result:= 'E-mail enviado com sucesso!';
        except
          On E:Exception do
          begin
            Result:= E.Message;
          end;
        end;
      finally
        lMessage.Free;
      end;
    finally
      lSMTP.Free;
    end;
  finally
    lSSL.Free;
    UnLoadOpenSSLLibrary;
  end;
end;

end.

