program Vendas;

uses
  Vcl.Forms,
  DBvendas in '..\DBvendas.pas' {DbVendas1},
  Vcl.Themes,
  Vcl.Styles,
  TelaCadastroVenda in '..\TelaCadastroVenda.pas' {TelaCadastroVendas},
  TelaConsultaClienteVenda in '..\TelaConsultaClienteVenda.pas' {TelaConsultaCliente},
  TelaConsultaProdutoVenda in '..\TelaConsultaProdutoVenda.pas' {TelaConsultaProduto},
  CadastroProdutoVenda in '..\CadastroProdutoVenda.pas' {TelaCadastroProdutoVenda},
  TelaExporta��oXML in '..\TelaExporta��oXML.pas' {ExportarXML},
  TelaConsultaPrazoVendas in '..\TelaConsultaPrazoVendas.pas' {ConsultaPrazo},
  TelaConsultaFormaPagamentoVendas in '..\TelaConsultaFormaPagamentoVendas.pas' {ConsultaFormaPagamento},
  TelaCadastroFinanceiro in '..\TelaCadastroFinanceiro.pas' {CadastroAreceber},
  U_Origin.Return in '..\CoversorJsonXML\Padronizacao\U_Origin.Return.pas',
  U_Normalize in '..\CoversorJsonXML\Padronizacao\U_Normalize.pas',
  DBXml in '..\Vendas\Banco de dados\DbXml\DBXml.pas' {DbXmlVendas: TDataModule},
  ImportaXmlVendas in '..\Vendas\Xml\ImportaXmlVendas.pas' {XML},
  U_JSON.XML in '..\CoversorJsonXML\JSONtoXML\U_JSON.XML.pas',
  U_XML.JSON in '..\ConversorXMlJson\XMLtoJSON\U_XML.JSON.pas',
  U_FormatConverter in '..\ConversorXMlJson\FormatConverter\U_FormatConverter.pas',
  DbXmlImportacao in '..\Vendas\Banco de dados\DbXml\DbXmlImportacao.pas' {DbImportacaoXml: TDataModule},
  DbPrincipal in '..\Conex�oDB\DbPrincipal.pas' {DbMaster: TDataModule},
  CadastroVendas in '..\CadastroVendas.pas' {CadastroDeVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TCadastroDeVendas, CadastroDeVendas);
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TDbVendas1, DbVendas1);
  Application.CreateForm(TDbXmlVendas, DbXmlVendas);
  Application.CreateForm(TDbImportacaoXml, DbImportacaoXml);
  Application.CreateForm(TTelaConsultaCliente, TelaConsultaCliente);
  Application.CreateForm(TTelaCadastroVendas, TelaCadastroVendas);
  Application.CreateForm(TTelaConsultaProduto, TelaConsultaProduto);
  Application.CreateForm(TTelaCadastroProdutoVenda, TelaCadastroProdutoVenda);
  Application.CreateForm(TExportarXML, ExportarXML);
  Application.CreateForm(TConsultaPrazo, ConsultaPrazo);
  Application.CreateForm(TConsultaFormaPagamento, ConsultaFormaPagamento);
  Application.CreateForm(TCadastroAreceber, CadastroAreceber);
  Application.CreateForm(TXML, XML);
  Application.Run;
end.










