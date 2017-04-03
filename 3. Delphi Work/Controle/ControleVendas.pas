unit ControleVendas;


interface

uses
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, uModelVendas, VendasDAO;

type
  TCvendas = class

  private

  vendas:TMvendas;
  dados:TDvendas;

  public

    procedure ControleLista();

  end;




implementation

uses UVendas;






{ TCvendas }

procedure TCvendas.ControleLista;
VAR
L:TListItem;
begin
    dados:=TDvendas.Create;
    dados.AllVendas(vendas,FrmVendas.ListaVendas);




end;

end.


