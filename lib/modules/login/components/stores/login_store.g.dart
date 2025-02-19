// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on LoginStoreContract, Store {
  late final _$emailAtom =
      Atom(name: 'LoginStoreContract.email', context: context);

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
      Atom(name: 'LoginStoreContract.passWord', context: context);

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
      Atom(name: 'LoginStoreContract.isVisible', context: context);

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

  late final _$LoginStoreContractActionController =
      ActionController(name: 'LoginStoreContract', context: context);

  @override
  void updateEmail(String value) {
    final _$actionInfo = _$LoginStoreContractActionController.startAction(
        name: 'LoginStoreContract.updateEmail');
    try {
      return super.updateEmail(value);
    } finally {
      _$LoginStoreContractActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updatePassword(String value) {
    final _$actionInfo = _$LoginStoreContractActionController.startAction(
        name: 'LoginStoreContract.updatePassword');
    try {
      return super.updatePassword(value);
    } finally {
      _$LoginStoreContractActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateFielVisibility() {
    final _$actionInfo = _$LoginStoreContractActionController.startAction(
        name: 'LoginStoreContract.updateFielVisibility');
    try {
      return super.updateFielVisibility();
    } finally {
      _$LoginStoreContractActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
passWord: ${passWord},
isVisible: ${isVisible}
    ''';
  }
}
