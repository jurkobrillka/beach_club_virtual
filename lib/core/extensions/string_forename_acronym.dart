extension FornameAcronymExtension on String {
  String get forenameAcronym {
    if (isNotEmpty) {
      return '${this[0].toUpperCase()}.';
    } else {
      return this;
    }
  }
}