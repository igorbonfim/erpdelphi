program ERPCurso;

uses
  Vcl.Forms,
  View.principal in 'src\views\View.principal.pas' {ViewPrincipal},
  Service.conexao in 'src\services\Service.conexao.pas' {ServiceConexao: TDataModule},
  Service.cadastro in 'src\services\Service.cadastro.pas' {ServiceCadastro: TDataModule},
  Provider.constants in 'src\providers\Provider.constants.pas',
  View.base in 'src\views\View.base.pas' {ViewBase},
  View.base.listas in 'src\views\View.base.listas.pas' {ViewBaseListas},
  View.clientes in 'src\views\View.clientes.pas' {ViewClientes},
  View.fornecedores in 'src\views\View.fornecedores.pas' {ViewFornecedores},
  Provider.conversao in 'src\providers\Provider.conversao.pas',
  View.produtos in 'src\views\View.produtos.pas' {ViewProdutos},
  View.mensagens in 'src\views\View.mensagens.pas' {ViewMensagens},
  View.fundo in 'src\views\View.fundo.pas' {ViewFundo},
  View.funcionarios in 'src\views\View.funcionarios.pas' {ViewFuncionarios},
  View.vendas in 'src\views\View.vendas.pas' {ViewVendas},
  View.login in 'src\views\View.login.pas' {ViewLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TViewLogin, ViewLogin);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.Run;
end.
