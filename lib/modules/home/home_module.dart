import 'package:flutter_modular/flutter_modular.dart';
import 'package:foods_app/modules/home/components/screens/home_screen.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    // TODO: implement binds
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const HomeScreen());
  }
}
