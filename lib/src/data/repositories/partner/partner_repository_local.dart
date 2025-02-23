import 'dart:io';

import 'package:junno_app/utils/mappers/partner/partner_mapper.dart';
import 'package:junno_app/src/data/repositories/partner/partner_repository.dart';
import 'package:junno_app/src/domain/models/partner/partner.dart';
import 'package:result_dart/result_dart.dart';
import 'package:sembast/sembast_io.dart';

import '../../../../utils/filter.dart';
import '../../services/local/partner/partner_service.dart';

class PartnerRepositoryLocal implements PartnerRepository {
  final PartnerService partnerLocalService;
  PartnerRepositoryLocal({required this.partnerLocalService});

  @override
  AsyncResult<int> createPartner(Partner partner) async {
    try {
      return Success(await partnerLocalService.createPartner(partner));
    }
    //FALTA IMPLEMENTAR LOGS DE ERROS
    on DatabaseException catch (e) {
      return Failure(Exception('Ocorreu um erro ao criar o parceiro: $e'));
    } on IOException catch (e) {
      return Failure(Exception('Erro de IO ao criar parceiro: $e'));
    } catch (e) {
      return Failure(Exception('Ocorreu um erro inesperado: $e'));
    }
  }

  @override
  AsyncResult<bool> deletePartner(int id) async {
    try {
      var isDeleted = await partnerLocalService.deletePartner(id);
      if (isDeleted == true) {
        return const Success(true);
      } else {
        return Failure(Exception('Ocorreu um erro ao deletar o parceiro'));
      }
    } catch (e) {
      return Failure(Exception('Ocorreu um erro inesperado'));
    }
  }

  @override
  AsyncResult<Partner> updatePartner(Partner partner) async {
    try {
      var record = await partnerLocalService.updatePartner(
          int.parse(partner.id!), partner.toMap());
      if (record == true) {
        return Success(partner);
      } else {
        return Failure(Exception('Ocorreu um erro ao atualizar o parceiro'));
      }
    } catch (e) {
      return Failure(Exception('Ocorreu um erro inesperado: $e'));
    }
  }

  @override
  AsyncResult<List<Partner>> getPartners({required FilterCustom filter}) async {
    try {
      var record = await partnerLocalService.getPartners(filter: filter);
      return Success(record);
    } catch (e) {
      return Failure(Exception('Ocorreu um erro inesperado: $e'));
    }
  }
}
