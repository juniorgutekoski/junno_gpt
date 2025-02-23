import 'package:junno_app/src/domain/models/partner/partner.dart';
import 'package:result_dart/result_dart.dart';

import '../../../../utils/filter.dart';

abstract class PartnerRepository {
  AsyncResult<List<Partner>> getPartners({required FilterCustom filter});
  AsyncResult<int> createPartner(Partner partner);
  AsyncResult<Partner> updatePartner(Partner partner);
  AsyncResult<bool> deletePartner(int id);
}
