import 'package:flutter_modular/flutter_modular.dart';
import 'package:foods_app/modules/cart/componene/screens/cart_screen.dart';

class CartModule extends Module {
  @override
  void binds(Injector i) {
    // TODO: implement binds
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => CartScreen());
  }
}
