unit UVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ControleVendas;

type
  TFrmVendas = class(TForm)
    MainMenu1: TMainMenu;
    VendasF21: TMenuItem;
    Listar1: TMenuItem;
    Relatrio1: TMenuItem;
    ListaVendas: TListView;
    DateTimePicker1: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Listar1Click(Sender: TObject);
  private

  Controle:TCvendas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendas: TFrmVendas;

implementation

{$R *.dfm}

procedure TFrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
FrmVendas:=nil;
end;

procedure TFrmVendas.Listar1Click(Sender: TObject);
begin
Controle:=TCvendas.Create;
Controle.ControleLista;
end;

end.
