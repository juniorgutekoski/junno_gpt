// ignore_for_file: public_member_api_docs, sort_constructors_first
class Contact {
  String contactType;
  String? contactNumber;

  String? contactEmail;
  Contact({
    required this.contactType,
    this.contactNumber,
    this.contactEmail,
  });

  @override
  bool operator ==(covariant Contact other) {
    if (identical(this, other)) return true;

    return other.contactType == contactType &&
        other.contactNumber == contactNumber &&
        other.contactEmail == contactEmail;
  }

  @override
  int get hashCode =>
      contactType.hashCode ^ contactNumber.hashCode ^ contactEmail.hashCode;

  Contact copyWith({
    String? contactType,
    String? contactNumber,
    String? contactEmail,
  }) {
    return Contact(
      contactType: contactType ?? this.contactType,
      contactNumber: contactNumber ?? this.contactNumber,
      contactEmail: contactEmail ?? this.contactEmail,
    );
  }

  @override
  String toString() =>
      'Contacts(contactType: $contactType, contactNumber: $contactNumber, contactEmail: $contactEmail)';
}
