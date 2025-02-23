import 'package:junno_app/src/domain/models/partner/contact.dart';

extension ContactMapper on Contact {
  Map<String, dynamic> toMap() {
    return {
      'contactType': contactType,
      'contactNumber': contactNumber,
      'contactEmail': contactEmail,
    };
  }

  // Método para converter o Map de volta para a entidade Contact
  static Contact fromMap(Map<String, dynamic> map) {
    return Contact(
      contactType: map['contactType'],
      contactNumber: map['contactNumber'],
      contactEmail: map['contactEmail'],
    );
  }
}
