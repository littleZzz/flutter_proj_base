///list 扩展
///
extension ListNullExtension on List<dynamic>? {
  bool get isEmptyHoo {
    return (this ?? []).isEmpty;
  }

  bool get isNotEmptyHoo {
    return (this ?? []).isNotEmpty;
  }

  int get lengthHoo {
    return (this ?? []).length;
  }
}
