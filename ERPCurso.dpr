program ERPCurso;

uses
  Vcl.Forms,
  View.principal in 'src\views\View.principal.pas' {ViewPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.Run;
end.
