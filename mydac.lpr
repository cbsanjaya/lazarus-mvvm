program mydac;

{$mode objfpc}{$H+}

uses
  {$DEFINE UseCThreads}
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, mydac10, connection.dm, view.main, model.barang, model, vm.barang
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.

