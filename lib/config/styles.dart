import 'package:flutter/material.dart';

class Styles {
  static final Color primatyTextColor = hexToColor('000000');
  static final Color secondaryTextColor = hexToColor('666666');
  static final Color tertialyTextColor = hexToColor('888888');
  static final Color deviderColor = hexToColor('CCCCCC');
  static final Color formBgColor = hexToColor('EEEEEE');

  static final Color primaryHighlightColor = hexToColor('49A9B3');

  static const String primaryFontRegular = 'Muli';

  static const String secondaryFontRegular = 'Quicksand';

  static const FontWeight primaryFontWeightSemiBold = FontWeight.w700;
  static const FontWeight primaryFontWeightLight = FontWeight.w300;
  static const FontWeight primaryFontWeightExtraLight = FontWeight.w100;

  static const double primaryHeaderFontSize = 32.0;
  static const double secondaryHeaderFontSize = 22.0;
  static const double primaryButtonFontSize = 18.0;
  static const double primaryTextFormFieldFontSize = 20.0;
  static const double smallTextFontSize = 18.0;
  static const double miniTextFontSize = 14.0;

  static final TextStyle regularText = TextStyle(
    color: primatyTextColor,
    fontFamily: primaryFontRegular,
    fontSize: primaryButtonFontSize,
  );

  static final TextStyle tooltipText = TextStyle(
    color: secondaryTextColor,
    fontFamily: primaryFontRegular,
    fontSize: miniTextFontSize,
  );

  static final TextStyle navBarText = TextStyle(
    color: primatyTextColor,
    fontFamily: primaryFontRegular,
    fontSize: secondaryHeaderFontSize,
    fontWeight: primaryFontWeightSemiBold,
  );

  static final TextStyle textFormFieldStyle = TextStyle(
    color: secondaryTextColor,
    fontFamily: primaryFontRegular,
    fontSize: secondaryHeaderFontSize,
    fontWeight: primaryFontWeightLight,
  );

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }
}
