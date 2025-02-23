
class ContaBancaria{
  final int id;
  final String nome;
  final TipoConta tipoConta;
  final String numeroAgencia;
  final String numeroConta;
  final bool ativo;
  final DateTime dataCadastro;
  final String? observacao;
  final DateTime? ultimaAtualizacao;

  ContaBancaria({required this.id, required this.nome, required this.tipoConta, required this.numeroAgencia, required this.numeroConta, required this.ativo, required this.dataCadastro, required this.ultimaAtualizacao, required this.observacao});
}
enum TipoConta { contaCorrente, contaPoupanca, outros}