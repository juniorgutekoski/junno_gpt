import 'package:junno_app/src/data/datasources/datasource_provider.dart';
import 'package:junno_app/src/data/services/local/product/product_service.dart';
import 'package:junno_app/src/domain/models/product/product.dart';
import 'package:junno_app/utils/filter.dart';
import 'package:junno_app/utils/mappers/product/product_mapper.dart';
import 'package:sembast/sembast_io.dart';

import '../../../datasources/sembast_datasource_provider.dart';
import '../partner/record_to_partner_mapper.dart';

class ProductLocalService implements ProductService {
  final DatasourceProvider<Database> database;
  RecordToPartnerMapper? mapper;

  ProductLocalService({required this.database});
  //store
  final _partnerStore = intMapStoreFactory.store('products');

  @override
  Future<int> createProduct(Product product) async {
    int key = await _partnerStore.add(await database.instance, product.toMap());
    return Future.value(key);
  }

  @override
  Future<bool> deleteProduct(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getProducts({required FilterCustom filter}) {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

  @override
  Future<bool> updateProduct(int id, Map<String, dynamic> productMap) {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }
}
