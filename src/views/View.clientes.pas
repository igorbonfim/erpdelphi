unit View.clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TViewClientes = class(TViewBaseListas)
    pnlTituloCadCliente: TPanel;
    lblTituloCadastro: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
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

procedure TViewClientes.btnEditarClick(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := card_cadastro;
end;

procedure TViewClientes.btnNovoClick(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := card_cadastro;
end;

procedure TViewClientes.btnSalvarClick(Sender: TObject);
begin
  inherited;
  ServiceCadastro.QRY_pessoas.Edit;
  ServiceCadastro.QRY_pessoas.Post;
  cpLista.ActiveCard := card_pesquisa;
end;

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
