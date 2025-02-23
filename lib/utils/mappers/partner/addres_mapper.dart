import 'package:junno_app/src/domain/models/partner/address.dart';

extension AddresMapper on Address {
  Map<String, dynamic> toMap() {
    return {
      'addressType': addressType,
      'street': street,
      'number': number,
      'complement': complement,
      'city': city,
      'state': state,
      'country': country,
      'postalCode': postalCode,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  // Método para converter o Map de volta para a entidade Address
  static Address fromMap(Map<String, dynamic> map) {
    return Address(
      addressType: map['addressType'],
      street: map['street'],
      number: map['number'],
      complement: map['complement'],
      city: map['city'],
      state: map['state'],
      country: map['country'],
      postalCode: map['postalCode'],
      latitude: map['latitude'],
      longitude: map['longitude'],
    );
  }
}
