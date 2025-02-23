import 'package:flutter_test/flutter_test.dart';
import 'package:junno_app/utils/mappers/partner/partner_mapper.dart';
import 'package:junno_app/src/data/repositories/partner/partner_repository_local.dart';
import 'package:junno_app/src/data/services/local/partner/partner_service.dart';
import 'package:junno_app/src/domain/models/partner/address.dart';
import 'package:junno_app/src/domain/models/partner/contact.dart';
import 'package:junno_app/src/domain/models/partner/partner.dart';
import 'package:result_dart/result_dart.dart';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sembast/sembast_io.dart';

import 'partner_repository_local_test.mocks.dart';

@GenerateNiceMocks([MockSpec<PartnerService>()])
void main() {
  late MockPartnerService mockPartnerLocalService;
  late PartnerRepositoryLocal partnerRepository;

  setUp(() {
    mockPartnerLocalService = MockPartnerService();
    partnerRepository =
        PartnerRepositoryLocal(partnerLocalService: mockPartnerLocalService);
  });

  group('Create a Partner', () {
    test(
        "createPartner should return Success with partner id when creation is successful",
        () async {
      when(mockPartnerLocalService.createPartner(partnerTest))
          .thenAnswer((_) async => 1);
      final result = await partnerRepository.createPartner(partnerTest);
      expect(result, isA<Success>());
      expect((result as Success), const Success(1));
    });

    test(
        'CreatePartner should return Failure when when there is a DatabaseException',
        () async {
      when(mockPartnerLocalService.createPartner(partnerTest))
          .thenThrow(Exception('Ocorreu um erro inesperado!'));

      final result = await partnerRepository.createPartner(partnerTest);

      expect(result, isA<Failure>());
    });
  });

  group('Update a Partner', () {
    test(
        'UpdatePartner should return Success with partner when update is successful',
        () async {
      when(mockPartnerLocalService.updatePartner(1, any))
          .thenAnswer((_) async => true);

      final resul = await partnerRepository.updatePartner(partnerTest);
      expect(resul, isA<Success>());
      expect((resul as Success), Success(partnerTest));
    });
    test('UpdatePartner should return Failure when update fails', () async {
      when(mockPartnerLocalService.updatePartner(1, partnerTest.toMap()))
          .thenAnswer((_) async => false);

      final result = await partnerRepository.updatePartner(partnerTest);
      expect(result, isA<Failure>());
    });
  });
  group('Delete a Partner', () {
    test('DeletePartner should return Success when delete is successful',
        () async {
      when(mockPartnerLocalService.deletePartner(1))
          .thenAnswer((_) async => true);

      final result = await partnerRepository.deletePartner(1);

      expect(result, isA<Success>());
      expect((result as Success), const Success(true));
    });
    test('DeletePartner should return Failure when delete fails', () async {
      when(mockPartnerLocalService.deletePartner(1))
          .thenAnswer((_) async => false);

      final result = await partnerRepository.deletePartner(1);

      expect(result, isA<Failure>());
    });
    test('DeletePartner should return Failure when delete fails', () async {
      when(mockPartnerLocalService.deletePartner(1))
          .thenThrow((_) async => DatabaseException.closed());

      final result = await partnerRepository.deletePartner(1);

      expect(result, isA<Failure>());
    });
  });
}

Partner partnerTest = Partner(
    id: '1',
    tradeName: 'teste',
    corporateName: 'teste',
    taxId: '123456789',
    contacts: [
      Contact(
          contactType: 'teste',
          contactNumber: '123456789',
          contactEmail: 'teste@teste')
    ],
    address: [
      Address(
          addressType: 'teste',
          street: 'teste',
          number: '123',
          complement: 'teste',
          city: 'teste',
          state: 'teste',
          country: 'testeltda',
          postalCode: '1234567',
          latitude: 123456789,
          longitude: 15555)
    ],
    partnerSegment: ['alv jt'],
    isActive: true,
    createdAt: DateTime.now());
