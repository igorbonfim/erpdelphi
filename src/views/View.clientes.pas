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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

uses Service.cadastro;

{ TViewClientes }

end.
