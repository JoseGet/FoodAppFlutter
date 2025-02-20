import 'package:mobx/mobx.dart';

part 'sign_in_store.g.dart';

class SignInStore = _SignInStore with _$SignInStore;

abstract class _SignInStore with Store {
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
