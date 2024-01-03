unit Provider.constants;

interface

procedure GetPessoas(iTipo: integer);
procedure GetProdutos;
procedure GetProdutoDetalhe(iCOD_Produto: integer); overload;
procedure GetProdutoDetalhe(iCOD_Produto, iCOD_Filial: integer); overload;
procedure GetVendedor(iCOD_Vendedor: integer);

var
  iCOD_FILIAL, iCOD_VENDEDOR: Integer;
  sRAZAO_FILIAL, sNOME_VENDEDOR: String;

implementation

uses Service.cadastro, System.SysUtils, Vcl.Dialogs, Provider.conversao,
  View.mensagens;

procedure GetPessoas(iTipo: integer);
begin
  try
    ServiceCadastro.QRY_pessoas.Close;
    ServiceCadastro.QRY_pessoas.SQL.Clear;
    ServiceCadastro.QRY_pessoas.SQL.Add('SELECT * FROM PESSOAS WHERE TIPOPESSOA = :TIPOPESSOA ');
    ServiceCadastro.QRY_pessoas.SQL.Add('ORDER BY CODIGO DESC');
    ServiceCadastro.QRY_pessoas.Params[0].AsInteger := iTipo;
    ServiceCadastro.QRY_pessoas.Open;
  except on e:exception do
    ShowMessage(e.Message);
  end;
end;

procedure GetProdutos;
begin
  try
    ServiceCadastro.QRY_produto1.Close;
    ServiceCadastro.QRY_produto1.SQL.Clear;
    ServiceCadastro.QRY_produto1.SQL.Add('SELECT * FROM PRODUTO ORDER BY CODIGO');
    ServiceCadastro.QRY_produto1.Open;
  except on e:exception do
    ShowMessage(e.Message);
  end;
end;

procedure GetProdutoDetalhe(iCOD_Produto: integer);
begin
  try
    ServiceCadastro.QRY_produto2.Close;
    ServiceCadastro.QRY_produto2.SQL.Clear;
    ServiceCadastro.QRY_produto2.SQL.Add('SELECT * FROM PRODUTO_DETALHE WHERE CODIGO_PRODUTO = :CODIGO');
    ServiceCadastro.QRY_produto2.ParamByName('CODIGO').AsInteger := iCOD_Produto;
    ServiceCadastro.QRY_produto2.Open;
  except on e:exception do
    ShowMessage(e.Message);
  end;
end;

procedure GetProdutoDetalhe(iCOD_Produto, iCOD_Filial: integer);
begin
  try
    ServiceCadastro.QRY_produto2.Close;
    ServiceCadastro.QRY_produto2.SQL.Clear;
    ServiceCadastro.QRY_produto2.SQL.Add('SELECT * FROM PRODUTO_DETALHE WHERE CODIGO_PRODUTO = :CODIGO ');
    ServiceCadastro.QRY_produto2.SQL.Add('AND FILIAL = :FILIAL');
    ServiceCadastro.QRY_produto2.ParamByName('CODIGO').AsInteger := iCOD_Produto;
    ServiceCadastro.QRY_produto2.ParamByName('FILIAL').AsInteger := iCOD_Filial;
    ServiceCadastro.QRY_produto2.Open;
  except on e:exception do
    ShowMessage(e.Message);
  end;
end;

procedure GetVendedor(iCOD_Vendedor: integer);
begin
  try
    ServiceCadastro.QRY_pessoas.Close;
    ServiceCadastro.QRY_pessoas.SQL.Clear;
    ServiceCadastro.QRY_pessoas.SQL.Add('SELECT * FROM PESSOAS WHERE CODIGO = :CODIGO AND TIPOPESSOA = :TIPO');
    ServiceCadastro.QRY_pessoas.ParamByName('CODIGO').AsInteger := iCOD_Vendedor;
    ServiceCadastro.QRY_pessoas.ParamByName('TIPO').AsInteger := PessoasToInt(tpFuncionarios);
    ServiceCadastro.QRY_pessoas.Open;

    if ServiceCadastro.QRY_pessoas.RecordCount > 0 then
    begin
      iCOD_Vendedor   := 0;
      sNOME_VENDEDOR  := '';

      iCOD_Vendedor   := ServiceCadastro.QRY_pessoasCODIGO.AsInteger;
      sNOME_VENDEDOR  := ServiceCadastro.QRY_pessoasRAZAO.AsString;
    end
    else
      TViewMensagens.Mensagem('Vendedor não encontrado!', 'Informação', 'I', [mbOk]);

  except on e:exception do
    ShowMessage(e.Message);
  end;
end;

end.
