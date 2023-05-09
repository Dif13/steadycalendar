import 'package:flutter/material.dart';
import 'package:steadycalendar/screens/cal_pager/cal_pager.dart';
import 'package:steadycalendar/screens/intro/intro.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Splash extends StatefulWidget {
  static const routeName = '/';

  const Splash({
    Key? key,
  }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
// ?Why we override this? Becouse  routeName = '/';
  bool _redirectCalled = false;

  @override
  void initState() {
    print('0');
    super.initState();

    // recoverSupabaseSession();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    if (_redirectCalled || !mounted) {
      return;
    }

    _redirectCalled = true;
    final session = Supabase.instance.client.auth.currentSession;
    if (session != null) {
      Navigator.of(context).pushNamedAndRemoveUntil(
        CalPager.routeName,
        ModalRoute.withName(Splash.routeName),
      );
    } else {
      Navigator.of(context).pushNamedAndRemoveUntil(
        Intro.routeName,
        ModalRoute.withName(Splash.routeName),
      );
    }
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
