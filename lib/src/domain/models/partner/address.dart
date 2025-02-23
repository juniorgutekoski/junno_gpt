// ignore_for_file: public_member_api_docs, sort_constructors_first
class Address {
  final String addressType;
  final String street;
  final String number;
  final String? complement;
  final String city;
  final String state;
  final String country;
  final String postalCode;
  final double latitude;
  final double longitude;
  Address({
    required this.addressType,
    required this.street,
    required this.number,
    this.complement,
    required this.city,
    required this.state,
    required this.country,
    required this.postalCode,
    required this.latitude,
    required this.longitude,
  });

  @override
  String toString() {
    return 'Address(addressType: $addressType, street: $street, number: $number, complement: $complement, city: $city, state: $state, country: $country, postalCode: $postalCode, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(covariant Address other) {
    if (identical(this, other)) return true;

    return other.addressType == addressType &&
        other.street == street &&
        other.number == number &&
        other.complement == complement &&
        other.city == city &&
        other.state == state &&
        other.country == country &&
        other.postalCode == postalCode &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode {
    return addressType.hashCode ^
        street.hashCode ^
        number.hashCode ^
        complement.hashCode ^
        city.hashCode ^
        state.hashCode ^
        country.hashCode ^
        postalCode.hashCode ^
        latitude.hashCode ^
        longitude.hashCode;
  }

  Address copyWith({
    String? addressType,
    String? street,
    String? number,
    String? complement,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    double? latitude,
    double? longitude,
  }) {
    return Address(
      addressType: addressType ?? this.addressType,
      street: street ?? this.street,
      number: number ?? this.number,
      complement: complement ?? this.complement,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      postalCode: postalCode ?? this.postalCode,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}
