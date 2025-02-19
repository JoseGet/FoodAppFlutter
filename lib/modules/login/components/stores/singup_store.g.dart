// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'singup_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SingupStore on _SingupStore, Store {
  late final _$userNameAtom =
      Atom(name: '_SingupStore.userName', context: context);

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  late final _$emailAtom = Atom(name: '_SingupStore.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passWordAtom =
      Atom(name: '_SingupStore.passWord', context: context);

  @override
  String get passWord {
    _$passWordAtom.reportRead();
    return super.passWord;
  }

  @override
  set passWord(String value) {
    _$passWordAtom.reportWrite(value, super.passWord, () {
      super.passWord = value;
    });
  }

  late final _$isVisibleAtom =
      Atom(name: '_SingupStore.isVisible', context: context);

  @override
  bool get isVisible {
    _$isVisibleAtom.reportRead();
    return super.isVisible;
  }

  @override
  set isVisible(bool value) {
    _$isVisibleAtom.reportWrite(value, super.isVisible, () {
      super.isVisible = value;
    });
  }

  late final _$_SingupStoreActionController =
      ActionController(name: '_SingupStore', context: context);

  @override
  void changeUserName(String value) {
    final _$actionInfo = _$_SingupStoreActionController.startAction(
        name: '_SingupStore.changeUserName');
    try {
      return super.changeUserName(value);
    } finally {
      _$_SingupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassWord(String value) {
    final _$actionInfo = _$_SingupStoreActionController.startAction(
        name: '_SingupStore.changePassWord');
    try {
      return super.changePassWord(value);
    } finally {
      _$_SingupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateFielVisibility() {
    final _$actionInfo = _$_SingupStoreActionController.startAction(
        name: '_SingupStore.updateFielVisibility');
    try {
      return super.updateFielVisibility();
    } finally {
      _$_SingupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userName: ${userName},
email: ${email},
passWord: ${passWord},
isVisible: ${isVisible}
    ''';
  }
}
