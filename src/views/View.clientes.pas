unit View.clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TViewClientes = class(TViewBaseListas)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetPessoas(iTipo: integer);
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

uses Service.cadastro;

{ TViewClientes }

procedure TViewClientes.FormShow(Sender: TObject);
begin
  inherited;
  GetPessoas(1);
end;

procedure TViewClientes.GetPessoas(iTipo: integer);
begin
  ServiceCadastro.QRY_pessoas.Close;
  ServiceCadastro.QRY_pessoas.SQL.Clear;
  ServiceCadastro.QRY_pessoas.SQL.Add('SELECT * FROM PESSOAS WHERE TIPOPESSOA = :TIPOPESSOA');
  ServiceCadastro.QRY_pessoas.Params[0].AsInteger := iTipo;
  ServiceCadastro.QRY_pessoas.Open;
end;

end.
