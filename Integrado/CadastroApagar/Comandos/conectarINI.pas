unit conectarINI;

interface
uses
   System.IniFiles;
type
  TconectarINI  = class
  public
  DiretorioPadrao :string;

  procedure consultarConexaoBanco;
end;


implementation

{ TconectarINI }

uses DbPrincipal;

procedure TconectarINI.consultarConexaoBanco;
var
  ArquivoIni:TIniFile;
  INICaminhodll,ININomeBanco,INILogin,INISenhas,INIIPPostgres,INIPortaPostgres:string;
begin
    DbMaster.ConexãoDb.Close;

    ArquivoIni := TIniFile.Create(DiretorioPadrao +'\ConexaoBanco.ini');
  try
    ININomeBanco := ArquivoIni.ReadString('CONEXAO_BANCO', 'Database', ININomeBanco);
    INILogin := ArquivoIni.ReadString('CONEXAO_BANCO','User_Name' , INILogin);
    INISenhas := ArquivoIni.ReadString('CONEXAO_BANCO', 'Password', INISenhas);
    INIIPPostgres := ArquivoIni.ReadString('CONEXAO_BANCO', 'Server', INIIPPostgres);
    INIPortaPostgres := ArquivoIni.ReadString('CONEXAO_BANCO', 'Port', INIPortaPostgres);
    INICaminhodll := ArquivoIni.ReadString('DLL', 'dll', INICaminhodll);


  finally
    ArquivoIni.Free;
  end;


  DbMaster.ConexãoDb.Params.Clear;
  DbMaster.ConexãoDb.Params.Add('DriverID=PG');
  DbMaster.ConexãoDb.Params.Add('Database='+ININomeBanco);
  DbMaster.ConexãoDb.Params.Add('User_Name='+INILogin);
  DbMaster.ConexãoDb.Params.Add('Password='+INISenhas);
  DbMaster.ConexãoDb.Params.Add('Server='+INIIPPostgres);
  DbMaster.ConexãoDb.Params.Add('Port='+INIPortaPostgres);
  DbMaster.Dll32bit.VendorLib  := INICaminhodll;
  DbMaster.ConexãoDb.Open;
end;

end.
