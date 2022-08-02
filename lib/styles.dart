// ignore_for_file: avoid_classes_with_only_static_members

// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Times {
  static const Duration fastest = Duration(milliseconds: 150);
  static const fast = Duration(milliseconds: 250);
  static const medium = Duration(milliseconds: 350);
  static const slow = Duration(milliseconds: 700);
  static const slower = Duration(milliseconds: 1000);
}

class Sizes {
  static double hitScale = 1;
  static double get hit => 40 * hitScale;
}

class IconSizes {
  static const double scale = 1;
  static const double med = 24;
}

class Insets {
  static double scale = 1;
  static double offsetScale = 1;
  // Regular paddings
  static double get xs => 4 * scale;
  static double get sm => 8 * scale;
  static double get med => 12 * scale;
  static double get lg => 16 * scale;
  static double get xl => 32 * scale;
  // Offset, used for the edge of the window, or
  // to separate large sections in the app
  static double get offset => 40 * offsetScale;
}

class Corners {
  static const double sm = 3;
  static const BorderRadius smBorder = BorderRadius.all(smRadius);
  static const Radius smRadius = Radius.circular(sm);

  static const double med = 5;
  static const BorderRadius medBorder = BorderRadius.all(medRadius);
  static const Radius medRadius = Radius.circular(med);

  static const double lg = 8;
  static const BorderRadius lgBorder = BorderRadius.all(lgRadius);
  static const Radius lgRadius = Radius.circular(lg);
}

class Strokes {
  static const double thin = 1;
  static const double thick = 4;
}

class Shadows {
  static List<BoxShadow> get universal => [
        BoxShadow(
          color: const Color(0xff333333).withOpacity(.15),
          blurRadius: 10,
        ),
      ];
  static List<BoxShadow> get small => [
        BoxShadow(
          color: const Color(0xff333333).withOpacity(.15),
          blurRadius: 3,
          offset: const Offset(0, 1),
        ),
      ];
}

class TextStyles {
  static const TextStyle textStyle = TextStyle(
    fontFamily: 'Robot',
    fontFamilyFallback: ['NotoSansJP'],
    height: 1,
  );

  static TextStyle regular({double fontSize = 10}) =>
      textStyle.copyWith(fontWeight: FontWeight.w400, fontSize: fontSize);

  static TextStyle medium({double fontSize = 10}) =>
      textStyle.copyWith(fontWeight: FontWeight.w500, fontSize: fontSize);

  static TextStyle bold({double fontSize = 10}) =>
      textStyle.copyWith(fontWeight: FontWeight.w700, fontSize: fontSize);
}
