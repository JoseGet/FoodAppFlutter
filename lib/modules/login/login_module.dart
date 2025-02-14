import 'package:flutter_modular/flutter_modular.dart';
import 'package:foods_app/modules/login/components/splash_screen.dart';
import 'package:foods_app/modules/login/components/welcome_screen.dart';

class LoginModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const SplashScreen());
    r.child('/welcome_screen', child: (context) => const WelcomeScreen());
  }
}
