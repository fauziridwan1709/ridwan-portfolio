import 'package:flutter/material.dart';

extension on Color {
  // ignore: unused_element
  Color operator [](int transparency) => withAlpha(transparency);
}

// Techanic Business Colors
class TBColors {
  TBColors._();
  //Primary Colors

  ///Primary blue
  static const Color tbPrimaryDark25 = Color(0xFF0D5096);
  static const Color tbPrimary = Color(0xFF1064BC);
  static const Color tbPrimaryLight75 = Color(0xBF1064BC);
  static const Color tbPrimaryLight50 = Color(0x801064BC);
  static const Color tbPrimaryLight25 = Color(0x401064BC);
  static const Color tbPrimaryLight10 = Color(0x1A1064BC);
  static const Color tbPrimaryLight5 = Color(0x0D1064BC);

  ///TB Complimentary Red
  static const Color tbRedDark25 = Color(0xFFCA4444);
  static const Color tbRed = Color(0xFFFC5555);
  static const Color tbRedLight75 = Color(0xBFFC5555);
  static const Color tbRedLight50 = Color(0x80FC5555);
  static const Color tbRedLight25 = Color(0x40FC5555);
  static const Color tbRedLight10 = Color(0x1AFC5555);
  static const Color tbRedLight5 = Color(0x0DFC5555);

  ///TB Complimentary Green
  static const Color tbGreenDark25 = Color(0xFF21A355);
  static const Color tbGreen = Color(0xFF29CC6A);
  static const Color tbGreenLight75 = Color(0xBF29CC6A);
  static const Color tbGreenLight50 = Color(0x8029CC6A);
  static const Color tbGreenLight25 = Color(0x4029CC6A);
  static const Color tbGreenLight10 = Color(0x1A29CC6A);
  static const Color tbGreenLight5 = Color(0x0D29CC6A);

  ///TB Complimentary Yellow
  static const Color tbYellowDark25 = Color(0xFFB29205);
  static const Color tbYellow = Color(0xFFDFB606);
  static const Color tbYellowLight75 = Color(0xBFDFB606);
  static const Color tbYellowLight50 = Color(0x80DFB606);
  static const Color tbYellowLight25 = Color(0x40DFB606);
  static const Color tbYellowLight10 = Color(0x1ADFB606);
  static const Color tbYellowLight5 = Color(0x0DDFB606);

  ///TB Complimentary Orange
  static const Color tbOrangeDark25 = Color(0xFFad6a05);
  static const Color tbOrange = Color(0xFFF99C10);
  static const Color tbOrangeLight75 = Color(0xBFF99C10);
  static const Color tbOrangeLight50 = Color(0x80F99C10);
  static const Color tbOrangeLight25 = Color(0x40F99C10);
  static const Color tbOrangeLight10 = Color(0x1AF99C10);
  static const Color tbOrangeLight5 = Color(0x0DF99C10);

  ///TB Complimentary Charcoal
  static const Color tbCharcoalDark25 = Color(0xFF1A1C1F);
  static const Color tbCharcoal = Color(0xFF202327);
  static const Color tbCharcoalLight75 = Color(0xBF202327);
  static const Color tbCharcoalLight50 = Color(0x80202327);
  static const Color tbCharcoalLight25 = Color(0x40202327);
  static const Color tbCharcoalLight10 = Color(0x1A202327);
  static const Color tbCharcoalLight5 = Color(0x0D202327);

  ///TB Complimentary Black
  static const Color tbBlackDark25 = Color(0xFF000000);
  static const Color tbBlack = Color(0xFF000000);
  static const Color tbBlackLight75 = Color(0xBF000000);
  static const Color tbBlackLight50 = Color(0x80000000);
  static const Color tbBlackLight25 = Color(0x40000000);
  static const Color tbBlackLight10 = Color(0x1A000000);
  static const Color tbBlackLight5 = Color(0x0D000000);

  ///TB Complimentary White
  static const Color tbWhiteDark25 = Color(0xFFFFFFFF);
  static const Color tbWhite = Color(0xFFFFFFFF);
  static const Color tbWhiteLight75 = Color(0xBFFFFFFF);
  static const Color tbWhiteLight50 = Color(0xFF8F8F8F);
  static const Color tbWhiteLight25 = Color(0x40FFFFFF);
  static const Color tbWhiteLight10 = Color(0x1AFFFFFF);
  static const Color tbWhiteLight5 = Color(0x0DFFFFFF);

  ///TB Gradient
  static const List<Color> tbBlueLightGradient = [
    Color(0xFF1297CB),
    Color(0xFF204F8B)
  ];
  static const List<Color> tbBlueDarkGradient = [
    Color(0xFF08325E),
    Color(0xFF04203E),
  ];

  ///TB Background
  static const Color bgPrimary = tbPrimary;
  static const Color bgPrimaryDark = Color(0xFF13243E);
  static const Color bgLight = Color(0xFFF6F9FB);
  static const Color bgDark = Color(0xFF121212);
  static const Color bgBlue = Color(0xFF1E55A8);
  static const List<Color> bgGradient = [
    Color(0xFF13243E),
    Color(0xFF0B121E),
  ];

  //Neutral Colors
  static Color tbTransparent = Colors.transparent;

  /// other
  static const Color tbFormStroke = Color.fromRGBO(234, 234, 234, 1);

  // TB light theme
  static ColorScheme tbLightScheme = const ColorScheme.light(
    primary: tbPrimary,
    primaryContainer: tbPrimaryLight75,
    onPrimaryContainer: tbBlack,
    secondary: tbWhite,
    onSecondary: tbGreen,
    secondaryContainer: tbWhite,
    onSecondaryContainer: tbBlack,
    tertiary: tbYellowDark25,
    onTertiary: tbWhite,
    tertiaryContainer: tbYellow,
    onTertiaryContainer: tbBlack,
    onSurface: tbBlackLight50,
    onBackground: tbCharcoalLight75,
    error: tbRed,
  );

  // Dark theme will be added later

  /// Picker Scheme
  static ThemeData tbPickerTheme = ThemeData().copyWith(
    colorScheme: TBColors.tbLightScheme.copyWith(
      primary: TBColors.tbPrimary,
      onPrimary: TBColors.tbWhite,
      surface: TBColors.tbYellowLight75,
      onSurface: TBColors.tbBlack,
    ),
  );
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with
  /// an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true`
  /// (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
