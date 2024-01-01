unit View.vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TViewVendas = class(TViewBaseListas)
    SearchBox1: TSearchBox;
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
    edtSubtotalPanelTotais: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewVendas: TViewVendas;

implementation

{$R *.dfm}

end.
