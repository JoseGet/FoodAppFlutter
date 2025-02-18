import 'package:flutter_modular/flutter_modular.dart';
import 'package:foods_app/modules/login/components/screens/logIn_screen.dart';
import 'package:foods_app/modules/login/components/screens/singUp_screen.dart';
import 'package:foods_app/modules/login/components/screens/splash_screen.dart';
import 'package:foods_app/modules/login/components/screens/welcome_screen.dart';

class LoginModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const SplashScreen());
    r.child('/welcome_screen', child: (context) => const WelcomeScreen());
    r.child('/loginin_screen', child: (context) => const LoginScreen());
    r.child('/singup_screen', child: (context) => const SingupScreen());
  }
}
