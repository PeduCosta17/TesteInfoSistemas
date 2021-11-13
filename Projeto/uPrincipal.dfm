object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal - Cadastro de pessoas'
  ClientHeight = 690
  ClientWidth = 868
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
    Width = 868
    Height = 690
    Align = alClient
    BevelOuter = bvSpace
    TabOrder = 0
    object lblNome: TLabel
      Left = 32
      Top = 24
      Width = 73
      Height = 29
      Caption = 'Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object lblCPF: TLabel
      Left = 32
      Top = 110
      Width = 55
      Height = 29
      Caption = 'CPF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object lblTelefone: TLabel
      Left = 32
      Top = 153
      Width = 104
      Height = 29
      Caption = 'Telefone:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object lblEmail: TLabel
      Left = 32
      Top = 196
      Width = 71
      Height = 29
      Caption = 'Email:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object lblEndereco: TLabel
      Left = 5
      Top = 268
      Width = 116
      Height = 29
      Caption = 'Endere'#231'o:'
      Color = clCream
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
    end
    object lblIdentidade: TLabel
      Left = 32
      Top = 67
      Width = 128
      Height = 29
      Caption = 'Identidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object pnlBotoes: TPanel
      Left = 1
      Top = 607
      Width = 866
      Height = 82
      Align = alBottom
      BevelOuter = bvSpace
      BevelWidth = 4
      TabOrder = 5
      object btnSalvar: TButton
        Left = 4
        Top = 4
        Width = 102
        Height = 74
        Align = alLeft
        Caption = 'Salvar'
        TabOrder = 0
        OnClick = btnSalvarClick
      end
    end
    object pnlEndereco: TPanel
      Left = 1
      Top = 303
      Width = 866
      Height = 304
      Align = alBottom
      BevelOuter = bvSpace
      BiDiMode = bdLeftToRight
      BorderWidth = 10
      BorderStyle = bsSingle
      ParentBiDiMode = False
      TabOrder = 6
      object lblCEP: TLabel
        Left = 40
        Top = 12
        Width = 47
        Height = 22
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNumero: TLabel
        Left = 40
        Top = 83
        Width = 80
        Height = 22
        Caption = 'Numero:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblLogradouro: TLabel
        Left = 40
        Top = 47
        Width = 118
        Height = 22
        Caption = 'Logradouro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblComplemento: TLabel
        Left = 40
        Top = 119
        Width = 136
        Height = 22
        Caption = 'Complemento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBairro: TLabel
        Left = 40
        Top = 155
        Width = 65
        Height = 22
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCidade: TLabel
        Left = 40
        Top = 191
        Width = 72
        Height = 22
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblEstado: TLabel
        Left = 40
        Top = 227
        Width = 72
        Height = 22
        Caption = 'Estado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPais: TLabel
        Left = 40
        Top = 263
        Width = 47
        Height = 22
        Caption = 'Pa'#237's:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtLogradouro: TEdit
        Left = 208
        Top = 48
        Width = 150
        Height = 21
        TabOrder = 2
      end
      object edtNumero: TEdit
        Left = 208
        Top = 84
        Width = 150
        Height = 21
        TabOrder = 3
      end
      object edtComplemento: TEdit
        Left = 208
        Top = 120
        Width = 150
        Height = 21
        TabOrder = 4
      end
      object edtBairro: TEdit
        Left = 208
        Top = 156
        Width = 150
        Height = 21
        TabOrder = 5
      end
      object edtCidade: TEdit
        Left = 208
        Top = 192
        Width = 150
        Height = 21
        TabOrder = 6
      end
      object edtEstado: TEdit
        Left = 208
        Top = 228
        Width = 150
        Height = 21
        TabOrder = 7
      end
      object edtPais: TEdit
        Left = 208
        Top = 264
        Width = 150
        Height = 21
        TabOrder = 8
      end
      object mskCEP: TMaskEdit
        Left = 208
        Top = 13
        Width = 62
        Height = 21
        EditMask = '00000-000;0;_'
        MaxLength = 9
        TabOrder = 0
        Text = ''
      end
      object btnBuscar: TButton
        Left = 290
        Top = 12
        Width = 68
        Height = 30
        Align = alCustom
        Caption = 'Buscar'
        TabOrder = 1
        OnClick = btnBuscarClick
      end
    end
    object edtNome: TEdit
      Left = 183
      Top = 33
      Width = 150
      Height = 21
      TabOrder = 0
    end
    object edtIdentidade: TEdit
      Left = 183
      Top = 75
      Width = 150
      Height = 21
      TabOrder = 1
    end
    object edtTelefone: TEdit
      Left = 183
      Top = 162
      Width = 150
      Height = 21
      TabOrder = 3
    end
    object edtEmail: TEdit
      Left = 183
      Top = 205
      Width = 150
      Height = 21
      TabOrder = 4
    end
    object mskCPF: TMaskEdit
      Left = 183
      Top = 119
      Width = 87
      Height = 21
      EditMask = '000.000.000-00;0;_'
      MaxLength = 14
      TabOrder = 2
      Text = ''
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'https://viacep.com.br/ws'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 496
    Top = 320
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Resource = '35574372/json/'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 496
    Top = 368
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 496
    Top = 424
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 496
    Top = 480
  end
  object FDMemTable1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    StoreDefs = True
    Left = 496
    Top = 528
  end
end
