unit VendasDAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, jpeg, ExtCtrls, uModelVendas,uGeekDelphi,
   Menus, ComCtrls;


type
  TDvendas = class

   private

   x:TFormMain;

   public

   procedure AllVendas (v:TMvendas, l:TListView);
   
  end;

  implementation

{ TDvendas }

procedure TDvendas.AllVendas (v:TMvendas, l:TListView);
var
li:TListItem;
begin

  x:=TFormMain.Create(nil);

  x.QRY_VENDAS.Close;
  x.QRY_VENDAS.SQL.Clear;
  x.QRY_VENDAS.SQL.Add('select * from vendas');
  x.QRY_VENDAS.Open;

  x.QRY_VENDAS.First;
  L.Items.Clear;
 while not x.QRY_VENDAS.Eof do
begin
 v.SetDataVenda(x.QRY_VENDAS.fieldByname('Dat_venda').Value);
  v.SetCodCliente(x.QRY_VENDAS.fieldByname('Cod_Cliente').AsInteger);
  v.SetCliente(x.QRY_VENDAS.fieldByname('Des_Client').AsString);
  v.SetCodProd(x.QRY_VENDAS.fieldByname('Cod_produto').Asinteger);
  v.SetProd(x.QRY_VENDAS.fieldByname('Des_Produt').AsString);
  v.SetQte(x.QRY_VENDAS.fieldByname('Qtd_produto').Asinteger);
  v.SetValor(x.QRY_VENDAS.fieldByname('Vlr_TotItem').AsFloat);

li:=l.Items.add;
li.Caption:=v.GetDataVenda;
li.SubItems.Add(inttostr(v.GetCodCli));
li.SubItems.Add();
li.SubItems.Add();
li.SubItems.Add();
li.SubItems.Add() ;

try 
  x.QRY_VENDAS.Next;





  ShowMessage(x.QRY_VENDAS.fieldByname('Cod_Cliente').AsString);

end;

end.
