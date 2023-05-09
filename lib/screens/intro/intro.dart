import 'package:flutter/material.dart';
import 'package:steadycalendar/components/sc_text_button.dart';
import 'package:steadycalendar/screens/login_option/login_option.dart';

class Intro extends StatelessWidget {
  static const String routeName = '/intro';

  const Intro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            5,
            (i) => Image.asset(
              'assets/images/iphone-valprop-$i@3x.png',
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          width: MediaQuery.of(context).size.width,
          height: 60.0,
          bottom: 50.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SCTextButton(
              const Text('Get Started'),
              onTap: () => Navigator.pushNamed(context, LoginOptions.routeName),
            ),
          ),
        ),
      ],
    );
  }
}
