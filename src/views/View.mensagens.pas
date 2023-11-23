unit View.mensagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TMyButtons = (mbSim, mbNao, mbOk);

type
  TViewMensagens = class(TViewBase)
    pnlImagens: TPanel;
    pnlConteudo: TPanel;
    pnlTitulo: TPanel;
    pnlBotoes: TPanel;
    mmoTexto: TMemo;
    lblTitulo: TLabel;
    btnOk: TSpeedButton;
    btnSim: TSpeedButton;
    btnNao: TSpeedButton;
    imgAlert: TImage;
    imgInformation: TImage;
    imgErro: TImage;
    procedure btnSimClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function Mensagem(Texto: String; Titulo: String; Tipo: Char; Botoes: array of TMyButtons): Boolean;
  end;

var
  ViewMensagens: TViewMensagens;

implementation

{$R *.dfm}

uses View.fundo;

{ TViewMensagens }

procedure TViewMensagens.btnNaoClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrNo;
end;

procedure TViewMensagens.btnOkClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewMensagens.btnSimClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrYes;
end;

class function TViewMensagens.Mensagem(Texto, Titulo: String; Tipo: Char;
  Botoes: array of TMyButtons): Boolean;
var
  i: Integer;
  view: TViewMensagens;
begin
  view := TViewMensagens.Create(nil);
  try
    view.lblTitulo.Caption := Titulo;
    view.mmoTexto.Text := Texto;

    for i := 0 to Length(Botoes) - 1 do
    begin

      case (Botoes[i]) of
        mbOk:  begin
                 view.btnOk.Visible  := true;
                 view.btnOk.Align    := alRight;
               end;

        mbSim: begin
                 view.btnSim.Visible := true;
                 view.btnSim.Align   := alRight;
               end;

        mbNao: begin
                 view.btnNao.Visible := true;
                 view.btnNao.Align   := alRight;
               end;

        else begin
          view.btnOk.Visible := true;
          view.btnOk.Visible := true;
        end;

      end;
    end;

    case Tipo of
      'I': view.imgInformation.Visible := true;
      'E': view.imgErro.Visible        := true;
      'A': view.imgAlert.Visible       := true;

      else begin
        view.imgInformation.Visible := true;
      end;
    end;

    ViewFundo.Show;
    view.ShowModal;

    case (view.ModalResult) of
      mrYes, mrOk: Result := true;
      else
        Result := false;
    end;

  finally
    if view <> nil then
    begin
      ViewFundo.Hide;
      FreeAndNil(view);
    end;
  end;
end;

end.
