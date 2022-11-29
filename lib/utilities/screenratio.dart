class ScreenRatio {
  static double heightRatio = 0.0;
  static double widthRatio = 0.0;
  static double screenheight = 0.0;
  static double screenwidth = 0.0;

  static setScreenRatio(
      {required double currentScreenHeight,
      required double currentScreenWidth}) {
    screenheight = currentScreenHeight;
    screenwidth = currentScreenWidth;
    heightRatio = currentScreenHeight / 667.0;
    widthRatio = currentScreenWidth / 375.0;
  }
}
