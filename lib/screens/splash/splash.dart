import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  static const routeName = '/';

  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
// ?Why we override this? Becouse  routeName = '/';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
