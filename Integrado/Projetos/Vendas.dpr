program Vendas;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  TelaCadastroVenda in '..\Vendas\Cadastro\TelaCadastroVenda.pas' {TelaCadastroVendas},
  TelaConsultaClienteVenda in '..\Vendas\Consulta\TelaConsultaClienteVenda.pas' {TelaConsultaCliente},
  TelaConsultaProdutoVenda in '..\Vendas\Consulta\TelaConsultaProdutoVenda.pas' {TelaConsultaProduto},
  CadastroProdutoVenda in '..\Vendas\Cadastro\CadastroProdutoVenda.pas' {TelaCadastroProdutoVenda},
  TelaExporta��oXML in '..\TelaExporta��oXML.pas' {ExportarXML},
  TelaConsultaPrazoVendas in '..\Vendas\Consulta\TelaConsultaPrazoVendas.pas' {ConsultaPrazo},
  TelaConsultaFormaPagamentoVendas in '..\Vendas\Consulta\TelaConsultaFormaPagamentoVendas.pas' {ConsultaFormaPagamento},
  TelaCadastroFinanceiro in '..\Vendas\Cadastro\TelaCadastroFinanceiro.pas' {CadastroAreceber},
  U_Origin.Return in '..\CoversorJsonXML\Padronizacao\U_Origin.Return.pas',
  U_Normalize in '..\CoversorJsonXML\Padronizacao\U_Normalize.pas',
  DBXml in '..\Vendas\Banco de dados\DbXml\DBXml.pas' {DbXmlVendas: TDataModule},
  ImportaXmlVendas in '..\Vendas\Xml\ImportaXmlVendas.pas' {XML},
  U_JSON.XML in '..\CoversorJsonXML\JSONtoXML\U_JSON.XML.pas',
  U_XML.JSON in '..\ConversorXMlJson\XMLtoJSON\U_XML.JSON.pas',
  U_FormatConverter in '..\ConversorXMlJson\FormatConverter\U_FormatConverter.pas',
  DbXmlImportacao in '..\Vendas\Banco de dados\DbXml\DbXmlImportacao.pas' {DbImportacaoXml: TDataModule},
  DbPrincipal in '..\Conex�oDB\DbPrincipal.pas' {DbMaster: TDataModule},
  CadastroVendas in '..\Vendas\CadastroVendas.pas' {CadastroDeVendas},
  conectarINI in '..\Vendas\Comandos\conectarINI.pas',
  DbVendas in '..\Vendas\Banco de dados\DbVendas.pas' {DbVendas1: TDataModule},
  Consultas in '..\Vendas\Comandos\Consultas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TDbVendas1, DbVendas1);
  Application.CreateForm(TCadastroDeVendas, CadastroDeVendas);
  Application.CreateForm(TDbXmlVendas, DbXmlVendas);
  Application.CreateForm(TTelaCadastroVendas, TelaCadastroVendas);
  Application.CreateForm(TTelaConsultaCliente, TelaConsultaCliente);
  Application.CreateForm(TTelaConsultaProduto, TelaConsultaProduto);
  Application.CreateForm(TTelaCadastroProdutoVenda, TelaCadastroProdutoVenda);
  Application.CreateForm(TExportarXML, ExportarXML);
  Application.CreateForm(TConsultaPrazo, ConsultaPrazo);
  Application.CreateForm(TConsultaFormaPagamento, ConsultaFormaPagamento);
  Application.CreateForm(TCadastroAreceber, CadastroAreceber);
  Application.CreateForm(TXML, XML);
  Application.CreateForm(TDbImportacaoXml, DbImportacaoXml);
  Application.Run;
end.

































