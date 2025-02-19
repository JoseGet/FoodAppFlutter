import 'package:mobx/mobx.dart';

part 'singup_store.g.dart';

class SingupStore = _SingupStore with _$SingupStore;

abstract class _SingupStore with Store {
  @observable
  String userName = '';

  @action
  void changeUserName(String value) {
    userName = value;
  }

  @observable
  String email = '';
  void changeEmail(String value) {
    email = value;
  }

  @observable
  String passWord = '';

  @action
  void changePassWord(String value) {
    passWord = value;
  }

  @observable
  bool isVisible = false;

  @action
  void updateFielVisibility() => isVisible = !isVisible;
}
