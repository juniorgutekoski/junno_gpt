import 'package:junno_app/src/domain/models/product/product.dart';
import 'package:result_dart/result_dart.dart';

abstract class ProductRepository {
  AsyncResult<List<Product>> getProducts();
  AsyncResult<int> createProduct(Product product);
  AsyncResult<Product> updateProduct(Product product);
  AsyncResult<bool> deleteProduct(int id);
}
