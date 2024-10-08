extension StringUtils on String {
  String toUpperCaseFirst() => '${this[0].toUpperCase()}${substring(1)}';
  String toLowerCaseFirst() => '${this[0].toLowerCase()}${substring(1)}';

  /// Converts snake_case (postgres style) to camelCase (dart style)
  String convertSnakeCaseToCamelCase() {
    if (!contains('_')) return this;

    return split('_')
        .reduce((value, element) => value + element.toUpperCaseFirst());
  }
}
