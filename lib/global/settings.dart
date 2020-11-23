library config.globals;

import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:my_booky/app/layout/theme/theme.controller.dart';

const String SETTINGS = "settings";
const String SETTINGS_KEY_THEME = "theme";

ThemeController themeController = Modular.get<ThemeController>();

Box themeBox;
