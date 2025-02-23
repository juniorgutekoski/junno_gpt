import 'package:junno_app/src/domain/models/partner/partner_block.dart';

extension PartnerBlockMapper on PartnerBlock {
  Map<String, dynamic> toMap() {
    return {
      'isBlocked': isBlocked,
      'blockReason': blockReason,
      'blockDate': blockDate.toIso8601String(),
      'unblockDate': unblockDate?.toIso8601String(),
    };
  }

  // Método para converter o Map de volta para a entidade PartnerBlock
  static PartnerBlock fromMap(Map<String, dynamic> map) {
    return PartnerBlock(
      isBlocked: map['isBlocked'],
      blockReason: map['blockReason'],
      blockDate: DateTime.parse(map['blockDate']),
      unblockDate: map['unblockDate'] != null
          ? DateTime.parse(map['unblockDate'])
          : null,
    );
  }
}
