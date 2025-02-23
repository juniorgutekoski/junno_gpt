enum TipoPessoa { juridica, fisica }

enum TipoEndereco { principal, cobranca, entrega }

enum TipoContato { principal, celular, email, whatsapp }

enum TipoRegimeTributario { simplesNascional, lucroPresumido, lucroReal }

enum MotivoBloqueio { inadiplente, bloqueado }

enum ResultadoAnaliseCredito { aprovado, reprovado, pendente }

enum TipoFormaPagamento {
  pix,
  boleto,
  cartaoCredito,
  cartaoDebito,
  cheque,
  dinheiro
}
