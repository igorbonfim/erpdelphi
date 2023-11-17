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
    edtCodigo: TDBEdit;
    Label2: TLabel;
    edtRazaoSocial: TDBEdit;
    Label3: TLabel;
    edtFantasia: TDBEdit;
    Label4: TLabel;
    edtCnpjCpf: TDBEdit;
    Label5: TLabel;
    edtTelefone: TDBEdit;
    Label6: TLabel;
    edtIERG: TDBEdit;
    Label7: TLabel;
    edtObservacao: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

uses Service.cadastro, Provider.constants;

{ TViewClientes }

procedure TViewClientes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.QRY_pessoas.State in dsEditModes then
    ServiceCadastro.QRY_pessoas.Cancel;
  cpLista.ActiveCard := card_pesquisa;
end;

procedure TViewClientes.btnEditarClick(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := card_cadastro;
  edtCnpjCpf.SetFocus;
  ServiceCadastro.QRY_pessoas.Edit;
end;

procedure TViewClientes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.QRY_pessoas.RecordCount > 0 then
  begin
    ServiceCadastro.QRY_pessoas.Delete;
    ShowMessage('Cliente excluído com sucesso!');
    cpLista.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewClientes.btnNovoClick(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := card_cadastro;
  edtCnpjCpf.SetFocus;
  ServiceCadastro.QRY_pessoas.Insert;
end;

procedure TViewClientes.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.QRY_pessoas.State in dsEditModes then
  begin
    ServiceCadastro.QRY_pessoasTIPOPESSOA.AsInteger := 1;
    ServiceCadastro.QRY_pessoas.Post;
    ShowMessage('Cliente cadastrado com sucesso!');
    cpLista.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewClientes.FormShow(Sender: TObject);
begin
  inherited;
  GetPessoas(1);
end;

end.
