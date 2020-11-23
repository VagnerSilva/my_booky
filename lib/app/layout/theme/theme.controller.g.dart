// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeController on ThemeControllerBase, Store {
  final _$isDarkThemeAtom = Atom(name: 'ThemeControllerBase.isDarkTheme');

  @override
  bool get isDarkTheme {
    _$isDarkThemeAtom.reportRead();
    return super.isDarkTheme;
  }

  @override
  set isDarkTheme(bool value) {
    _$isDarkThemeAtom.reportWrite(value, super.isDarkTheme, () {
      super.isDarkTheme = value;
    });
  }

  final _$ThemeControllerBaseActionController =
      ActionController(name: 'ThemeControllerBase');

  @override
  void switchTheme() {
    final _$actionInfo = _$ThemeControllerBaseActionController.startAction(
        name: 'ThemeControllerBase.switchTheme');
    try {
      return super.switchTheme();
    } finally {
      _$ThemeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDarkTheme: ${isDarkTheme}
    ''';
  }
}
