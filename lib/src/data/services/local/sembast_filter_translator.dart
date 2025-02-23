import 'package:sembast/sembast.dart';

import '../../../../utils/filter.dart';

class SembastFilterTranslator {
  static Filter? translate(FilterCustom filter) {
    if (filter is EqualsFilter) {
      return Filter.equals(filter.field, filter.value);
    } else if (filter is ContainsFilter) {
      return Filter.matches(filter.field, filter.value);
    } else if (filter is AndFilter) {
      return Filter.and(
          filter.filters.map(translate).whereType<Filter>().toList());
    } else {
      throw UnsupportedError('Unsupported filter type: ${filter.runtimeType}');
    }
  }
}
