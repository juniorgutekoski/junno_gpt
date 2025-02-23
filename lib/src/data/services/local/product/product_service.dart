import 'package:junno_app/src/data/datasources/datasource_provider.dart';
import 'package:junno_app/src/domain/models/product/product.dart';

import '../../../../../utils/filter.dart';

abstract class ProductService {
  Future<int> createProduct(Product product);
  Future<bool> deleteProduct(int id);
  Future<List<Product>> getProducts({required FilterCustom filter});
  Future<bool> updateProduct(int id, Map<String, dynamic> productMap);
}
