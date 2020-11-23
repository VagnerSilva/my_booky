import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:my_booky/global/settings.dart';

part 'theme.controller.g.dart';

class ThemeController = ThemeControllerBase with _$ThemeController;

abstract class ThemeControllerBase with Store {
  static const Brightness DARK_THEME = Brightness.dark;
  static const Brightness LIGHT_THEME = Brightness.light;

  @observable
  bool isDarkTheme = true;

  ThemeControllerBase() {
    if (themeBox.containsKey(SETTINGS_KEY_THEME)) {
      isDarkTheme = themeBox.get(SETTINGS_KEY_THEME);
    } else {
      themeBox.put(SETTINGS_KEY_THEME, true);
    }
  }

  Brightness get getTheme {
    return isDarkTheme ? DARK_THEME : LIGHT_THEME;
  }

  @action
  void switchTheme() {
    isDarkTheme = !isDarkTheme;
    themeBox.put(SETTINGS_KEY_THEME, isDarkTheme);
  }
}
