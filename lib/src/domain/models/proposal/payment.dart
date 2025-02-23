class Payment {
  final String paymentId;
  final String paymentNumber;
  final String paymentType; //entrada ou parcelada | a vista
  final String description;
  final String paymentMethod;
  final int amount;
  final DateTime dueDate;
  final DateTime? paymentDate;
  final String status;
  final DateTime createdAt;
  DateTime? updatedAt;
  Payment({
    required this.paymentId,
    required this.paymentNumber,
    required this.paymentType,
    required this.description,
    required this.paymentMethod,
    required this.amount,
    required this.dueDate,
    this.paymentDate,
    required this.status,
    required this.createdAt,
    this.updatedAt,
  });

  @override
  String toString() {
    return 'Payment(paymentId: $paymentId, paymentNumber: $paymentNumber, paymentType: $paymentType, description: $description, paymentMethod: $paymentMethod, amount: $amount, dueDate: $dueDate, paymentDate: $paymentDate, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(covariant Payment other) {
    if (identical(this, other)) return true;

    return other.paymentId == paymentId &&
        other.paymentNumber == paymentNumber &&
        other.paymentType == paymentType &&
        other.description == description &&
        other.paymentMethod == paymentMethod &&
        other.amount == amount &&
        other.dueDate == dueDate &&
        other.paymentDate == paymentDate &&
        other.status == status &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return paymentId.hashCode ^
        paymentNumber.hashCode ^
        paymentType.hashCode ^
        description.hashCode ^
        paymentMethod.hashCode ^
        amount.hashCode ^
        dueDate.hashCode ^
        paymentDate.hashCode ^
        status.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  Payment copyWith({
    String? paymentId,
    String? paymentNumber,
    String? paymentType,
    String? description,
    String? paymentMethod,
    int? amount,
    DateTime? dueDate,
    DateTime? paymentDate,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Payment(
      paymentId: paymentId ?? this.paymentId,
      paymentNumber: paymentNumber ?? this.paymentNumber,
      paymentType: paymentType ?? this.paymentType,
      description: description ?? this.description,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      amount: amount ?? this.amount,
      dueDate: dueDate ?? this.dueDate,
      paymentDate: paymentDate ?? this.paymentDate,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
