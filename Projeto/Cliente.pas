unit Cliente;

interface

Type
  TCliente = Class
  private
    nome:        String;
    identidade:  String;
    cpf:         String;
    telefone:    String;
    email:       String;
    cep:         String;
    logradouro:  String;
    numero:      String;
    complemento: String;
    bairro:      String;
    cidade:      String;
    estado:      String;
    pais:        String;

    //Get's
  Public
    function getNome        : String;
    function getIdentidade  : String;
    function getCPF         : String;
    function getTelefone    : String;
    function getEmail       : String;
    function getCep         : String;
    function getLogradouro  : String;
    function getNumero      : String;
    function getComplemento : String;
    function getBairro      : String;
    function getCidade      : String;
    function getEstado      : String;
    function getPais        : String;

    //Construtor da classe
      constructor create(fNome:String; fIdentidade:String; fCpf:String; fTelefone:String; fEmail:String; fCep:String; fLogradouro:String; fNumero:String; fComplemento:String; fBairro:String; fCidade:String; fEstado:String; fPais:String);
  End;

implementation

  constructor TCliente.create(fNome:String; fIdentidade:String; fCpf:String; fTelefone:String; fEmail:String; fCep:String; fLogradouro:String; fNumero:String; fComplemento:String; fBairro:String; fCidade:String; fEstado:String; fPais:String);
  begin
    nome:= fNome;
    identidade:= fIdentidade;
    cpf:= fCpf;
    telefone:= fTelefone;
    email:= fEmail;
    cep:= fCep;
    logradouro:= fLogradouro;
    numero:= fNumero;
    complemento:= fComplemento;
    bairro:= fBairro;
    cidade:= fCidade;
    estado:= fEstado;
    pais:= fPais;
  end;

  //Get's
    function TCliente.getNome;
    begin
      result:= Nome;
    end;

    function TCliente.getIdentidade;
    begin
      result:= Identidade;
    end;

    function TCliente.getCpf;
    begin
      result:= Cpf;
    end;

    function TCliente.getTelefone;
    begin
      result:= Telefone;
    end;

    function TCliente.getEmail;
    begin
      result:= Email;
    end;

    function TCliente.getCep;
    begin
      result:= Cep;
    end;

    function TCliente.getLogradouro;
    begin
      result:= Logradouro;
    end;

    function TCliente.getNumero;
    begin
      result:= Numero;
    end;

    function TCliente.getComplemento;
    begin
      result:= Complemento;
    end;

    function TCliente.getBairro;
    begin
      result:= Bairro;
    end;

    function TCliente.getCidade;
    begin
      result:= Cidade;
    end;

    function TCliente.getEstado;
    begin
      result:= Estado;
    end;

    function TCliente.getPais;
    begin
      result:= Pais;
    end;
end.
