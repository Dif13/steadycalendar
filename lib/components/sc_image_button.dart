import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//! sc - it is Steade Calendar

class SCImageButton extends StatelessWidget {
  final String assetName;
  final String text;

//! {} - in functions - it`s optional arg!
  const SCImageButton(
    this.assetName,
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
          child: SvgPicture.asset(
            assetName,
            height: 40,
          ),
        ),
        Text(text),
      ],
    );
  }
}
