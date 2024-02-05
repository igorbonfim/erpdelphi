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
    QRY_produto1: TFDQuery;
    QRY_produto2: TFDQuery;
    QRY_produto1CODIGO: TIntegerField;
    QRY_produto1NOMECOMPLETO: TStringField;
    QRY_produto1NOMEPOPULAR: TStringField;
    QRY_produto1CODIGOBARRA: TStringField;
    QRY_produto1REFERENCIA: TStringField;
    QRY_produto1GRUPO: TIntegerField;
    QRY_produto1SUBGRUPO: TIntegerField;
    QRY_produto2CODIGO: TIntegerField;
    QRY_produto2CODIGO_PRODUTO: TIntegerField;
    QRY_produto2FILIAL: TIntegerField;
    QRY_produto2CUSTOINICIAL: TFMTBCDField;
    QRY_produto2VENDAVISTA: TFMTBCDField;
    QRY_produto2VENDAPRAZO: TFMTBCDField;
    QRY_produto2SIT_TRIBUTARIA: TIntegerField;
    QRY_produto1NCM: TStringField;
    QRY_produto2ESTOQUE: TFMTBCDField;
    QRY_movestoque: TFDQuery;
    QRY_movestoque_item: TFDQuery;
    QRY_cadcaixa: TFDQuery;
    QRY_cadcaixaCODIGO: TIntegerField;
    QRY_cadcaixaDATAHORA: TSQLTimeStampField;
    QRY_cadcaixaTIPO: TStringField;
    QRY_cadcaixaVALOR: TFMTBCDField;
    QRY_cadcaixaDESCRICAO: TStringField;
    QRY_movestoqueCODIGO: TIntegerField;
    QRY_movestoqueTIPOESTOQUE: TIntegerField;
    QRY_movestoqueDATA: TDateField;
    QRY_movestoqueHORA: TTimeField;
    QRY_movestoqueVALORDESCONTO: TFMTBCDField;
    QRY_movestoqueVALORTOTAL: TFMTBCDField;
    QRY_movestoqueVENDEDOR: TIntegerField;
    QRY_movestoque_itemCODIGO: TIntegerField;
    QRY_movestoque_itemCODIGO_MOVIMENTO: TIntegerField;
    QRY_movestoque_itemCODIGO_ITEM: TIntegerField;
    QRY_movestoque_itemQUANTIDADE: TFMTBCDField;
    QRY_movestoque_itemVALOR_UNITARIO: TFMTBCDField;
    QRY_movestoque_itemVALOR_TOTAL: TFMTBCDField;
    QRY_movestoque_itemVALOR_DESCONTO: TFMTBCDField;
    FDSchemaAdapter: TFDSchemaAdapter;
    procedure QRY_produto1AfterScroll(DataSet: TDataSet);
    procedure QRY_movestoqueAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Service.conexao, Provider.constants;

{$R *.dfm}

procedure TServiceCadastro.QRY_movestoqueAfterScroll(DataSet: TDataSet);
begin
  GetVendaItem(ServiceCadastro.QRY_movestoqueCODIGO.AsInteger);
end;

procedure TServiceCadastro.QRY_produto1AfterScroll(DataSet: TDataSet);
begin
  GetProdutoDetalhe(ServiceCadastro.QRY_produto1CODIGO.AsInteger, iCOD_FILIAL);
end;

end.
