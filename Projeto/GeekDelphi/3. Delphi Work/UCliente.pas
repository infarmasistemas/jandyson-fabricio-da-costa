unit UCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, uGeekDelphi, ADODB, Provider, DBClient,
  RpCon, RpConDS, RpDefine, RpRave, StdCtrls;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'Select * From VENDAS';
  ADOQuery1.Open;
end;

end.
