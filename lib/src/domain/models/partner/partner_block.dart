// ignore_for_file: public_member_api_docs, sort_constructors_first
class PartnerBlock {
  final bool isBlocked;
  final String blockReason;
  final DateTime blockDate;
  final DateTime? unblockDate;
  PartnerBlock({
    required this.isBlocked,
    required this.blockReason,
    required this.blockDate,
    this.unblockDate,
  });

  @override
  String toString() {
    return 'CustomerBlock(isBlocked: $isBlocked, blockReason: $blockReason, blockDate: $blockDate, unblockDate: $unblockDate)';
  }

  @override
  bool operator ==(covariant PartnerBlock other) {
    if (identical(this, other)) return true;

    return other.isBlocked == isBlocked &&
        other.blockReason == blockReason &&
        other.blockDate == blockDate &&
        other.unblockDate == unblockDate;
  }

  @override
  int get hashCode {
    return isBlocked.hashCode ^
        blockReason.hashCode ^
        blockDate.hashCode ^
        unblockDate.hashCode;
  }

  PartnerBlock copyWith({
    bool? isBlocked,
    String? blockReason,
    DateTime? blockDate,
    DateTime? unblockDate,
  }) {
    return PartnerBlock(
      isBlocked: isBlocked ?? this.isBlocked,
      blockReason: blockReason ?? this.blockReason,
      blockDate: blockDate ?? this.blockDate,
      unblockDate: unblockDate ?? this.unblockDate,
    );
  }
}
