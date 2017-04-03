unit UVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls;

type
  TFrmVendas = class(TForm)
    MainMenu1: TMainMenu;
    VendasF21: TMenuItem;
    Listar1: TMenuItem;
    Relatrio1: TMenuItem;
    ListaVendas: TListView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
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

end.
