unit View.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXPanels, Vcl.WinXCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Provider.conversao;

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
    pnlTituloCadastro: TPanel;
    lblTituloCadastro: TLabel;
    btnVoltarPesquisa: TSpeedButton;
    pnlVoltar: TPanel;
    pnlBotaoSelecionar: TPanel;
    SpeedButton1: TSpeedButton;
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
    procedure btnVoltarPesquisaClick(Sender: TObject);
    procedure dgbDadosDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dsDadosStateChange(Sender: TObject);
  private
    FTela: TPCTelas;
    procedure GetMensagemInsercao;
    procedure GetMensagemExclusao;
    { Private declarations }
  public
    { Public declarations }
    property Tela: TPCTelas read FTela write FTela;
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

uses Service.cadastro, Provider.constants, View.mensagens;

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
    GetMensagemExclusao;
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
    GetMensagemInsercao;
    cpLista.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewBaseListas.btnVoltarPesquisaClick(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := card_pesquisa;
end;

procedure TViewBaseListas.cpListaCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin
  inherited;
  btnVoltarPesquisa.Visible := false;
  if cpLista.ActiveCard = card_cadastro then
  begin
    SelectFirst;
    btnVoltarPesquisa.Visible := true;
  end;
end;

procedure TViewBaseListas.dgbDadosDblClick(Sender: TObject);
begin
  inherited;
  btnEditarClick(Sender);
end;

procedure TViewBaseListas.dsDadosStateChange(Sender: TObject);
begin
  inherited;
  btnNovo.Enabled     := not(dsDados.State in [dsEdit, dsInsert]);
  btnEditar.Enabled   := btnNovo.Enabled and (dsDados.DataSet.RecordCount > 0);
  btnSalvar.Enabled   := dsDados.State in [dsEdit, dsInsert];
  btnCancelar.Enabled := btnSalvar.Enabled;
  btnExcluir.Enabled  := btnEditar.Enabled;
end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := card_pesquisa;
  GetPessoas(Self.Tag);
  dsDados.DataSet.Open;
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

procedure TViewBaseListas.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewBaseListas.GetMensagemInsercao;
begin
  if Self.Tag > 0 then
  begin
    ServiceCadastro.QRY_pessoasTIPOPESSOA.AsInteger := Self.Tag;
    ServiceCadastro.QRY_pessoas.Post;

    case Self.Tag of
      1: TViewMensagens.Mensagem('Cliente gravado com sucesso!', 'Sucesso', 'I', [mbOk]);
      2: TViewMensagens.Mensagem('Fornecedor gravado com sucesso!', 'Sucesso', 'I', [mbOk]);
      3: TViewMensagens.Mensagem('Funcion�rio gravado com sucesso!', 'Sucesso', 'I', [mbOk]);
    end;
  end;
  {
  else begin
    dsDados.DataSet.Post;

    case FTela of
      tpProdutos: TViewMensagens.Mensagem('Produto gravado com sucesso!', 'Sucesso', 'I', [mbOk]);
      tpCaixa: TViewMensagens.Mensagem('Caixa gravado com sucesso!', 'Sucesso', 'I', [mbOk]);
      tpGrupo: TViewMensagens.Mensagem('Grupo gravado com sucesso!', 'Sucesso', 'I', [mbOk]);
      tpSubgrupo: TViewMensagens.Mensagem('Subgrupo gravado com sucesso!', 'Sucesso', 'I', [mbOk]);
    end;

  end;
  }
end;

procedure TViewBaseListas.GetMensagemExclusao;
begin
  if Self.Tag > 0 then
  begin
    case Self.Tag of
      1:
      begin
        if TViewMensagens.Mensagem('Deseja mesmo excluir esse cliente?', 'Exclus�o', 'A', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Cliente exclu�do com sucesso!', 'Sucesso', 'E', [mbOk]);
        end;
      end;

      2:
      begin
        if TViewMensagens.Mensagem('Deseja mesmo excluir esse fornecedor?', 'Exclus�o', 'A', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Fornecedor exclu�do com sucesso!', 'Sucesso', 'E', [mbOk]);
        end;
      end;

      3:
      begin
        if TViewMensagens.Mensagem('Deseja mesmo excluir esse funcion�rio?', 'Exclus�o', 'A', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Funcion�rio exclu�do com sucesso!', 'Sucesso', 'E', [mbOk]);
        end;
      end;
    end;
  end
  else begin

    case FTela of
      tpProdutos:
      begin
        if TViewMensagens.Mensagem('Deseja mesmo excluir esse produto?', 'Exclus�o', 'A', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Produto exclu�do com sucesso!', 'Sucesso', 'E', [mbOk]);
        end;
      end;

      tpCaixa:
      begin
        if TViewMensagens.Mensagem('Deseja mesmo excluir esse caixa?', 'Exclus�o', 'A', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Caixa exclu�do com sucesso!', 'Sucesso', 'E', [mbOk]);
        end;
      end;

      tpGrupo:
      begin
        if TViewMensagens.Mensagem('Deseja mesmo excluir esse grupo?', 'Exclus�o', 'A', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Grupo exclu�do com sucesso!', 'Sucesso', 'E', [mbOk]);
        end;
      end;

      tpSubgrupo:
      begin
        if TViewMensagens.Mensagem('Deseja mesmo excluir esse subgrupo?', 'Exclus�o', 'A', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Subgrupo exclu�do com sucesso!', 'Sucesso', 'E', [mbOk]);
        end;
      end;
    end;
  end;
end;

end.
