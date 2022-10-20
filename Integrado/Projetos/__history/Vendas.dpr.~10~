program Vendas;

uses
  Vcl.Forms,
  CadastroVendas in '..\CadastroVendas.pas' {CadastroDeVendas},
  DBvendas in '..\DBvendas.pas' {DbVendas1},
  Vcl.Themes,
  Vcl.Styles,
  TelaCadastroVenda in '..\TelaCadastroVenda.pas' {TelaCadastroVendas},
  TelaConsultaClienteVenda in '..\TelaConsultaClienteVenda.pas' {TelaConsultaCliente},
  TelaConsultaProdutoVenda in '..\TelaConsultaProdutoVenda.pas' {TelaConsultaProduto},
  CadastroProdutoVenda in '..\CadastroProdutoVenda.pas' {TelaCadastroProdutoVenda},
  ImportaXmlVendas in 'ImportaXmlVendas.pas' {XML},
  TelaExportaçãoXML in '..\TelaExportaçãoXML.pas' {ExportarXML},
  TelaConsultaPrazoVendas in '..\TelaConsultaPrazoVendas.pas' {ConsultaPrazo},
  TelaConsultaFormaPagamentoVendas in '..\TelaConsultaFormaPagamentoVendas.pas' {ConsultaFormaPagamento},
  TelaCadastroFinanceiro in '..\TelaCadastroFinanceiro.pas' {CadastroAreceber};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TCadastroDeVendas, CadastroDeVendas);
  Application.CreateForm(TDbVendas1, DbVendas1);
  Application.CreateForm(TTelaCadastroVendas, TelaCadastroVendas);
  Application.CreateForm(TTelaConsultaCliente, TelaConsultaCliente);
  Application.CreateForm(TTelaConsultaProduto, TelaConsultaProduto);
  Application.CreateForm(TTelaCadastroProdutoVenda, TelaCadastroProdutoVenda);
  Application.CreateForm(TXML, XML);
  Application.CreateForm(TExportarXML, ExportarXML);
  Application.CreateForm(TConsultaPrazo, ConsultaPrazo);
  Application.CreateForm(TConsultaFormaPagamento, ConsultaFormaPagamento);
  Application.CreateForm(TCadastroAreceber, CadastroAreceber);
  Application.Run;
end.
