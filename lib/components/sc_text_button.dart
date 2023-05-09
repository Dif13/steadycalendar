import 'package:flutter/material.dart';
import 'package:steadycalendar/config/styles.dart';

//! sc - it is Steade Calendar

class SCTextButton extends StatelessWidget {
  final Widget child;
  final GestureTapCallback? onTap;
  final Color? textColor;
  final Color? backgroudColor;

//! {} - in functions - it`s optional arg!
  const SCTextButton(
    this.child, {
    Key? key,
    this.textColor,
    this.backgroudColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: (backgroudColor ?? Styles.primaryHighlightColor),
        foregroundColor: (textColor ?? Colors.white),
        elevation: 1,
        textStyle: const TextStyle(
          fontFamily: Styles.primaryFontRegular,
          fontWeight: Styles.primaryFontWeightLight,
          fontSize: Styles.primaryButtonFontSize,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
      ),
      onPressed: onTap,
      child: child,
    );
  }
}
