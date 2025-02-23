import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class FilterCustom {
  Map<String, dynamic> toQuery();
}

class EqualsFilter implements FilterCustom {
  String field;
  dynamic value;
  EqualsFilter({
    required this.field,
    required this.value,
  });

  @override
  Map<String, dynamic> toQuery() {
    return {'field': field, 'operator': 'equals', 'value': value};
  }

  @override
  bool operator ==(covariant EqualsFilter other) {
    if (identical(this, other)) return true;

    return other.field == field && other.value == value;
  }

  @override
  int get hashCode => field.hashCode ^ value.hashCode;

  @override
  String toString() => 'EqualsFilter(field: $field, value: $value)';
}

class ContainsFilter implements FilterCustom {
  String field;
  dynamic value;
  ContainsFilter({
    required this.field,
    required this.value,
  });

  @override
  Map<String, dynamic> toQuery() {
    return {'field': field, 'operator': 'contains', 'value': value};
  }

  @override
  bool operator ==(covariant ContainsFilter other) {
    if (identical(this, other)) return true;

    return other.field == field && other.value == value;
  }

  @override
  int get hashCode => field.hashCode ^ value.hashCode;

  @override
  String toString() => 'ContainsFilter(field: $field, value: $value)';
}

class AndFilter implements FilterCustom {
  final List<FilterCustom> filters;

  AndFilter(this.filters);

  @override
  Map<String, dynamic> toQuery() {
    return {
      'operator': 'and',
      'filters': filters.map((f) => f.toQuery()).toList(),
    };
  }

  @override
  bool operator ==(covariant AndFilter other) {
    if (identical(this, other)) return true;

    return listEquals(other.filters, filters);
  }

  @override
  int get hashCode => filters.hashCode;

  @override
  String toString() => 'AndFilter(filters: $filters)';
}

class FilterWithPagination {
  final FilterCustom?
      filter; // O filtro customizado, pode ser nulo para buscar todos
  final int offset; // Número de registros a pular
  final int limit; // Número máximo de registros a retornar

  FilterWithPagination({
    this.filter,
    required this.offset,
    required this.limit,
  });
}
