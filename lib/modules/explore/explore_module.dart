import 'package:flutter_modular/flutter_modular.dart';
import 'package:foods_app/modules/explore/components/screens/explore_screen.dart';

class ExploreModule extends Module {
  @override
  void binds(Injector i) {
    // TODO: implement binds
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const ExploreScreen());
  }
}
