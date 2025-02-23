// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:junno_app/src/data/datasources/sembast_datasource_provider.dart';
import 'package:junno_app/src/data/services/local/partner/record_to_partner_mapper.dart';
import 'package:junno_app/utils/mappers/partner/partner_mapper.dart';
import 'package:junno_app/src/data/services/local/partner/partner_service.dart';
import 'package:junno_app/src/domain/models/partner/partner.dart';
import 'package:junno_app/utils/filter.dart';
import 'package:sembast/sembast.dart';

import '../sembast_filter_translator.dart';

class PartnerLocalService implements PartnerService {
  PartnerLocalService(
    this._mapper, {
    required this.database,
  });
  final SembastDatasourceProvider database;
  final RecordToPartnerMapper _mapper;

  //Stores
  final _partnerStore = intMapStoreFactory.store('partners');
  @override
  Future<int> createPartner(Partner partner) async {
    int key = await _partnerStore.add(await database.instance, partner.toMap());
    return key;
  }

  @override
  Future<bool> deletePartner(int id) async {
    var record = await _partnerStore.record(id).delete(await database.instance);
    return record == 0 ? false : true;
  }

  @override
  Future<bool> updatePartner(int id, Map<String, dynamic> partnerMap) async {
    var record = await _partnerStore
        .record(id)
        .update(await database.instance, partnerMap);

    if (record == null) {
      return false;
    } else if (record == 0) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Future<List<Partner>> getPartners({required FilterCustom filter}) async {
    final sembastFilter = SembastFilterTranslator.translate(filter);

    final finder = Finder(filter: sembastFilter);
    var records =
        await _partnerStore.find(await database.instance, finder: finder);

    return records.map((record) => _mapper.fromMap(record)).toList();
  }
}
