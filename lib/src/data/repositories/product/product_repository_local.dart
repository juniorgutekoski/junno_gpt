import 'dart:io';

import 'package:junno_app/src/data/datasources/datasource_provider.dart';
import 'package:junno_app/src/data/repositories/product/product_repository.dart';
import 'package:junno_app/src/data/services/local/partner/record_to_partner_mapper.dart';
import 'package:junno_app/src/data/services/local/product/product_service.dart';
import 'package:junno_app/src/domain/models/product/product.dart';
import 'package:result_dart/result_dart.dart';
import 'package:sembast/sembast_io.dart';

class ProductRepositoryLocal implements ProductRepository {
  final ProductService productLocalService;

  ProductRepositoryLocal({required this.productLocalService});
  @override
  AsyncResult<int> createProduct(Product product) async {
    try {
      return Success(await productLocalService.createProduct(product));
    }
    //FALTA IMPLEMENTAR LOGS DE ERROS
    on DatabaseException catch (e) {
      return Failure(Exception('Ocorreu um erro ao criar produto'));
    } on IOException catch (e) {
      return Failure(Exception('Erro de IO ao criar produto'));
    } catch (e) {
      return Failure(Exception('Ocorreu um erro inesperado'));
    }
  }

  @override
  AsyncResult<bool> deleteProduct(int id) {
    // TODO: implement deleteProduct
    throw UnimplementedError();
  }

  @override
  AsyncResult<List<Product>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

  @override
  AsyncResult<Product> updateProduct(Product product) {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }
}
