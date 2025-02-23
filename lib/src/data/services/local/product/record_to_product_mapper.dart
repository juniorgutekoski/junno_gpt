import 'package:junno_app/utils/mappers/partner/partner_mapper.dart';
import 'package:sembast/sembast.dart';
import '../../../../domain/models/product/product.dart'; // Supondo que o modelo Product esteja nesse caminho

class RecordToProductMapper {
  // Função para mapear RecordSnapshot para Product
  Product fromMap(RecordSnapshot<int, Map<String, Object?>> record) {
    final data = record.value;

    return Product(
      productId: record.key.toString(), // Supondo que a chave seja o ID
      name: data['name'] as String,
      description: data['description'] as String,
      price: data['price'] as int,
      stockQuantity: data['stockQuantity'] as int,
      imageUrl: data['imageUrl'] as String?,
      category: data['category'] as String,
      supplier: data['supplier'] != null
          ? PartnerMapper.fromMap(data['supplier'] as Map<String, dynamic>)
          : null, // Mapeando o fornecedor, se disponível
      packagingType: data['packagingType'] as String,
      weightInKg: (data['weightInKg'] as num)
          .toDouble(), // Convertendo de num para double
      createdAt: DateTime.fromMillisecondsSinceEpoch(data['createdAt'] as int),
      updatedAt: data['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(data['updatedAt'] as int)
          : null,
      isDeleted: data['isDeleted'] as bool,
    );
  }

  // Função para mapear Product para RecordSnapshot (para salvar no banco)
  Map<String, Object?> toMap(Product product) {
    return {
      'name': product.name,
      'description': product.description,
      'price': product.price,
      'stockQuantity': product.stockQuantity,
      'imageUrl': product.imageUrl,
      'category': product.category,
      'supplier': product.supplier, // Mapeando o fornecedor, se disponível
      'packagingType': product.packagingType,
      'weightInKg': product.weightInKg,
      'createdAt': product.createdAt.toIso8601String(),
      'updatedAt': product.updatedAt?.toIso8601String(),
      'isDeleted': product.isDeleted,
    };
  }
}
