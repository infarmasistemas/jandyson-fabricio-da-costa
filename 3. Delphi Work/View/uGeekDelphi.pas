unit uGeekDelphi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, jpeg, ExtCtrls;

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
    QRY_VENDAS: TADOQuery;
    QRY_VENDASDat_Venda: TStringField;
    QRY_VENDASCod_Cliente: TIntegerField;
    QRY_VENDASDes_Client: TStringField;
    QRY_VENDASCod_Produto: TIntegerField;
    QRY_VENDASDes_Produt: TStringField;
    QRY_VENDASQtd_Produto: TIntegerField;
    QRY_VENDASVlr_TotItem: TBCDField;
    procedure btnConectarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure EscreveLog(PMsg: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses UVendas;

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
      EscreveLog('Conex�o realizada com sucesso!');
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
begin
if FrmVendas=nil then
begin
  FrmVendas:=TFrmVendas.Create(nil);
  FrmVendas.WindowState:= wsNormal;
  FrmVendas.ShowModal;


end;

end;

end.
