import '../../../../../utils/filter.dart';
import '../../../../domain/models/partner/partner.dart';

abstract class PartnerService {
  Future<int> createPartner(Partner partner);
  Future<bool> deletePartner(int id);
  Future<List<Partner>> getPartners({required FilterCustom filter});
  Future<bool> updatePartner(int id, Map<String, dynamic> partnerMap);
}
