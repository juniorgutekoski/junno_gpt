import 'dart:convert';

import 'package:junno_app/src/domain/models/partner/partner.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  final String productId;
  final String name;
  final String description;
  final int price;
  final int stockQuantity;
  final String? imageUrl;
  final String category;
  final Partner? supplier; // fonrcedor
  final String packagingType;
  final double weightInKg; //peso em kg
  final DateTime createdAt;
  final DateTime? updatedAt;
  final bool isDeleted;
  Product({
    required this.productId,
    required this.name,
    required this.description,
    required this.price,
    required this.stockQuantity,
    this.imageUrl,
    required this.category,
    this.supplier,
    required this.packagingType,
    required this.weightInKg,
    required this.createdAt,
    this.updatedAt,
    required this.isDeleted,
  });

  @override
  String toString() {
    return 'Product(productId: $productId, name: $name, description: $description, price: $price, stockQuantity: $stockQuantity, imageUrl: $imageUrl, category: $category, supplier: $supplier, packagingType: $packagingType, weightInKg: $weightInKg, createdAt: $createdAt, updatedAt: $updatedAt, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;

    return other.productId == productId &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        other.stockQuantity == stockQuantity &&
        other.imageUrl == imageUrl &&
        other.category == category &&
        other.supplier == supplier &&
        other.packagingType == packagingType &&
        other.weightInKg == weightInKg &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return productId.hashCode ^
        name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        stockQuantity.hashCode ^
        imageUrl.hashCode ^
        category.hashCode ^
        supplier.hashCode ^
        packagingType.hashCode ^
        weightInKg.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        isDeleted.hashCode;
  }

  Product copyWith({
    String? productId,
    String? name,
    String? description,
    int? price,
    int? stockQuantity,
    String? imageUrl,
    String? category,
    Partner? supplier,
    String? packagingType,
    double? weightInKg,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isDeleted,
  }) {
    return Product(
      productId: productId ?? this.productId,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      stockQuantity: stockQuantity ?? this.stockQuantity,
      imageUrl: imageUrl ?? this.imageUrl,
      category: category ?? this.category,
      supplier: supplier ?? this.supplier,
      packagingType: packagingType ?? this.packagingType,
      weightInKg: weightInKg ?? this.weightInKg,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }
}
