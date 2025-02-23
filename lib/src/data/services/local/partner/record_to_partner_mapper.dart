import 'package:sembast/sembast.dart';

import '../../../../domain/models/partner/address.dart';
import '../../../../domain/models/partner/contact.dart';
import '../../../../domain/models/partner/partner.dart';

class RecordToPartnerMapper {
  // Função para mapear RecordSnapshot para Partner
  Partner fromMap(RecordSnapshot<int, Map<String, Object?>> record) {
    // Supondo que a estrutura do mapa seja similar ao modelo Partner
    final data = record.value;

    return Partner(
      id: record.key.toString(), // Supondo que a chave seja o ID
      tradeName: data['tradeName'] as String,
      corporateName: data['corporateName'] as String,
      taxId: data['taxId'] as String,
      contacts: (data['contacts'] as List)
          .map((contactData) => Contact(
                contactType: contactData['contactType'] as String,
                contactNumber: contactData['contactNumber'] as String,
                contactEmail: contactData['contactEmail'] as String,
              ))
          .toList(),
      address: (data['address'] as List)
          .map((addressData) => Address(
                addressType: addressData['addressType'] as String,
                street: addressData['street'] as String,
                number: addressData['number'] as String,
                complement: addressData['complement'] as String,
                city: addressData['city'] as String,
                state: addressData['state'] as String,
                country: addressData['country'] as String,
                postalCode: addressData['postalCode'] as String,
                latitude: addressData['latitude'] as double,
                longitude: addressData['longitude'] as double,
              ))
          .toList(),
      partnerSegment: List<String>.from(data['partnerSegment'] as List),
      isActive: data['isActive'] as bool,
      createdAt: DateTime.parse(data['createdAt'] as String),
    );
  }
}
