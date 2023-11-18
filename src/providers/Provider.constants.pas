unit Provider.constants;

interface

procedure GetPessoas(iTipo: integer);

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

end.
