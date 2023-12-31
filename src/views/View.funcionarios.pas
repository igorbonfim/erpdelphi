unit View.funcionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TViewFuncionario = class(TViewBaseListas)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtCodigo: TDBEdit;
    edtRazaoSocial: TDBEdit;
    edtFantasia: TDBEdit;
    edtCnpjCpf: TDBEdit;
    edtTelefone: TDBEdit;
    edtIERG: TDBEdit;
    edtObservacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFuncionario: TViewFuncionario;

implementation

{$R *.dfm}

uses Service.cadastro;

end.
