import 'package:flutter_test/flutter_test.dart';
import 'package:junno_app/src/data/repositories/product/product_repository_local.dart';
import 'package:junno_app/src/data/services/local/product/product_service.dart';
import 'package:junno_app/src/domain/models/partner/address.dart';
import 'package:junno_app/src/domain/models/partner/contact.dart';
import 'package:junno_app/src/domain/models/partner/partner.dart';
import 'package:junno_app/src/domain/models/product/product.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:result_dart/result_dart.dart';

import 'product_repository_local_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ProductService>()])
void main() {
  late MockProductService mockProductService;
  late ProductRepositoryLocal productRepositoryLocal;

  setUpAll(() {
    mockProductService = MockProductService();
    productRepositoryLocal =
        ProductRepositoryLocal(productLocalService: mockProductService);
  });

  group('Create a Product', () {
    test(
        "createProduct should return Success with partner id=1 when creation is successful",
        () async {
      when(mockProductService.createProduct(productTest))
          .thenAnswer((_) async => 1);
      var result = await productRepositoryLocal.createProduct(productTest);
      expect(result, isA<Success>());
      expect((result as Success), const Success(1));
    });

    test(
        'CreatePartner should return Failure when when there is a Generics Exception',
        () async {
      when(mockProductService.createProduct(productTest))
          .thenThrow(Exception());

      var result = await productRepositoryLocal.createProduct(productTest);
      result.fold(
        (success) {
          fail(
              'Esperado um Failure, mas recebeu um Success com valor: $success');
        },
        (error) {
          // Verifica o tipo e a mensagem do erro.
          expect(error, isA<Exception>());
          expect(error.toString(), contains('Ocorreu um erro inesperado'));
        },
      );
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
