import 'package:junno_app/utils/mappers/partner/addres_mapper.dart';
import 'package:junno_app/utils/mappers/partner/contact_mapper.dart';
import 'package:junno_app/utils/mappers/partner/partner_credit_mapper.dart';
import 'package:junno_app/src/domain/models/partner/partner.dart';

extension PartnerMapper on Partner {
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'corporateName': corporateName,
      'tradeName': tradeName,
      'taxId': taxId,
      'ieRegistration': ieRegistration,
      'contacts': contacts.map((contact) => contact.toMap()).toList(),
      'address': address.map((addr) => addr.toMap()).toList(),
      'partnerCredit': partnerCredit?.toMap(),
      'partnerSegment': partnerSegment,
      'isActive': isActive,
      'createdAt': createdAt.toIso8601String(),
      'lastUpdatedAt': lastUpdatedAt?.toIso8601String(),
    };
  }

  static Partner fromMap(Map<String, dynamic> map) {
    return Partner(
      id: map['id'],
      corporateName: map['corporateName'],
      tradeName: map['tradeName'],
      taxId: map['taxId'],
      ieRegistration: map['ieRegistration'],
      contacts: (map['contacts'] as List)
          .map((item) => ContactMapper.fromMap(item))
          .toList(),
      address: (map['address'] as List)
          .map((item) => AddresMapper.fromMap(item))
          .toList(),
      partnerCredit: map['partnerCredit'] != null
          ? PartnerCreditMapper.fromMap(map['partnerCredit'])
          : null,
      partnerSegment: List<String>.from(map['partnerSegment']),
      isActive: map['isActive'],
      createdAt: DateTime.parse(map['createdAt']),
      lastUpdatedAt: map['lastUpdatedAt'] != null
          ? DateTime.parse(map['lastUpdatedAt'])
          : null,
    );
  }
}
