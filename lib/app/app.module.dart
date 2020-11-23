import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_booky/app/app.routings.dart';

import 'app.widget.dart';
import 'layout/theme/theme.controller.dart';

class AppModule extends MainModule {
  // Provide a list of dependencies to inject into your project
  @override
  List<Bind> get binds => [Bind((i) => ThemeController())];

  // Provide all the routes for your module
  @override
  List<ModularRouter> get routers => AppRoutings.routers;

  // Provide the root widget associated with your module
  // In this case, it's the widget you created in the first step
  @override
  Widget get bootstrap => AppWidget();
}
