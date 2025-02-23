import 'package:junno_app/utils/mappers/partner/partner_block_mapper.dart';
import 'package:junno_app/src/domain/models/partner/partner_credit.dart';

extension PartnerCreditMapper on PartnerCredit {
  // Método para converter a entidade PartnerCredit para Map
  Map<String, dynamic> toMap() {
    return {
      'creditLimit': creditLimit,
      'availableCredit': availableCredit,
      'outstandingBalance': outstandingBalance,
      'partnersBlock': partnersBlock?.toMap(), // Corrigido
      'lastUpdated': lastUpdated.toIso8601String(),
    };
  }

  // Método para converter o Map de volta para a entidade PartnerCredit
  static PartnerCredit fromMap(Map<String, dynamic> map) {
    return PartnerCredit(
      creditLimit: map['creditLimit'],
      availableCredit: map['availableCredit'],
      outstandingBalance: map['outstandingBalance'],
      partnersBlock: map['partnersBlock'] != null
          ? PartnerBlockMapper.fromMap(map['partnersBlock'])
          : null,
      lastUpdated: DateTime.parse(map['lastUpdated']),
    );
  }
}
