unit View.vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Provider.constants, Service.cadastro,
  View.produtos, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, View.mensagens, View.funcionarios;

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
    TBL_ItensMemoria: TFDMemTable;
    TBL_ItensMemoriaCOD_MOVESTOQUE: TIntegerField;
    TBL_ItensMemoriaCOD_ITEM: TIntegerField;
    TBL_ItensMemoriaVLR_UNITARIO: TCurrencyField;
    TBL_ItensMemoriaVLR_DESCONTO: TCurrencyField;
    TBL_ItensMemoriaVLR_SUBTOTAL: TCurrencyField;
    TBL_ItensMemoriaQTD_ITEM: TCurrencyField;
    procedure edtCodigoVendedorExit(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtProdutoInvokeSearch(Sender: TObject);
    procedure edtQuantidadeExit(Sender: TObject);
    procedure btnSalvarProdutoClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtCodigoVendedorInvokeSearch(Sender: TObject);
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

procedure TViewVendas.btnNovoClick(Sender: TObject);
begin
  inherited;
  ServiceCadastro.QRY_movestoqueTIPOESTOQUE.AsInteger := 1; // Tipo venda = 1
  ServiceCadastro.QRY_movestoqueDATA.AsDateTime := Date;
  ServiceCadastro.QRY_movestoqueHORA.AsDateTime := Time;
  ServiceCadastro.QRY_movestoque.ApplyUpdates(0);
end;

procedure TViewVendas.btnSalvarClick(Sender: TObject);
begin
  ServiceCadastro.QRY_movestoque.Edit;
  ServiceCadastro.QRY_movestoqueVALORDESCONTO.AsFloat := 0;
  ServiceCadastro.QRY_movestoqueVALORTOTAL.AsFloat := TOTAL_VENDA;
  ServiceCadastro.QRY_movestoque.Post;
  TViewMensagens.Mensagem('Venda gravada com sucesso!', 'Sucesso', 'I', [mbOk]);

  cpLista.ActiveCard := card_pesquisa;

  if ServiceCadastro.QRY_cadcaixa.State = dsInsert then
    SalvarCaixa('E', 'VENDA N.' + IntToStr(ServiceCadastro.QRY_movestoqueCODIGO.AsInteger), ServiceCadastro.QRY_movestoqueVALORTOTAL.AsFloat);
end;

procedure TViewVendas.btnSalvarProdutoClick(Sender: TObject);
begin
  inherited;

  if not TBL_ItensMemoria.IsEmpty then
  begin
    TBL_ItensMemoria.Edit;
    TBL_ItensMemoriaVLR_UNITARIO.AsFloat  := StrToFloatDef(edtVlrUnitario.Text, 0);
    TBL_ItensMemoriaQTD_ITEM.AsFloat      := StrToFloatDef(edtQuantidade.Text, 0);
    TBL_ItensMemoriaVLR_DESCONTO.AsFloat  := 0;
    TBL_ItensMemoriaVLR_SUBTOTAL.AsFloat  := StrToFloaTDef(edtSubtotal.Text, 0);
    TBL_ItensMemoria.Post;

    TBL_ItensMemoria.First;
    while not TBL_ItensMemoria.Eof do
    begin
      ServiceCadastro.QRY_movestoque_item.Close;
      ServiceCadastro.QRY_movestoque_item.Open;
      ServiceCadastro.QRY_movestoque_item.Insert;
      ServiceCadastro.QRY_movestoque_itemCODIGO_MOVIMENTO.AsInteger :=  TBL_ItensMemoriaCOD_MOVESTOQUE.AsInteger;
      ServiceCadastro.QRY_movestoque_itemCODIGO_ITEM.AsInteger      :=  TBL_ItensMemoriaCOD_ITEM.AsInteger;
      ServiceCadastro.QRY_movestoque_itemQUANTIDADE.AsFloat         :=  TBL_ItensMemoriaQTD_ITEM.AsFloat;
      ServiceCadastro.QRY_movestoque_itemVALOR_UNITARIO.AsFloat     :=  TBL_ItensMemoriaVLR_UNITARIO.AsFloat;
      ServiceCadastro.QRY_movestoque_itemVALOR_TOTAL.AsFloat        :=  TBL_ItensMemoriaVLR_SUBTOTAL.AsFloat;
      ServiceCadastro.QRY_movestoque_itemVALOR_DESCONTO.AsFloat     :=  TBL_ItensMemoriaVLR_DESCONTO.AsFloat;
      ServiceCadastro.QRY_movestoque_item.Post;

      TBL_ItensMemoria.Next;
    end;

    ServiceCadastro.QRY_movestoque_item.ApplyUpdates(0);

    GetVendaItem(ServiceCadastro.QRY_movestoqueCODIGO.AsInteger);

    edtTotalVenda.Text := FloatToStr(TOTAL_VENDA);

    TBL_ItensMemoria.EmptyDataSet;

    edtProduto.Clear;
    edtQuantidade.Clear;
    edtVlrUnitario.Clear;
    edtSubtotal.Clear;

    edtProduto.SetFocus;
  end;

end;

procedure TViewVendas.edtCodigoVendedorExit(Sender: TObject);
begin
  inherited;
  try
  if StrToIntDef(edtCodigoVendedor.Text, 0) > 0 then
  begin
    GetVendedor(StrToInt(edtCodigoVendedor.Text));
    lblNomeVendedor.Caption := sNOME_VENDEDOR;
    ServiceCadastro.QRY_movestoqueVENDEDOR.AsInteger := iCODIGO_VENDEDOR;
  end;
  except on ex:exception do
    raise Exception.Create(ex.Message);
  end;
end;

procedure TViewVendas.edtCodigoVendedorInvokeSearch(Sender: TObject);
begin
  inherited;

  ViewFuncionarios := TViewFuncionarios.Create(Self);
  try
    ViewFuncionarios.Top := ViewFuncionarios.Top;
    ViewFuncionarios.Left := ViewFuncionarios.Left;
    ViewFuncionarios.pnlBotaoSelecionar.Visible := true;

    ViewFuncionarios.ShowModal;

    if ViewFuncionarios.ModalResult = mrOk then
    begin
      edtCodigoVendedorExit(Sender);
      ServiceCadastro.QRY_pessoas.Close;
      ServiceCadastro.QRY_pessoas.Open;
      ServiceCadastro.QRY_pessoas.Insert;
    end;
  finally
    FreeAndNil(ViewFuncionarios);
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

      TBL_ItensMemoria.Close;
      TBL_ItensMemoria.Open;
      TBL_ItensMemoria.Insert;
      TBL_ItensMemoriaCOD_MOVESTOQUE.AsInteger  := ServiceCadastro.QRY_movestoqueCODIGO.AsInteger;
      TBL_ItensMemoriaCOD_ITEM.AsInteger        := ServiceCadastro.QRY_produto1CODIGO.AsInteger;

      edtQuantidade.Text := IntToStr(1);
      edtSubtotal.Text := FloatToStr(ServiceCadastro.QRY_produto2VENDAVISTA.AsFloat);
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
