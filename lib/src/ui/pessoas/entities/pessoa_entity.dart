import 'package:junno_app/src/commons/core/financas/forma_pagamento_entity.dart';
import 'package:junno_app/src/commons/enuns_communs.dart';

class PessoaEntity {
  final String id;
  final String nome;
  final String razaoSocial;
  final String documento;
  final TipoPessoa tipoPessoa;
  final bool ativo;
  final DateTime dataCadastro;
  final DateTime? dataAtualizacao;
  final String? observacao;
  final String? registroGeral;
  final List<Endereco> enderecos;
  final Fiscal informacoesFiscais;
  final List<Contato> contatos;
  final Crediario crediario;
  final MotivoBloqueio? motivoBloqueio;

  PessoaEntity(
      {required this.id,
      required this.nome,
      required this.razaoSocial,
      required this.documento,
      required this.tipoPessoa,
      required this.ativo,
      required this.dataCadastro,
      required this.dataAtualizacao,
      required this.observacao,
      required this.registroGeral,
      required this.enderecos,
      required this.informacoesFiscais,
      required this.contatos,
      required this.crediario,
      required this.motivoBloqueio});
}

class Endereco {
  final TipoContato tipoContato;
  final String logradouro;
  final String numero;
  final String? complemento;
  final String bairro;
  final String cidade;
  final String estado;
  final String cep;
  final String pais;

  Endereco(
      {required this.tipoContato,
      required this.logradouro,
      required this.numero,
      required this.complemento,
      required this.bairro,
      required this.cidade,
      required this.estado,
      required this.cep,
      required this.pais});
}

class Contato {
  final TipoContato tipoContato;
  final String? nome;
  final String? email;
  final String? telefone;
  final String? observacao;

  Contato(
      {required this.tipoContato,
      required this.nome,
      required this.email,
      required this.telefone,
      required this.observacao});
}

class Fiscal {
  final String? inscricaoEstadual;
  final String? inscricaoMunicipal;
  final TipoRegimeTributario? regimeTributario;

  Fiscal(
      {required this.inscricaoEstadual,
      required this.inscricaoMunicipal,
      required this.regimeTributario});
}

class Crediario {
  final double limiteCredito;
  final double limiteUtilizado;
  final List<FormaPagamento> formaPagamentoHablitada;
  final List<AnaliseFinanceira>? analisesFinanceira;
  final DateTime ultimaAtualizacao;

  Crediario(
      {required this.limiteCredito,
      required this.limiteUtilizado,
      required this.formaPagamentoHablitada,
      required this.analisesFinanceira,
      required this.ultimaAtualizacao});
}

class AnaliseFinanceira {
  final DateTime dataAnalise;
  final double? rendaPresumida;
  final int? scoreCredito;
  final bool isNegativado;
  final String? motivoNegativacao;
  final String? observacao;
  final ResultadoAnaliseCredito resultado;
  final String? linkArquivos;

  AnaliseFinanceira(
      {required this.dataAnalise,
      required this.rendaPresumida,
      required this.scoreCredito,
      required this.isNegativado,
      required this.motivoNegativacao,
      required this.observacao,
      required this.resultado,
      required this.linkArquivos});
}
