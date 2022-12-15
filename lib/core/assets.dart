abstract class AssetsConstants {
  const AssetsConstants._();

  static Icons get icons => const Icons();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class Icons extends _AssetsHolder {
  const Icons() : super('assets/icons');

  String get ballIcon => '$basePath/VectorballIcon.svg';

  String get cupIcon => '$basePath/iconcupicon.svg';
}
