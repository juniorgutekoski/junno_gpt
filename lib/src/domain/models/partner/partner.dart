// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';

import 'package:junno_app/src/domain/models/partner/address.dart';
import 'package:junno_app/src/domain/models/partner/contact.dart';
import 'package:junno_app/src/domain/models/partner/partner_credit.dart';

class Partner {
  final String? id;
  final String? corporateName;
  final String tradeName;
  final String taxId;
  final String? ieRegistration;
  final List<Contact> contacts;
  final List<Address> address;
  final PartnerCredit? partnerCredit;
  final List<String> partnerSegment;
  final bool isActive;
  final DateTime createdAt;
  final DateTime? lastUpdatedAt;
  Partner({
    this.id,
    this.corporateName,
    required this.tradeName,
    required this.taxId,
    this.ieRegistration,
    required this.contacts,
    required this.address,
    this.partnerCredit,
    required this.partnerSegment,
    required this.isActive,
    required this.createdAt,
    this.lastUpdatedAt,
  });

  @override
  String toString() {
    return 'Partner(id: $id, corporateName: $corporateName, tradeName: $tradeName, taxId: $taxId, ieRegistration: $ieRegistration, contacts: $contacts, address: $address, partnerCredit: $partnerCredit, partnerSegment: $partnerSegment, isActive: $isActive, createdAt: $createdAt, lestUpdatedAt: $lastUpdatedAt)';
  }

  @override
  bool operator ==(covariant Partner other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.corporateName == corporateName &&
        other.tradeName == tradeName &&
        other.taxId == taxId &&
        other.ieRegistration == ieRegistration &&
        listEquals(other.contacts, contacts) &&
        listEquals(other.address, address) &&
        other.partnerCredit == partnerCredit &&
        listEquals(other.partnerSegment, partnerSegment) &&
        other.isActive == isActive &&
        other.createdAt == createdAt &&
        other.lastUpdatedAt == lastUpdatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        corporateName.hashCode ^
        tradeName.hashCode ^
        taxId.hashCode ^
        ieRegistration.hashCode ^
        contacts.hashCode ^
        address.hashCode ^
        partnerCredit.hashCode ^
        partnerSegment.hashCode ^
        isActive.hashCode ^
        createdAt.hashCode ^
        lastUpdatedAt.hashCode;
  }

  Partner copyWith({
    String? id,
    String? corporateName,
    String? tradeName,
    String? taxId,
    String? ieRegistration,
    List<Contact>? contacts,
    List<Address>? address,
    PartnerCredit? partnerCredit,
    List<String>? partnerSegment,
    bool? isActive,
    DateTime? createdAt,
    DateTime? lestUpdatedAt,
  }) {
    return Partner(
      id: id ?? this.id,
      corporateName: corporateName ?? this.corporateName,
      tradeName: tradeName ?? this.tradeName,
      taxId: taxId ?? this.taxId,
      ieRegistration: ieRegistration ?? this.ieRegistration,
      contacts: contacts ?? this.contacts,
      address: address ?? this.address,
      partnerCredit: partnerCredit ?? this.partnerCredit,
      partnerSegment: partnerSegment ?? this.partnerSegment,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      lastUpdatedAt: lestUpdatedAt ?? lastUpdatedAt,
    );
  }
}
