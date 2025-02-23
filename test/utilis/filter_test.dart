import 'package:flutter_test/flutter_test.dart';
import 'package:junno_app/utils/filter.dart';

void main() {
  group('Filter Test', () {
    test("EqualsFilter generates correct query", () {
      final filter = EqualsFilter(field: 'status', value: 'active');
      expect(
        filter.toQuery(),
        {
          'field': 'status',
          'operator': 'equals',
          'value': 'active',
        },
      );
    });

    test('ContainsFilter generates correct query', () {
      final filter = ContainsFilter(field: 'name', value: 'John');
      expect(
        filter.toQuery(),
        {
          'field': 'name',
          'operator': 'contains',
          'value': 'John',
        },
      );
    });
    test('AndFilter generates correct query', () {
      final filter1 = EqualsFilter(field: 'status', value: 'active');
      final filter2 = ContainsFilter(field: 'name', value: 'John');
      final andFilter = AndFilter([filter1, filter2]);
      final result = andFilter.toQuery();

      expect(result, {
        'operator': 'and',
        'filters': [
          {
            'field': 'status',
            'operator': 'equals',
            'value': 'active',
          },
          {
            'field': 'name',
            'operator': 'contains',
            'value': 'John',
          },
        ],
      });
    });
  });
}
