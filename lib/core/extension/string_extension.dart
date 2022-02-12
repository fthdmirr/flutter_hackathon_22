extension AssetsExtension on String {
  String get toPng => 'assets/images/$this.png';
  String get toJpg => 'assets/images/$this.jpg';
  String get toLottie => 'assets/lotties/$this.json';
  String get toSVG => 'assets/svg/$this.svg';
}

extension StringExtension on String {
    String capitalize() => '${this[0].toUpperCase()}${substring(1)}';
}