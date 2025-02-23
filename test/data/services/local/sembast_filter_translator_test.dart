import 'package:flutter_test/flutter_test.dart';
import 'package:junno_app/src/data/services/local/sembast_filter_translator.dart';
import 'package:junno_app/utils/filter.dart';
import 'package:sembast/sembast_io.dart';

void main() {
  group('SembastFilterTranslator', () {
    test('Translates EqualsFilter to Sembast filter', () {
      final filter = EqualsFilter(field: 'name', value: 'John');

      final translate = SembastFilterTranslator.translate(filter);

      final expectedFilter = Filter.equals('name', 'John');

      expect(translate, isA<Filter>());
      expect(translate.toString(), equals(expectedFilter.toString()));
    });

    test('Trnslates ContainsFilter to Sembast filter', () {
      final filter = ContainsFilter(field: 'name', value: 'John');

      final translate = SembastFilterTranslator.translate(filter);
      final expectedFilter = Filter.matches('name', 'John');
      expect(translate, isA<Filter>());
      expect(translate.toString(), equals(expectedFilter.toString()));
    });
  });
}
