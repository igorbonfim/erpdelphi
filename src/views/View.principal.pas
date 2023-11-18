unit View.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlBackPrincipal: TPanel;
    pnlRodape: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlLineTopo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlVersao: TPanel;
    lblVersao: TLabel;
    Label1: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImagemUsuario: TPanel;
    imgUserBranca: TImage;
    pnlDadosUsuarios: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    pnlLicenciado: TPanel;
    pnlLineLicenca: TPanel;
    pnlConteudoLicenca: TPanel;
    lblLicenciado: TLabel;
    lblTituloLicenciado: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pblDadosMenu: TPanel;
    btnClientes: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnConfig: TSpeedButton;
    btnSair: TSpeedButton;
    imgUserLaranja: TImage;
    imgBackground: TImage;
    ImageList_36: TImageList;
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure imgUserBrancaMouseEnter(Sender: TObject);
    procedure imgUserLaranjaMouseLeave(Sender: TObject);
  private
    procedure GetLineMenu(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

uses Provider.constants, View.clientes, View.fornecedores;

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin
  GetLineMenu(Sender);
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin
  GetLineMenu(Sender);

  ViewClientes := TViewClientes.Create(Self);
  try
    ViewClientes.Tag := 1;
    ViewClientes.ShowModal;
  finally
    FreeAndNil(ViewClientes);
  end;
end;

procedure TViewPrincipal.btnConfigClick(Sender: TObject);
begin
  GetLineMenu(Sender);
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin
  GetLineMenu(Sender);

  ViewFornecedores := TViewFornecedores.Create(Self);
  try
    ViewFornecedores.Tag := 2;
    ViewFornecedores.ShowModal;
  finally
    FreeAndNil(ViewFornecedores);
  end;
end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin
  GetLineMenu(Sender);
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  GetLineMenu(btnClientes);
  lblLicenciado.Caption := sRAZAO_FILIAL;  
end;

procedure TViewPrincipal.GetLineMenu(Sender: TObject);
begin
  ShapeMenu.Left    := 0;
  ShapeMenu.Top     := 0;
  ShapeMenu.Height  := TSpeedButton(Sender).Height;
  ShapeMenu.Top     := TSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;
end;

procedure TViewPrincipal.imgUserBrancaMouseEnter(Sender: TObject);
begin
  imgUserBranca.Visible := false;
  imgUserLaranja.Visible := true;
end;

procedure TViewPrincipal.imgUserLaranjaMouseLeave(Sender: TObject);
begin
  imgUserBranca.Visible := true;
  imgUserLaranja.Visible := false;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := $000FBBD9;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := clWhite;
end;

end.
