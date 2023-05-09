import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:steadycalendar/components/sc_text_button.dart';
import 'package:steadycalendar/components/sc_image_button.dart';
import 'package:steadycalendar/config/styles.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class LoginOptions extends StatelessWidget {
  static const String routeName = '/intro/login_options';

  const LoginOptions({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pink-plants@3x.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // semi-transparent overlay
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.5),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SCTextButton(
                const SCImageButton(
                    'assets/icons/google-logo.svg', 'Continue with Google'),
                textColor: Styles.primatyTextColor,
                backgroudColor: Colors.white,
                onTap: () => _signupTapped(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future _signupTapped(BuildContext context) async {
    await Supabase.instance.client.auth.signInWithOAuth(
      Provider.google,
      redirectTo: kIsWeb ? null : env['SUPABASE_AUTH_CALLBACK']!,
    );
  }
}
