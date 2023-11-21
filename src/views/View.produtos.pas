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
    procedure FormShow(Sender: TObject);
    procedure dsDadosDataChange(Sender: TObject; Field: TField);
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

procedure TViewProdutos.dsDadosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  GetProdutoDetalhe(ServiceCadastro.QRY_produto1CODIGO.AsInteger);
end;

procedure TViewProdutos.FormShow(Sender: TObject);
begin
  inherited;
  GetProdutos;
end;

end.
