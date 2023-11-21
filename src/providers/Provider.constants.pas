unit Provider.constants;

interface

procedure GetPessoas(iTipo: integer);
procedure GetProdutos;

var
  iCOD_FILIAL: Integer;
  sRAZAO_FILIAL: String;

implementation

uses Service.cadastro, System.SysUtils, Vcl.Dialogs;

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

end.
