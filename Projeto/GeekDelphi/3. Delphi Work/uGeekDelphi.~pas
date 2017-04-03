unit uGeekDelphi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, jpeg, ExtCtrls, Grids, DBGrids,
  RpCon, RpConDS, RpDefine, RpRave, ComCtrls;

type
  TFormMain = class(TForm)
    Cnn_DMD: TADOConnection;
    QryDMD: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    EditServer: TEdit;
    btnConectar: TBitBtn;
    EditBanco: TEdit;
    Log: TMemo;
    Label3: TLabel;
    EditUsuario: TEdit;
    Label4: TLabel;
    EditSenha: TEdit;
    Shape1: TShape;
    Image1: TImage;
    Image2: TImage;
    Button1: TButton;
    DBGrid1: TDBGrid;
    qry_vendas: TADOQuery;
    qry_vendasDat_Venda: TStringField;
    qry_vendasCod_Cliente: TIntegerField;
    qry_vendasDes_Client: TStringField;
    qry_vendasCod_Produto: TIntegerField;
    qry_vendasDes_Produt: TStringField;
    qry_vendasQtd_Produto: TIntegerField;
    qry_vendasVlr_TotItem: TBCDField;
    ds_vendas: TDataSource;
    RvProject1: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    Button2: TButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Button3: TButton;
    qry_pedido: TADOQuery;
    qry_pedidopedido: TIntegerField;
    lb_total: TLabel;
    lb_pedido: TLabel;
    procedure btnConectarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    procedure EscreveLog(PMsg: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;


implementation

uses
  UCliente;

{$R *.dfm}

procedure TFormMain.btnConectarClick(Sender: TObject);
begin
  screen.Cursor := crHourGlass;
  try
    Cnn_DMD.Connected := False;
    EscreveLog('Conectando ao servidor DMD');
    EscreveLog('------------------------------------------------------------------------------------');
    try
      Cnn_DMD.ConnectionString := 'Provider=SQLOLEDB.1;Password='+EditSenha.Text+
                                  ';Persist Security Info=True;User ID='+EditUsuario.Text+
                                  ';Initial Catalog='+EditBanco.Text+
                                  ';Data Source='+EditServer.Text;
      Cnn_DMD.Connected := True;
      EscreveLog('Conexão realizada com sucesso!');
      EscreveLog('------------------------------------------------------------------------------------');
      btnConectar.Enabled := False;

      //Exemplo Consulta SQL
      QryDMD.Close;
      QryDMD.SQL.Clear;
      QryDMD.SQL.Add('select getdate(), @@SERVERNAME ');
      QryDMD.Open;
      EscreveLog( QryDMD.Fields[0].AsString +' - '+ QryDMD.Fields[1].AsString);
      QryDMD.Close;

    except
      btnConectar.Enabled := True;
      EditServer.SetFocus;
      EscreveLog('Erro ao conectar com o servidor');
      EscreveLog('------------------------------------------------------------------------------------');
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFormMain.EscreveLog(PMsg: String);
begin
  Log.Lines.Add(PMsg + ' : '+ DateTimeToStr(Now));
  Log.Repaint;
end;

procedure TFormMain.Button1Click(Sender: TObject);
var
total:integer;
begin

try
qry_vendas.close;
qry_vendas.SQL.Clear;
qry_vendas.SQL.add ('select * from vendas ');
qry_vendas.Open;
total:=qry_vendas.RecordCount;
lb_total.Caption:='Total de registros: '+  IntToStr(total)
except
    ShowMessage('Erro ao listar vendas !');
  end;

end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
RvProject1.Execute;
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
begin
 Statusbar1.Panels [0].Text := ' '+formatdatetime ('dddd","dd" de "mmmm" de "yyyy',now);// para data
 statusbar1.Panels [1].Text := ' '+formatdatetime ('hh:mm:ss',now);//para hora
end;

procedure TFormMain.Button3Click(Sender: TObject);
begin
try
qry_pedido.close;
qry_pedido.SQL.Clear;
qry_pedido.SQL.add ('select ( ( sum( VENDAS.Qtd_Produto ) / 30 ) * 5 ) as pedido from vendas');
qry_pedido.Open;

lb_pedido.Caption:='Demanda de pedido para NARIDRIN GTS AD 15 ML : '+(IntToStr(qry_pedido.fieldbyname('pedido').AsInteger)) +' items';

except
    ShowMessage('Erro ao gerar demanda !');
  end;
end;

end.
