unit View.vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Provider.constants, Service.cadastro,
  View.produtos;

type
  TViewVendas = class(TViewBaseListas)
    edtCodigoVendedor: TSearchBox;
    lblNomeVendedor: TLabel;
    lblProdutos: TLabel;
    edtProduto: TSearchBox;
    edtQuantidade: TEdit;
    lblQuantidade: TLabel;
    Label1: TLabel;
    edtVlrUnitario: TEdit;
    edtSubtotal: TEdit;
    lblSubtotal: TLabel;
    btnSalvarProduto: TSpeedButton;
    dbgItensVendas: TDBGrid;
    pnlTotais: TPanel;
    Label2: TLabel;
    edtTotalVenda: TEdit;
    dsItens: TDataSource;
    procedure edtCodigoVendedorExit(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtProdutoInvokeSearch(Sender: TObject);
    procedure edtQuantidadeExit(Sender: TObject);
  private
    { Private declarations }
    procedure GetSubTotal;
  public
    { Public declarations }
  end;

var
  ViewVendas: TViewVendas;

implementation

{$R *.dfm}

procedure TViewVendas.btnEditarClick(Sender: TObject);
begin
  inherited;
  edtTotalVenda.Text := FloatToStrF(TOTAL_VENDA, ffCurrency, 10,2);
end;

procedure TViewVendas.edtCodigoVendedorExit(Sender: TObject);
begin
  inherited;
  if StrToIntDef(edtCodigoVendedor.Text, 0) > 0 then
  begin
    GetVendedor(StrToInt(edtCodigoVendedor.Text));
    lblNomeVendedor.Caption := sNOME_VENDEDOR;
  end;

end;

procedure TViewVendas.edtProdutoInvokeSearch(Sender: TObject);
begin
  inherited;

  ViewProdutos := TViewProdutos.Create(Self);
  try
    ViewProdutos.Top  := ViewVendas.Top;
    ViewProdutos.Left := ViewVendas.Left;
    ViewProdutos.pnlBotaoSelecionar.Visible := true;

    ViewProdutos.ShowModal;

    if ViewProdutos.ModalResult = mrOk then
    begin
      edtProduto.Text     := ServiceCadastro.QRY_produto1NOMECOMPLETO.AsString;
      edtVlrUnitario.Text := FloatToStr(ServiceCadastro.QRY_produto2VENDAVISTA.AsFloat);
      edtQuantidade.SetFocus;
    end;
  finally
    FreeAndNil(ViewProdutos);
  end;
end;

procedure TViewVendas.edtQuantidadeExit(Sender: TObject);
begin
  inherited;
  GetSubTotal;
end;

procedure TViewVendas.FormShow(Sender: TObject);
begin
  inherited;
  GetVendas;
end;

procedure TViewVendas.GetSubTotal;
begin
  if StrToFloatDef(edtQuantidade.Text, 0) > 0 then
  begin
    edtSubtotal.Text := FloatToStr((StrToFloatDef(edtQuantidade.Text, 0)) * (StrToFloatDef(edtVlrUnitario.Text, 0)));
  end;
end;

end.
