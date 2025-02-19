import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = LoginStoreContract with _$LoginStore;

abstract class LoginStoreContract with Store {
  @observable
  String email = "";
  @observable
  String passWord = "";
  @observable
  bool isVisible = false;

  @action
  void updateEmail(String value) {
    email = value;
  }

  @action
  void updatePassword(String value) {
    passWord = value;
  }

  @action
  void updateFielVisibility() => isVisible = !isVisible;
}
