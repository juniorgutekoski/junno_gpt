// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:junno_app/src/domain/models/partner/partner_block.dart';

class PartnerCredit {
  final double creditLimit;
  final double availableCredit;
  final double outstandingBalance;
  final PartnerBlock? partnersBlock;
  final DateTime lastUpdated;
  PartnerCredit({
    required this.creditLimit,
    required this.availableCredit,
    required this.outstandingBalance,
    this.partnersBlock,
    required this.lastUpdated,
  });

  @override
  String toString() {
    return 'CustomerCredit(creditLimit: $creditLimit, availableCredit: $availableCredit, outstandingBalance: $outstandingBalance, customerBlock: $partnersBlock, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(covariant PartnerCredit other) {
    if (identical(this, other)) return true;

    return other.creditLimit == creditLimit &&
        other.availableCredit == availableCredit &&
        other.outstandingBalance == outstandingBalance &&
        other.partnersBlock == partnersBlock &&
        other.lastUpdated == lastUpdated;
  }

  @override
  int get hashCode {
    return creditLimit.hashCode ^
        availableCredit.hashCode ^
        outstandingBalance.hashCode ^
        partnersBlock.hashCode ^
        lastUpdated.hashCode;
  }

  PartnerCredit copyWith({
    double? creditLimit,
    double? availableCredit,
    double? outstandingBalance,
    PartnerBlock? customerBlock,
    DateTime? lastUpdated,
  }) {
    return PartnerCredit(
      creditLimit: creditLimit ?? this.creditLimit,
      availableCredit: availableCredit ?? this.availableCredit,
      outstandingBalance: outstandingBalance ?? this.outstandingBalance,
      partnersBlock: customerBlock ?? partnersBlock,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }
}
