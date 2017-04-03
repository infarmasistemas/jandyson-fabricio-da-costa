unit uModelVendas;

interface

uses
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls;

type
  TMvendas = class

  private

  FdtVendas:string;
  FcodCliente:integer;
  Fcliente:string;
  FcodProd:integer;
  Fprod:string;
  FqtdProd:integer;

  Fvlr:double;



  public

  // Meus getter e seters
  procedure SetDataVenda(AcData:string);
  procedure SetCodCliente(AcCod:integer);
  procedure SetCliente(AcCl:string);
  procedure SetCodProd(AcCodPro:integer);
  procedure SetProd(AcProd:string);
  procedure SetQte(AcQte:integer);
  procedure SetValor(AcVl:double);

  function GetDataVenda:string;
  function GetCodCli:integer;
  function GetCliente:string;
  function GetCodPro:integer;
  function GetProd:string;
    function GetQte:integer;
  function GetValor:double;

  end;




implementation




{ TMvendas }

function TMvendas.GetCliente: string;
begin
Result:=Fcliente;
end;

function TMvendas.GetCodCli: integer;
begin
Result:=FcodCliente;
end;

function TMvendas.GetCodPro: integer;
begin
 Result:=FcodProd;
end;

function TMvendas.GetDataVenda: string;
begin
 Result:=FdtVendas;
end;

function TMvendas.GetProd: string;
begin
  Result:=Fprod;
end;

function TMvendas.GetQte: integer;
begin
Result:=FqtdProd;
end;

function TMvendas.GetValor: double;
begin
  Result:=Fvlr;
end;

procedure TMvendas.SetCliente(AcCl: string);
begin
Fcliente:=AcCl;
end;

procedure TMvendas.SetCodCliente(AcCod: integer);
begin
   FcodCliente:=AcCod;
end;

procedure TMvendas.SetCodProd(AcCodPro: integer);
begin
  FcodProd:=AcCodPro;
end;

procedure TMvendas.SetDataVenda(AcData: string);
begin
  FdtVendas:=AcData;
end;

procedure TMvendas.SetProd(AcProd: string);
begin
    Fprod:=AcProd;
end;

procedure TMvendas.SetQte(AcQte: integer);
begin
   FqtdProd:=AcQte;
end;

procedure TMvendas.SetValor(AcVl: double);
begin
    Fvlr:=AcVl;
end;

end.
