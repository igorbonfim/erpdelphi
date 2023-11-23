unit View.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXPanels, Vcl.WinXCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlIcone: TPanel;
    imgIcon: TImage;
    pnlFechar: TPanel;
    btnSair: TSpeedButton;
    lblTitulo: TLabel;
    btnCancelar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    pnlBackground: TPanel;
    cpLista: TCardPanel;
    card_pesquisa: TCard;
    card_cadastro: TCard;
    pnlTituloPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    dgbDados: TDBGrid;
    dsDados: TDataSource;
    procedure btnSairClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure cpListaCardChange(Sender: TObject; PrevCard, NextCard: TCard);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    FTela: string;
    { Private declarations }
  public
    { Public declarations }
    property Tela: string read FTela write FTela;
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

uses Service.cadastro, Provider.constants, Provider.conversao, View.mensagens;

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.State in dsEditModes then
   dsDados.DataSet.Cancel;
  cpLista.ActiveCard := card_pesquisa;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := card_cadastro;
  dsDados.DataSet.Edit;
end;

procedure TViewBaseListas.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.RecordCount > 0 then
  begin

    if Self.Tag > 0 then
    begin
      case Self.Tag of
        1:
        begin
          if TViewMensagens.Mensagem('Deseja mesmo excluir esse cliente?', 'Exclusão', 'A', [mbSim, mbNao]) then
          begin
            dsDados.DataSet.Delete;
            TViewMensagens.Mensagem('Cliente excluído com sucesso!', 'Sucesso', 'E', [mbOk]);
          end;
        end;

        2:
        begin
          if TViewMensagens.Mensagem('Deseja mesmo excluir esse fornecedor?', 'Exclusão', 'A', [mbSim, mbNao]) then
          begin
            dsDados.DataSet.Delete;
            TViewMensagens.Mensagem('Fornecedor excluído com sucesso!', 'Sucesso', 'E', [mbOk]);
          end;
        end;

        3:
        begin
          if TViewMensagens.Mensagem('Deseja mesmo excluir esse funcionário?', 'Exclusão', 'A', [mbSim, mbNao]) then
          begin
            dsDados.DataSet.Delete;
            TViewMensagens.Mensagem('Funcionário excluído com sucesso!', 'Sucesso', 'E', [mbOk]);
          end;
        end;
      end;
    end
    else begin
      if FTela = TelasToStr(tpProdutos) then
      begin
        if TViewMensagens.Mensagem('Deseja mesmo excluir esse produto?', 'Exclusão', 'A', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Produto excluído com sucesso!', 'Sucesso', 'E', [mbOk]);
        end;
      end;

      if FTela = TelasToStr(tpCaixa) then
      begin
        if TViewMensagens.Mensagem('Deseja mesmo excluir esse caixa?', 'Exclusão', 'A', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Caixa excluído com sucesso!', 'Sucesso', 'E', [mbOk]);
        end;
      end;

      if FTela = TelasToStr(tpGrupo) then
      begin
        if TViewMensagens.Mensagem('Deseja mesmo excluir esse grupo?', 'Exclusão', 'A', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Grupo excluído com sucesso!', 'Sucesso', 'E', [mbOk]);
        end;
      end;

      if FTela = TelasToStr(tpSubgrupo) then
      begin
        if TViewMensagens.Mensagem('Deseja mesmo excluir esse subgrupo?', 'Exclusão', 'A', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Subgrupo excluído com sucesso!', 'Sucesso', 'E', [mbOk]);
        end;
      end;
    end;

    cpLista.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := card_cadastro;
  dsDados.DataSet.Insert;
end;

procedure TViewBaseListas.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin
  inherited;

  if dsDados.DataSet.State in dsEditModes then
  begin

    if Self.Tag > 0 then
    begin
      ServiceCadastro.QRY_pessoasTIPOPESSOA.AsInteger := Self.Tag;
      ServiceCadastro.QRY_pessoas.Post;

      case Self.Tag of
        1:
        begin
          TViewMensagens.Mensagem('Cliente gravado com sucesso!', 'Salvar', 'I', [mbOk]);
        end;

        2:
        begin
          TViewMensagens.Mensagem('Fornecedor gravado com sucesso!', 'Salvar', 'I', [mbOk]);
        end;

        3:
        begin
          TViewMensagens.Mensagem('Funcionário gravado com sucesso!', 'Salvar', 'I', [mbOk]);
        end;
      end;
    end
    else begin
      dsDados.DataSet.Post;

      if FTela = TelasToStr(tpProdutos) then
        TViewMensagens.Mensagem('Produto gravado com sucesso!', 'Salvar', 'I', [mbOk]);

      if FTela = TelasToStr(tpCaixa) then
        TViewMensagens.Mensagem('Caixa gravado com sucesso!', 'Salvar', 'I', [mbOk]);

      if FTela = TelasToStr(tpGrupo) then
        TViewMensagens.Mensagem('Grupo gravado com sucesso!', 'Salvar', 'I', [mbOk]);

      if FTela = TelasToStr(tpSubgrupo) then
        TViewMensagens.Mensagem('Subgrupo gravado com sucesso!', 'Salvar', 'I', [mbOk]);
    end;

    cpLista.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewBaseListas.cpListaCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin
  inherited;
  if cpLista.ActiveCard = card_cadastro then
    SelectFirst;
end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := card_pesquisa;
  GetPessoas(Self.Tag);
end;

procedure TViewBaseListas.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
