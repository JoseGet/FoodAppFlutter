import 'package:flutter_modular/flutter_modular.dart';
import 'package:foods_app/modules/cart/cart_module.dart';
import 'package:foods_app/modules/explore/explore_module.dart';
import 'package:foods_app/modules/home/home_module.dart';
import 'package:foods_app/modules/login/login_module.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.module('/', module: LoginModule());
    r.module('/home_module', module: HomeModule());
    r.module('/explore_module', module: ExploreModule());
    r.module('cart_module', module: CartModule());
  }
}
