unit View.produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TViewProdutos = class(TViewBaseListas)
    dsProdutoDetalhe: TDataSource;
    pnlDetalhe: TPanel;
    dgbDetalhe: TDBGrid;
    pnlTituloCadProduto: TPanel;
    lblTituloCadastroProduto: TLabel;
    Label1: TLabel;
    edtCodigoProduto: TDBEdit;
    Label2: TLabel;
    edtNome: TDBEdit;
    Label3: TLabel;
    edtNomePopular: TDBEdit;
    Label4: TLabel;
    edtCodBarras: TDBEdit;
    Label5: TLabel;
    edtReferencia: TDBEdit;
    Label6: TLabel;
    edtNCM: TDBEdit;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    lblCustoInicial: TLabel;
    DBEdit2: TDBEdit;
    lblVendaVista: TLabel;
    DBEdit3: TDBEdit;
    lblVendaPrazo: TLabel;
    DBEdit4: TDBEdit;
    lblEstoque: TLabel;
    procedure FormShow(Sender: TObject);
    procedure dsDadosDataChange(Sender: TObject; Field: TField);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewProdutos: TViewProdutos;

implementation

{$R *.dfm}

uses Service.cadastro, Provider.constants;

procedure TViewProdutos.btnEditarClick(Sender: TObject);
begin
  inherited;
  dsProdutoDetalhe.DataSet.Edit;
end;

procedure TViewProdutos.btnNovoClick(Sender: TObject);
begin
  inherited;
  ServiceCadastro.QRY_produto1GRUPO.AsInteger := 1;
  ServiceCadastro.QRY_produto1SUBGRUPO.AsInteger := 1;
  ServiceCadastro.QRY_produto2.Open;
  ServiceCadastro.QRY_produto2.Insert;
end;

procedure TViewProdutos.btnSalvarClick(Sender: TObject);
begin
  ServiceCadastro.QRY_produto2.Edit;
  ServiceCadastro.QRY_produto2FILIAL.AsInteger := 1;
  ServiceCadastro.QRY_produto2SIT_TRIBUTARIA.AsInteger := 1;
  ServiceCadastro.QRY_produto2.Post;
  inherited;
end;

procedure TViewProdutos.dsDadosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  GetProdutoDetalhe(ServiceCadastro.QRY_produto1CODIGO.AsInteger, iCOD_FILIAL);
end;

procedure TViewProdutos.FormShow(Sender: TObject);
begin
  inherited;
  GetProdutos;
end;

end.
