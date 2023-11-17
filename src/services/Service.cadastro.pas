unit Service.cadastro;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TServiceCadastro = class(TDataModule)
    QRY_pessoas: TFDQuery;
    QRY_pessoasCODIGO: TIntegerField;
    QRY_pessoasRAZAO: TStringField;
    QRY_pessoasFANTASIA: TStringField;
    QRY_pessoasTELEFONE: TStringField;
    QRY_pessoasCNPJCPF: TStringField;
    QRY_pessoasIERG: TStringField;
    QRY_pessoasTIPOPESSOA: TIntegerField;
    QRY_pessoasOBSERVACAO: TStringField;
    QRY_enderecos: TFDQuery;
    QRY_enderecosCODIGO: TIntegerField;
    QRY_enderecosPESSOA: TIntegerField;
    QRY_enderecosCEP: TStringField;
    QRY_enderecosCIDADE: TStringField;
    QRY_enderecosENDERECO: TStringField;
    QRY_enderecosBAIRRO: TStringField;
    QRY_enderecosOBSERVACAO: TStringField;
    QRY_enderecosNUMERO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Service.conexao;

{$R *.dfm}

end.