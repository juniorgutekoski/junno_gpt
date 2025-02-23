import 'package:junno_app/src/commons/core/financas/conta_bancaria_entity.dart';
import 'package:junno_app/src/commons/enuns_communs.dart';

class FormaPagamento {
  final int id;
  final String tipoFormaPagamento;
  final ContaBancaria contaBancaria;
  final DateTime ultimaAlteracao;

  FormaPagamento(
      {required this.id,
      required this.tipoFormaPagamento,
      required this.contaBancaria,
      required this.ultimaAlteracao});
}
