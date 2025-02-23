import 'package:flutter_test/flutter_test.dart';
import 'package:junno_app/src/data/datasources/datasource_provider.dart';
import 'package:junno_app/src/data/services/local/product/product_local_service.dart';
import 'package:junno_app/src/data/services/local/product/product_service.dart';
import 'package:junno_app/src/domain/models/partner/address.dart';
import 'package:junno_app/src/domain/models/partner/contact.dart';
import 'package:junno_app/src/domain/models/partner/partner.dart';
import 'package:junno_app/src/domain/models/product/product.dart';
import 'package:junno_app/utils/mappers/product/product_mapper.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sembast/sembast_memory.dart';

import 'record_to_product_mapper_test.mocks.dart';

@GenerateNiceMocks([MockSpec<DatasourceProvider<Database>>()])
void main() {
  // Banco de dados em memória
  late Database database;
  late ProductLocalService productLocalService;

  setUpAll(() async {
    // Inicializa o banco de dados em memória antes de cada teste
    database = await newDatabaseFactoryMemory().openDatabase('test.db');
    productLocalService = ProductLocalService(null, database: database);
  });

  tearDownAll(() async {
    // Fecha o banco de dados após cada teste
    await database.close();
  });

  group('ProductLocalService', () {
    test('Must save a product from Sembast', () async {
      var key = await productLocalService.createProduct(productTest);
      expect(key, 1);
      // Recupera o produto do banco
    });
  });
}

Product productTest = Product(
    productId: '1',
    name: 'Produto Exemplo',
    description: 'Descrição do produto',
    price: 100,
    stockQuantity: 50,
    imageUrl: ' http://exemplo.com/imagem.jpg',
    category: ' Categoria 1',
    supplier: Partner(
        id: '1',
        corporateName: 'suppiler',
        tradeName: ' supiiler teste',
        taxId: '123456789',
        ieRegistration: null,
        contacts: [
          Contact(
              contactType: 'teste',
              contactNumber: '123456789',
              contactEmail: 'teste@teste')
        ],
        address: [
          Address(
              addressType: 'teste',
              street: 'teste rua',
              number: '123',
              complement: 'teste compl',
              city: 'teste  cidade',
              state: 'teste estado',
              country: 'brazil',
              postalCode: '78360000',
              latitude: 123456789.0,
              longitude: 15555.0)
        ],
        partnerCredit: null,
        partnerSegment: ['suppiler'],
        isActive: true,
        createdAt: DateTime.now(),
        lastUpdatedAt: null),
    packagingType: 'Embalagem tipo A',
    weightInKg: 0.5,
    createdAt: DateTime.now(),
    updatedAt: null,
    isDeleted: false);
