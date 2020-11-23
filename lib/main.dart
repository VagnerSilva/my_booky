import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/app.module.dart';
import 'global/settings.dart';

Future<void> main() async {
  await Hive.initFlutter();

  themeBox = await Hive.openBox(SETTINGS);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(module: AppModule()));
}
