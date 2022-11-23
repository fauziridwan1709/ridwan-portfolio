import 'package:flutter/cupertino.dart';

enum TFontFamily { poppins, montserrat, satoshi }

abstract class TFontWeight {
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiBold = FontWeight.w600;
  static const bold = FontWeight.w700;
}

class TFonts {
  static String apply(TFontFamily fontFamily) {
    return fontFamily.string;
  }
}

extension TFontFamilyExtension on TFontFamily {
  String get string {
    switch (this) {
      case TFontFamily.poppins:
        return 'Poppins';
      case TFontFamily.satoshi:
        return 'Satoshi';
      case TFontFamily.montserrat:
        return 'none';
    }
  }
}

extension TFontFamilyString on String {
  TFontFamily get font {
    switch (toLowerCase()) {
      case 'poppins':
        return TFontFamily.poppins;
      case 'montserrat':
        return TFontFamily.montserrat;
      case 'satoshi':
        return TFontFamily.satoshi;
      default:
        return TFontFamily.poppins;
    }
  }
}
