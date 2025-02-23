import 'package:junno_app/utils/mappers/partner/partner_mapper.dart';

import '../../../src/domain/models/product/product.dart';

extension ProductMapper on Product {
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'name': name,
      'description': description,
      'price': price,
      'stockQuantity': stockQuantity,
      'imageUrl': imageUrl,
      'category': category,
      'supplier': supplier?.toMap(),
      'packagingType': packagingType,
      'weightInKg': weightInKg,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'isDeleted': isDeleted,
    };
  }

  Product fromMap(Map<String, dynamic> map) {
    return Product(
      productId: map['productId'],
      name: map['name'] as String,
      description: map['description'],
      price: map['price'] as int,
      stockQuantity: map['stockQuantity'] as int,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      category: map['category'] as String,
      supplier: PartnerMapper.fromMap(map['supplier'] as Map<String, dynamic>),
      packagingType: map['packagingType'],
      weightInKg: map['weightInKg'] as double,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: map['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int)
          : null,
      isDeleted: map['isDeleted'] as bool,
    );
  }
}
