enum Flavor {
  simpsonsviewer,
  wireviewer,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.simpsonsviewer:
        return 'SimpsonsViewer';
      case Flavor.wireviewer:
        return 'WireViewer';
      default:
        return 'title';
    }
  }

}
